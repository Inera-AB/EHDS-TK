"""Generate FML-ready FSH logical models for RIV-TA responses from XSD + TKB + previous models."""
import sys, os, re, json
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from rivxsd import parse as xsd_parse, walk
from tkb import parse_docx
from oldfsh import parse as old_parse

DATATYPES = {'IIType', 'CVType', 'PersonIdType', 'PQType', 'PQIntervalType', 'TimePeriodType',
             'DatePeriodType', 'PartialDateType', 'PartialTimeStampType'}
WRAP = {'TimeStampType': 'SEEHDSRivTimeStamp', 'DateType': 'SEEHDSRivDate'}
BASEWRAP = {'boolean': 'SEEHDSRivBoolean', 'int': 'SEEHDSRivInteger', 'integer': 'SEEHDSRivInteger',
            'long': 'SEEHDSRivInteger', 'short': 'SEEHDSRivInteger', 'positiveInteger': 'SEEHDSRivInteger',
            'nonNegativeInteger': 'SEEHDSRivInteger', 'double': 'SEEHDSRivDecimal', 'decimal': 'SEEHDSRivDecimal',
            'float': 'SEEHDSRivDecimal', 'base64Binary': 'SEEHDSRivBase64Binary', 'anyURI': 'SEEHDSRivAnyURI',
            'dateTime': 'SEEHDSRivDateTime'}

def domain_code(ns):
    parts = ns.replace('urn:riv:', '').split(':')
    parts = [p for p in parts if p != 'clinicalprocess']
    out = ''
    for p in parts:
        p = p.replace('.', '')  # namnrymdsversion 1.2 → 12 (FHIR-id får inte innehålla _)
        out += p[:1].upper() + p[1:]
    return out

def dt_name(tname, ns): return f'SEEHDSRiv{tname}{domain_code(ns)}'

def is_datatype(n):
    return n.tname in DATATYPES and n.children and all(not c.children and not c.recursive_to for c in n.children)

def leaf_type(n):
    if n.tname in WRAP: return WRAP[n.tname]
    return BASEWRAP.get(n.simple or 'string', 'SEEHDSRivString')

def card_tuple(c):
    a, b = c.split('..'); return int(a), (10**9 if b == '*' else int(b))
def stricter(a, b):
    """a strictly stricter than b"""
    (amin, amax), (bmin, bmax) = card_tuple(a), card_tuple(b)
    return (amin >= bmin and amax <= bmax) and (amin, amax) != (bmin, bmax)
def within(a, xsd):
    (amin, amax), (bmin, bmax) = card_tuple(a), card_tuple(xsd)
    return amin >= bmin and amax <= bmax or amax == 0

def fsh_str(s):
    return s.replace('\\', '\\\\').replace('"', '\\"')

def first_sentence(t, limit=110):
    t = ' '.join(t.split())
    m = re.match(r'^(.+?[.!?])(\s|$)', t)
    s = m.group(1) if m else t
    if len(s) > limit:
        s = s[:limit].rsplit(' ', 1)[0] + ' …'
    return s.rstrip('.') if s.endswith('.') and s.count('.') == 1 else s

def clean_def(d):
    if not d: return d
    lines = [l.strip() for l in d.split('\n')]
    lines = [l for l in lines if not re.match(r'^Kardinalitet\s*:', l)]
    return '\n'.join(l for l in lines).strip()

class TKBIndex:
    def __init__(self, docx, top):
        self.paths = {}; self.types = {}
        if not docx: return
        P, T = parse_docx(docx)
        for tbl in P:
            keys = list(tbl)
            if not keys: continue
            for k, v in tbl.items():
                self.paths.setdefault(k.lower(), v)
                if k.split('.')[0] != top:
                    self.paths.setdefault((top + '.' + k).lower(), v)
        for t, d in T.items():
            self.types[t] = {k.lower(): v for k, v in d.items()}
    def lookup(self, path, parent_tname, rel):
        v = self.paths.get(path.lower())
        if v: return v
        if parent_tname and parent_tname in self.types:
            return self.types[parent_tname].get(rel.lower())
        return None

class ConvIndex:
    """Reservkälla: en logisk modell från tkb-converter (github.com/oskthu2/tkb-converter) för samma kontrakt.
    tkb-converter följer TKB:ns elementnamn, som kan skilja sig från XSD:ns (t.ex. patient.patientId för
    patient/id). Ett XSD-namn matchas mot ett syskon med samma namn eller som slutar på namnet."""
    def __init__(self, path):
        self.elems = {}; self.kids = {}
        if not path or not os.path.exists(path): return
        _, self.elems, _ = old_parse(path)
        for p in self.elems:
            par = p.rsplit('.', 1)[0] if '.' in p else ''
            self.kids.setdefault(par, []).append(p.split('.')[-1])
    def lookup(self, xpath):
        cur = ''
        for seg in xpath.split('.'):
            kids = self.kids.get(cur, [])
            hit = [k for k in kids if k.lower() == seg.lower()]
            if not hit:
                hit = [k for k in kids if k.lower().endswith(seg.lower()) and len(k) > len(seg)]
            if len(hit) != 1: return None
            cur = (cur + '.' if cur else '') + hit[0]
        e = self.elems.get(cur)
        if not e: return None
        desc = e.get('def') or e.get('short') or ''
        m = re.search(r'TKB(?::| anger kardinalitet(?:en)?)\s*(\d\.\.(?:\d+|\*))', desc)
        short = (e.get('short') or '').rstrip('.')
        return {'card': m.group(1) if m else e['card'], 'desc': desc, 'type': '', 'short': short if len(short) <= 110 else None}

def generate(cfg, models_dir, report):
    root, S = xsd_parse(cfg['xsd'], cfg['element'])
    top = root.children[0].name
    tkb = TKBIndex(cfg.get('tkb'), top)
    conv = ConvIndex(os.path.join(cfg['tkbconv_dir'], cfg['tkbconv']) if cfg.get('tkbconv') and cfg.get('tkbconv_dir') else None)
    own = os.path.join(models_dir, cfg['model'] + '.fsh')
    seeded = False
    if os.path.exists(own):
        header, old, rules = old_parse(own)
    elif cfg.get('seed'):
        # Ny modell för en äldre version: texter lånas från senaste versionens modell där TKB:n saknar dem.
        # Kardinaliteter och invarianter lånas inte, eftersom de gäller den nyare versionen.
        _, old, rules = old_parse(os.path.join(cfg.get('seed_dir', models_dir), cfg['seed'] + '.fsh'))
        header = None; seeded = True
        rules = [r for r in rules if r[1] == 'from']
    else:
        header, old, rules = None, {}, []
    oldl = {k.lower(): (k, v) for k, v in old.items()}
    used_old = set()
    def find_old(p, xp=None):
        cands = [p] + ([xp] if xp and xp != p else [])
        for a, b in cfg.get('alias', []):
            if p.startswith(b + '.') or p == b:
                cands.append(a + p[len(b):])
        if p.split('.')[-1] not in cfg.get('flatten', []):
            cands.append('.'.join(x for x in p.split('.') if x not in cfg.get('flatten', [])))
        for c in cands:
            hit = oldl.get(c.lower())
            if hit:
                used_old.add(hit[0]); return hit[1]
        return None
    resp_ns = root.ns
    out = []; datatypes = {}; card_notes = []
    rule_map = {}
    for rp, kind, val in rules:
        rule_map.setdefault(rp.lower(), []).append((kind, val))
    def emit(n, path, parent, pxpath=''):
        xpath = (pxpath + '.' if pxpath else '') + (n.xml_name or n.name)
        tk = tkb.lookup(xpath, parent.tname if parent else None, n.xml_name or n.name) or tkb.lookup(path, parent.tname if parent else None, n.name)
        if not tk and conv.elems:
            tk = conv.lookup(xpath)
        o = find_old(path, xpath)
        xsd = n.card; final = xsd; note = None
        tc = tk['card'] if tk and tk.get('card') else None
        oc = o['card'] if o and not seeded else None
        tkb_outside = None
        if tc and not within(tc, xsd):
            note = f'TKB-kardinalitet {tc} ligger utanför XSD:ns {xsd}; XSD används'; tkb_outside = tc; tc = None
        if tc: final = tc
        if oc and oc != final:
            if stricter(oc, final) or (card_tuple(oc)[1] == 0):
                card_notes.append((path, xsd, tc, oc, 'behållen från tidigare modell (ej bekräftad av TKB)' if tc else 'behållen från tidigare modell (TKB saknar uppgift)'))
                final = oc
            else:
                card_notes.append((path, xsd, tc, oc, 'tidigare modell lösare/avvikande; ' + ('TKB' if tc else 'XSD') + ' används'))
        elif oc and stricter(oc, xsd):
            card_notes.append((path, xsd, tc, oc, 'bekräftad av TKB' if tc == oc else 'behållen'))
        if note: card_notes.append((path, xsd, tk['card'], oc, note))
        short = (o or {}).get('short')
        d = clean_def((o or {}).get('def'))
        if seeded and tk and tk.get('desc', '').strip():
            short = d = None
        tparas = [' '.join(x.split()) for x in (tk or {}).get('desc', '').split('\n') if x.strip()] if tk else []
        tdesc = ' '.join(tparas)
        if not short and tk and tk.get('short'):
            short = tk['short']
        if not short:
            if len(tparas) > 1 and len(tparas[0]) <= 45 and not tparas[0].endswith('.'):
                short = tparas[0]; tdesc = ' '.join(tparas[1:])
            else:
                short = first_sentence(tdesc) if tdesc else (first_sentence(n.doc) if n.doc else n.name)
        if not d:
            d = tdesc if tdesc and tdesc != short else (n.doc if n.doc and n.doc != short else None)
        extra = []
        if tkb_outside: extra.append(f'TKB anger kardinaliteten {tkb_outside}, men XSD:n kräver {xsd}. Modellen följer XSD:n.')
        if final != xsd and o and final == o['card'] and tc and tc != final:
            extra.append(f'Kardinaliteten {final} kommer från tidigare modell; TKB anger {tc}.')
        if n.enum: extra.append('Tillåtna värden enligt XSD: ' + ', '.join(n.enum) + '.')
        if n.tname in WRAP: extra.append('Format enligt XSD (' + n.tname + '): ' + ('ÅÅÅÅMMDDttmmss' if n.tname == 'TimeStampType' else 'ÅÅÅÅMMDD') + '.')
        # type
        if n.recursive_to is not None:
            target = cfg['model'] + '.' + rec_paths[id(n.recursive_to)]
            out.append(f'* {path} {final} contentReference #{target} "{fsh_str(short)}"')
        else:
            if is_datatype(n):
                ns_c = n.children[0].ns
                ftype = dt_name(n.tname, ns_c)
                datatypes[(n.tname, ns_c)] = n
                # TKB child constraints within this context
                tnotes = []
                for c in n.children:
                    ct = tkb.lookup(path + '.' + c.name, n.tname, c.name)
                    if ct and ct.get('card') and ct['card'] != c.card and within(ct['card'], c.card):
                        tnotes.append(f'{c.name} {ct["card"]}')
                if tnotes: extra.append('Enligt TKB i detta sammanhang: ' + ', '.join(tnotes) + '.')
            elif n.children:
                ftype = 'BackboneElement'
            else:
                ftype = leaf_type(n)
            okey = ((o and next((k for k in old if old[k] is o), None)) or path).lower()
            for kind, val in rule_map.get(okey, []) + rule_map.get(okey + '.value', []):
                if kind == 'from':
                    if ftype.startswith('SEEHDSRiv') and not is_datatype(n):
                        out_bind.append(f'* {path}.value from {val}')
                    else:
                        vs = val.split()[0]
                        extra.append(f'Kodverk/värdemängd: {vs}.')
                elif kind == 'obeys':
                    out_bind.append(f'* {path} obeys {val}')
            extra = [e for e in extra if e and not (d and e in d)]
            full_def = '\n'.join(x for x in [d] + extra if x)
            line = f'* {path} {final} {ftype} "{fsh_str(short)}"'
            if full_def:
                fd = full_def.replace('"""', "'''")
                if len(fd) < 90 and '\n' not in fd:
                    line += f' """{fd}"""'
                else:
                    body = '\n'.join('    ' + l if l else '' for l in fd.split('\n'))
                    line += f' """\n{body}\n  """'
            out.append(line)
        if n.ns and n.ns != resp_ns:
            out.append(f'* insert RivNs({path}, {n.ns})')
        if n.xml_name:
            out.append(f'* insert RivXmlName({path}, {n.xml_name})')
        out.extend(out_bind); out_bind.clear()
        if n.children and not is_datatype(n) and n.recursive_to is None:
            for c in n.children:
                emit(c, path + '.' + c.name, n, xpath)
    out_bind = []
    rec_paths = {}
    for p, n in walk(root): rec_paths[id(n)] = p
    for c in root.children:
        emit(c, c.name, root)
    dropped = [k for k in old if k not in used_old]
    report[cfg['model']] = {'card_notes': card_notes, 'dropped_old': dropped,
                            'elements': sum(1 for l in out if l.startswith('* ') and not l.startswith('* insert'))}
    return root, out, datatypes, header
