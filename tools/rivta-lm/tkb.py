"""Extract element tables from RIV-TA TKB .docx files.
Returns path-style entries (response paths) and type-style entries (TypeName -> child path)."""
import sys, os, re
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from docxtables import paras_and_tables

def norm_card(c):
    c = c.replace(' ', '').replace('–', '-').replace('…', '..').replace(',', '.')
    m = re.search(r'(\d)\s*\.{2,3}\s*(\d+|\*|n)', c)
    if not m: return None
    return f'{m.group(1)}..{"*" if m.group(2) == "n" else m.group(2)}'

NAME_RE = re.compile(r'^[A-Za-z][A-Za-z0-9_]*$')

def clean_name(nm):
    nm = nm.replace('…', '..').replace(' ', '').replace('*:', '').replace('*', '')
    nm = re.sub(r'(Regel|Regler)[\d.,]*$', '', nm)
    nm = re.sub(r'\(.*$', '', nm)
    nm = re.sub(r'\[.*$', '', nm)
    return nm.strip()

def parse_docx(docx):
    paths = []      # list of dict path->info  (one per table)
    types = {}      # TypeName -> dict relpath->info
    last_heads = []
    for kind, st, rows in paras_and_tables(docx):
        if kind == 'p':
            if rows: last_heads = (last_heads + [rows])[-3:]
            continue
        if not rows: continue
        hdr = [h[0].strip().lower() for h in rows[0]]
        svar_header = hdr and hdr[0] == 'svar'
        if not svar_header and not (hdr and hdr[0].startswith('namn') and any('kard' in h for h in hdr)):
            continue
        if svar_header:
            ci, ti, di = 3, 1, 2; body = rows[1:]; in_resp = True
        else:
            ci = next(i for i, h in enumerate(hdr) if 'kard' in h)
            ti = 1
            di = next((i for i, h in enumerate(hdr) if h.startswith('beskriv') or h.startswith('kommentar')), 2)
            body = rows[1:]
            in_resp = not any(r[0][0].strip().lower() in ('svar', 'begäran') for r in body)
        get = lambda r, i: r[i][0].strip() if i is not None and i < len(r) else ''
        names = [get(r, 0).split('\n')[0] for r in body]
        style = 'xpath' if any(n.startswith('//') for n in names) else ('dots' if any(n.startswith('../') or n.startswith('..') for n in names) else 'flat')
        tbl = {}; stack = []
        for r in body:
            raw = get(r, 0).split('\n')[0].strip(); low = raw.lower()
            if low.startswith('svar'): in_resp = True; stack = []; continue
            if low.startswith('begäran'): in_resp = False; continue
            if not in_resp or not raw: continue
            info = {'type': get(r, ti).replace('\n', ' '), 'desc': get(r, di), 'card': norm_card(get(r, ci).replace('\n', ' ')), 'raw_card': get(r, ci).replace('\n', ' ')}
            if style == 'xpath':
                segs = [clean_name(s) for s in raw.lstrip('/').split('/') if s.strip()]
                if not segs or not all(NAME_RE.match(s) for s in segs): continue
                tbl['.'.join(segs)] = info
            elif style == 'dots':
                s = raw.replace('…', '..').replace(' ', '')
                m = re.match(r'^((?:\.\./?)*)(.*)$', s)
                depth = m.group(1).count('..'); nm = clean_name(m.group(2))
                if not NAME_RE.match(nm): continue
                stack = stack[:depth] + [nm]
                tbl['.'.join(stack)] = info
            else:
                segs = [clean_name(s) for s in raw.split('/') if s.strip()]
                if not segs or not all(NAME_RE.match(s) for s in segs): continue
                tbl['.'.join(segs)] = info
        if not tbl: continue
        if style == 'flat':
            tname = None
            for h in reversed(last_heads):
                m = re.search(r'([A-Z][A-Za-z]*Type)\b', h)
                if m: tname = m.group(1); break
            if tname: types.setdefault(tname, {}).update(tbl)
            else: paths.append(tbl)
        else:
            paths.append(tbl)
    return paths, types
