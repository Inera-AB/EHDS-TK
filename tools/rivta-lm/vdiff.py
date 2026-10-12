"""Jämför den logiska modellen för en annan aktiv version av ett tjänstekontrakt med modellen som
mappningen utgår från (cfg 'base').

Skriver en Markdown-tabell per version till input/includes/vdiff-<modell>.md, som mappningssidorna
inkluderar. Jämförelsen görs per elementsökväg: element som bara finns i den ena versionen, bytta
namn och ändrad kardinalitet eller datatyp.
"""
import sys, os, re, argparse
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from oldfsh import parse as old_parse

ap = argparse.ArgumentParser(description=__doc__)
ap.add_argument('--models', default='input/fsh/logicalmodels')
ap.add_argument('--out', default='input/includes')
args = ap.parse_args()
CFG = __import__('cfg').CFG('')


def load(model):
    _, elems, _ = old_parse(os.path.join(args.models, model + '.fsh'))
    return elems


# Sökvägar i den äldre versionen som motsvarar andra sökvägar i den senaste (gemener, längsta först).
ALIAS = {
    'SEEHDSLMAccessLogV11': [('accesslogsresulttype.result.resultcode', 'accesslogsresult.reportresult.result.resultcode'),
                             ('accesslogsresulttype.result.resulttext', 'accesslogsresult.reportresult.result.resulttext'),
                             ('accesslogsresulttype.result', 'accesslogsresult.reportresult'),
                             ('accesslogsresulttype', 'accesslogsresult')],
}


def tname(t):
    """Datatypens namn utan prefix och namnrymdssuffix (IITypeHealthcondBasic2 -> IIType)."""
    t = t.replace('SEEHDSRiv', '').replace('BackboneElement', 'Backbone')
    m = re.match(r'([A-Z][A-Za-z]*?Type)(?=[A-Z]|$)', t)
    return m.group(1) if m else t


def norm(p, alias=()):
    """Jämförelsenyckel: gemener, <x>Header/<x>Body -> header/body, versionens alias."""
    k = '.'.join(re.sub(r'^.+(header|body)$', r'\1', seg) for seg in p.lower().split('.'))
    for a, b in alias:
        if k == a or k.startswith(a + '.'):
            return b + k[len(a):]
    return k


def covered(p, keys):
    """Elementet täcks redan av en förälder som också finns i listan."""
    return any(p.startswith(k + '.') for k in keys)


BASEVER = {c['model']: c['contract'].split()[-1] for c in CFG}
for cfg in CFG:
    if not cfg.get('base'):
        continue
    v, bv = cfg['version'], BASEVER[cfg['base']]
    old, new = load(cfg['model']), load(cfg['base'])
    al = ALIAS.get(cfg['model'], [])
    ol = {norm(k, al): k for k in old}; nl = {norm(k): k for k in new}
    only_old = [ol[k] for k in ol if k not in nl and old[ol[k]]['card'] != '0..0']
    only_new = [nl[k] for k in nl if k not in ol and new[nl[k]]['card'] != '0..0']
    only_old = [p for p in only_old if not covered(p, only_old)]
    only_new = [p for p in only_new if not covered(p, only_new)]
    changed = []
    for k in ol:
        if k in nl:
            a, b = old[ol[k]], new[nl[k]]
            if a['card'] != b['card'] or tname(a['type']) != tname(b['type']):
                changed.append((ol[k], a, b))
    renamed = [(ol[k], nl[k]) for k in ol if k in nl and ol[k].split('.')[-1] != nl[k].split('.')[-1]
               and ol[k].split('.')[-1].lower() != nl[k].split('.')[-1].lower()]
    rows = []
    for p in only_old:
        o = old[p]
        rows.append(f'| `{p}` | {o["card"]} {tname(o["type"])} | – | Finns bara i {v} |')
    for p in only_new:
        n = new[p]
        rows.append(f'| `{p}` | – | {n["card"]} {tname(n["type"])} | Finns bara i {bv} |')
    for p, q in renamed:
        rows.append(f'| `{p}` | {old[p]["card"]} {tname(old[p]["type"])} | `{q}` | Bytt namn |')
    for p, a, b in changed:
        what = []
        if a['card'] != b['card']: what.append('kardinalitet')
        if tname(a['type']) != tname(b['type']): what.append('datatyp')
        rows.append(f'| `{p}` | {a["card"]} {tname(a["type"])} | {b["card"]} {tname(b["type"])} | Ändrad {" och ".join(what)} |')
    head = [f'<!-- Genererad av tools/rivta-lm/vdiff.py: {cfg["model"]} mot {cfg["base"]}. Redigera inte för hand. -->',
            '']
    if rows:
        head += [f'| Element | {v} | {bv} | Skillnad |', '|---|---|---|---|']
    else:
        head += [f'Strukturen är identisk med version {bv}.']
    path = os.path.join(args.out, f'vdiff-{cfg["model"]}.md')
    open(path, 'w', encoding='utf-8').write('\n'.join(head + rows) + '\n')
    print(f'{cfg["model"]:36} bara äldre={len(only_old):3} bara senaste={len(only_new):3} ändrade={len(changed):3} namn={len(renamed):3}')
