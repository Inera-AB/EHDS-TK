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
        out += p.replace('.', '_')[:1].upper() + p.replace('.', '_')[1:]
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

def generate(cfg, models_dir, report):
    root, S = xsd_parse(cfg['xsd'], cfg['element'])
    top = root.children[0].name
    tkb = TKBIndex(cfg.get('tkb'), top)
    header, old, rules = old_parse(os.path.join(models_dir, cfg['model'] + '.fsh'))
    oldl = {k.lower(): (k, v) for k, v in old.items()}
    used_old = set()
    def find_old(p):
        cands = [p]
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
    def emit(n, path, parent):
        xpath = '.'.join(path.split('.')[:-1] + [n.xml_name or n.name])
        tk = tkb.lookup(xpath, parent.tname if parent else None, n.xml_name or n.name) or tkb.lookup(path, parent.tname if parent else None, n.name)
        o = find_old(path)
        xsd = n.card; final = xsd; note = None
        tc = tk['card'] if tk and tk.get('card') else None
        oc = o['card'] if o else None
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
        if short and o and o['type'] in ('Identifier', 'CodeableConcept') and False: pass
        d = clean_def((o or {}).get('def'))
        tparas = [' '.join(x.split()) for x in (tk or {}).get('desc', '').split('\n') if x.strip()] if tk else []
        tdesc = ' '.join(tparas)
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
                emit(c, path + '.' + c.name, n)
    out_bind = []
    rec_paths = {}
    for p, n in walk(root): rec_paths[id(n)] = p
    for c in root.children:
        emit(c, c.name, root)
    dropped = [k for k in old if k not in used_old]
    report[cfg['model']] = {'card_notes': card_notes, 'dropped_old': dropped,
                            'elements': sum(1 for l in out if l.startswith('* ') and not l.startswith('* insert'))}
    return root, out, datatypes, header
