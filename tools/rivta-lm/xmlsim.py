"""Generate a sample RIV-TA response from the XSD and parse it the way org.hl7.fhir.r5 XmlParser does
for logical models, using the SUSHI-generated StructureDefinitions."""
import sys, os, json, glob
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import xml.etree.ElementTree as ET
from rivxsd import parse as xsd_parse
NS_EXT = 'http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace'
XN_EXT = 'http://hl7.org/fhir/tools/StructureDefinition/xml-name'
FHIR_NS = 'http://hl7.org/fhir'
SDS = {}
def load_sds(d):
    for f in glob.glob(os.path.join(d, 'StructureDefinition-*.json')):
        sd = json.load(open(f)); SDS[sd['url']] = sd
def ext(o, url):
    for e in o.get('extension', []):
        if e['url'] == url: return e.get('valueUri') or e.get('valueString')
def children(sd, path):
    out = []
    for ed in sd['differential']['element']:
        p = ed['path']
        if p.startswith(path + '.') and '.' not in p[len(path) + 1:]:
            out.append(ed)
    return out
def prop_ns(sd, ed):
    return ext(ed, NS_EXT) or ext(sd, NS_EXT) or FHIR_NS
def build_sample(n, parent):
    for c in n.children:
        if c.max == '0': continue
        el = ET.SubElement(parent, f'{{{c.ns}}}{c.xml_name or c.name}')
        if c.recursive_to is not None: continue
        if c.children: build_sample(c, el)
        else: el.text = 'true' if c.simple == 'boolean' else ('1' if c.simple in ('int', 'integer', 'double', 'decimal') else 'x')
def walk(sd, path, xel, errs, seen):
    props = children(sd, path)
    text = (xel.text or '').strip()
    if text:
        if not any(p.get('representation') == ['xmlText'] for p in props):
            errs.append(f'text not allowed at {path}')
        return
    for ch in xel:
        ns, local = ch.tag[1:].split('}')
        match = [p for p in props if (ext(p, XN_EXT) or p['path'].split('.')[-1]) == local and prop_ns(sd, p) == ns]
        if not match:
            loose = [p for p in props if (ext(p, XN_EXT) or p['path'].split('.')[-1]) == local]
            errs.append(f'{"namespace mismatch" if loose else "no property"} for {local} ({ns}) under {path}')
            if not loose: continue
            match = loose
        p = match[0]
        seen.add(p['path'])
        if 'contentReference' in p:
            tgt = p['contentReference'].split('#')[1]
            walk(sd, tgt, ch, errs, seen); continue
        t = p['type'][0]['code']
        if t == 'BackboneElement':
            walk(sd, p['path'], ch, errs, seen)
        else:
            tsd = SDS.get(t)
            if not tsd: errs.append(f'unknown type {t} at {p["path"]}'); continue
            walk(tsd, tsd['type'] if not tsd['type'].startswith('http') else tsd['differential']['element'][0]['path'], ch, errs, seen)
if __name__ == '__main__':
    import argparse
    ap = argparse.ArgumentParser(description='Läs ett exempelsvar per kontrakt mot de byggda modellerna enligt XmlParsers regler.')
    ap.add_argument('--domains', required=True); ap.add_argument('--sd', default='fsh-generated/resources')
    args = ap.parse_args(); load_sds(args.sd)
    CFG = __import__('cfg').CFG(args.domains)
    for cfg in CFG:
        e, m = cfg['element'], cfg['model']
        root, _ = xsd_parse(cfg['xsd'], e)
        doc = ET.Element(f'{{{root.ns}}}{root.name}')
        build_sample(root, doc)
        sd = next((s for s in SDS.values() if ext(s, XN_EXT) == e and ext(s, NS_EXT) == root.ns), None)
        if root is None: continue
        if not sd: print(f'{m}: NO ROOT MATCH'); continue
        errs = []; seen = set()
        walk(sd, sd['differential']['element'][0]['path'], doc, errs, seen)
        n = sum(1 for _ in doc.iter()) - 1
        print(f'{m:34} xml-element={n:5} fel={len(errs)}' + ('' if not errs else '  ' + '; '.join(errs[:4])))
