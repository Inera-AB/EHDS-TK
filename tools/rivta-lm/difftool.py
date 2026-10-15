"""Jämför en äldre versions logiska modell med senaste versionens och skriver skillnaderna som markdown.

Tabellen skrivs in mellan markörerna <!-- versionsdiff:MODELL:start --> och <!-- versionsdiff:MODELL:end -->
på mappningssidan, så att den kan genereras om utan att den handskrivna texten runt omkring påverkas.
"""
import sys, os, re, argparse
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from oldfsh import parse

ROOT = re.compile(r'^\* insert RivRoot\((\w+), (\S+)\)', re.M)
TITLE = re.compile(r'^Title: "(.*)"', re.M)

def base_type(t):
    """SEEHDSRivCVTypeHealthcondDescription2 -> CVType, SEEHDSRivString -> string, BackboneElement -> (struktur)."""
    if t == 'BackboneElement': return 'struktur'
    if t == 'contentReference': return 'rekursiv'
    m = re.match(r'^SEEHDSRiv([A-Za-z]+?Type)', t)
    if m: return m.group(1)
    return {'SEEHDSRivString': 'text', 'SEEHDSRivTimeStamp': 'TimeStampType', 'SEEHDSRivDate': 'DateType',
            'SEEHDSRivDateTime': 'dateTime', 'SEEHDSRivBoolean': 'boolean', 'SEEHDSRivInteger': 'heltal',
            'SEEHDSRivDecimal': 'decimal', 'SEEHDSRivBase64Binary': 'base64Binary', 'SEEHDSRivAnyURI': 'anyURI'}.get(t, t)

def load(path):
    txt = open(path, encoding='utf-8').read()
    _, elems, _ = parse(path)
    root = ROOT.search(txt); title = TITLE.search(txt)
    return {'elems': elems, 'ns': root.group(2) if root else '', 'title': title.group(1) if title else os.path.basename(path)}

def rename(p, renames):
    """Översätt en sökväg i den äldre modellen till senaste versionens med längsta matchande prefix."""
    best = None
    for a, b in renames:
        if (p == a or p.startswith(a + '.')) and (best is None or len(a) > len(best[0])):
            best = (a, b)
    if not best: return p
    a, b = best
    return None if b is None else b + p[len(a):]

def diff(old_path, new_path, old_label=None, new_label=None, renames=()):
    a, b = load(old_path), load(new_path)
    ol, nl = old_label or a['title'], new_label or b['title']
    ae, be = a['elems'], b['elems']
    bl = {k.lower(): k for k in be}
    rows = []; matched = set(); mapped = {}
    for p, x in ae.items():
        q = rename(p, renames)
        q = bl.get(q.lower()) if q else None
        y = be.get(q) if q else None
        if q: matched.add(q)
        if not y:
            rows.append((p, f'{x["card"]} {base_type(x["type"])}', '–', '–', 'Finns bara i ' + ol))
            continue
        notes = []
        if q != p: notes.append('namn/plats')
        if x['card'] != y['card']: notes.append('kardinalitet')
        if base_type(x['type']) != base_type(y['type']): notes.append('typ')
        par = p.rsplit('.', 1)[0] if '.' in p else None
        if notes == ['namn/plats'] and par in mapped and q == mapped[par] + '.' + p.split('.')[-1]:
            mapped[p] = q
            continue  # bara förälderns namnbyte, som redan står på förälderns rad
        mapped[p] = q
        if notes:
            rows.append((p, f'{x["card"]} {base_type(x["type"])}', f'`{q}`' if q != p else 'samma',
                         f'{y["card"]} {base_type(y["type"])}', 'Ändrad ' + ', '.join(notes)))
    zero = [q for q, y in be.items() if y['card'].endswith('..0')]
    for q, y in be.items():
        if q in matched or any(q == z or q.startswith(z + '.') for z in zero): continue
        rows.append(('–', '–', f'`{q}`', f'{y["card"]} {base_type(y["type"])}', 'Ny i ' + nl))
    # Visa inte barn till element som helt saknas i den andra versionen – föräldern räcker.
    out = []; gone_old = []; gone_new = []
    for r in rows:
        if r[0] != '–':
            if any(r[0].startswith(g + '.') for g in gone_old): continue
            if r[4].startswith('Finns bara'): gone_old.append(r[0])
        else:
            q = r[2].strip('`')
            if any(q.startswith(g + '.') for g in gone_new): continue
            gone_new.append(q)
        out.append(r)
    lines = []
    if a['ns'] != b['ns']:
        lines.append(f'Svarets namnrymd: `{a["ns"]}` ({ol}) och `{b["ns"]}` ({nl}).\n')
    if not out:
        lines.append(f'Inga skillnader i struktur, kardinalitet eller datatyp mellan {ol} och {nl}.')
    else:
        lines.append(f'| Element i {ol} | {ol} | Motsvarighet i {nl} | {nl} | Skillnad |')
        lines.append('|---|---|---|---|---|')
        for p, x, q, y, n in out:
            lines.append(f'| {"`" + p + "`" if p != "–" else p} | {x} | {q} | {y} | {n} |')
        lines.append('')
        lines.append('Element som saknas i den ena versionen redovisas på översta nivån; deras underelement listas inte. '
                     'Element som är 0..0 i senaste versionen och saknas i den äldre listas inte. '
                     'Element med samma namn, kardinalitet och datatyp i båda versionerna listas inte, och inte heller element som bara följer med när föräldern byter namn eller plats.')
    return '\n'.join(lines)

def splice(page, model, text):
    s = open(page, encoding='utf-8').read()
    a, b = f'<!-- versionsdiff:{model}:start -->', f'<!-- versionsdiff:{model}:end -->'
    if a not in s or b not in s:
        raise SystemExit(f'{page}: markörerna för {model} saknas')
    pre, rest = s.split(a, 1); _, post = rest.split(b, 1)
    open(page, 'w', encoding='utf-8').write(pre + a + '\n' + text + '\n' + b + post)

if __name__ == '__main__':
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--domains', required=True, help='Samma katalog som till run_gen.py')
    ap.add_argument('--models', default='input/fsh/logicalmodels')
    ap.add_argument('--diffdir', default=os.environ.get('RIVTA_LM_DIFFDIR', '/tmp/rivta-lm-diff'))
    ap.add_argument('--pages', default='input/pagecontent')
    ap.add_argument('--print', action='store_true', help='Skriv ut i stället för att uppdatera sidorna')
    args = ap.parse_args()
    CFG = __import__('cfg').CFG(args.domains)
    latest = {c['model']: c for c in CFG if not c.get('seed')}
    for c in CFG:
        if not c.get('seed') or not c.get('page'): continue  # utan page: egen mappningstabell i stället för diff
        old = os.path.join(args.diffdir if c.get('diffonly') else args.models, c['model'] + '.fsh')
        new = os.path.join(args.models, c['seed'] + '.fsh')
        text = diff(old, new, c['contract'].split(' (')[0], latest[c['seed']]['contract'], c.get('renames', ()))
        if args.print:
            print(f'===== {c["model"]}\n{text}\n')
        else:
            splice(os.path.join(args.pages, c['page']), c['model'], text)
