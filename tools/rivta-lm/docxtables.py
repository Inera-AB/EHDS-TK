import sys, zipfile, re
import xml.etree.ElementTree as ET
W = '{http://schemas.openxmlformats.org/wordprocessingml/2006/main}'
def text(el):
    paras = el.findall('.//' + W + 'p') if el.tag != W + 'p' else [el]
    if not paras:
        return ''.join(t.text or '' for t in el.iter(W+'t')).strip()
    out = []
    for p in paras:
        t = ''.join(x.text or '' for x in p.iter(W+'t')).strip()
        if t: out.append(t)
    return '\n'.join(out)
def paras_and_tables(path):
    z = zipfile.ZipFile(path); root = ET.fromstring(z.read('word/document.xml'))
    body = root.find(W+'body')
    for el in body:
        if el.tag == W+'p':
            st = el.find(f'{W}pPr/{W}pStyle')
            yield ('p', st.get(W+'val') if st is not None else '', text(el))
        elif el.tag == W+'tbl':
            rows = []
            for tr in el.iter(W+'tr'):
                cells = []
                for tc in tr.findall(W+'tc'):
                    # indentation hint: count leading spaces/tabs or paragraph indent
                    ind = tc.find(f'.//{W}ind')
                    left = ind.get(W+'left') if ind is not None else None
                    cells.append((text(tc), left))
                rows.append(cells)
            yield ('t', None, rows)
if __name__ == '__main__':
    for kind, st, c in paras_and_tables(sys.argv[1]):
        if kind == 'p':
            if st.lower().startswith('heading') or st.lower().startswith('rubrik'): print('#', st, c)
        else:
            print('TABLE', len(c), 'rows; header:', [x[0][:25] for x in c[0]])
