"""Parse a RIV-TA responder XSD into a tree of nodes with namespace, cardinality and type info."""
import os
import xml.etree.ElementTree as ET
XS = '{http://www.w3.org/2001/XMLSchema}'

class Schemas:
    def __init__(self):
        self.types = {}; self.elems = {}; self.loaded = set(); self.efd = {}
    def load(self, path):
        path = os.path.normpath(path)
        if path in self.loaded: return
        self.loaded.add(path)
        root = ET.parse(path).getroot()
        tns = root.get('targetNamespace')
        nsmap = dict(n for _, n in ET.iterparse(path, events=['start-ns']))
        self.efd[tns] = root.get('elementFormDefault', 'unqualified')
        for imp in root:
            if imp.tag in (XS+'import', XS+'include') and imp.get('schemaLocation'):
                self.load(os.path.join(os.path.dirname(path), imp.get('schemaLocation')))
        for c in root:
            n = c.get('name')
            if not n: continue
            if c.tag in (XS+'complexType', XS+'simpleType'):
                self.types[(tns, n)] = (c, nsmap, tns)
            elif c.tag == XS+'element':
                self.elems[(tns, n)] = (c, nsmap, tns)
    def q(self, qname, nsmap, tns):
        if ':' in qname:
            p, l = qname.split(':', 1); return (nsmap.get(p), l)
        return (nsmap.get('', tns), qname)

import re as _re
# Namn som krockar med ärvda element i FHIR (Element.id, Element.extension,
# BackboneElement.modifierExtension) får prefixet riv; XML-namnet bärs i xml-name.
RESERVED = {'id', 'extension', 'modifierExtension'}
def fhir_name(name):
    parts = _re.split(r'[^A-Za-z0-9]+', name)
    n = parts[0] + ''.join(p[:1].upper() + p[1:] for p in parts[1:])
    if n in RESERVED:
        n = 'riv' + n[:1].upper() + n[1:]
    return n

class Node:
    def __init__(self, name, ns, mn, mx, tname, tns_of_type=None):
        self.name, self.ns, self.min, self.max, self.tname = name, ns, mn, mx, tname
        self.children = []; self.simple = None; self.enum = None; self.pattern = None
        self.recursive_to = None; self.choice = False; self.doc = None; self.attrs = []; self.xml_name = None
    @property
    def card(self): return f'{self.min}..{self.max}'

def doc_of(e):
    d = e.find(f'{XS}annotation/{XS}documentation')
    return ' '.join((d.text or '').split()) if d is not None and d.text else None

def simple_info(S, qn, nsmap, tns, depth=0):
    """Return (xsd builtin base, enum list, pattern) for a simple type QName."""
    ns, local = S.q(qn, nsmap, tns)
    if ns == 'http://www.w3.org/2001/XMLSchema':
        return local, None, None
    t = S.types.get((ns, local))
    if t is None or t[0].tag != XS+'simpleType' or depth > 10:
        return None, None, None
    st, snm, stns = t
    r = st.find(XS+'restriction')
    if r is None:
        u = st.find(XS+'union'); return 'string', None, None
    base, en, pat = simple_info(S, r.get('base'), snm, stns, depth+1)
    enums = [x.get('value') for x in r.findall(XS+'enumeration')] or en
    p = r.find(XS+'pattern'); pat = p.get('value') if p is not None else pat
    return base, enums, pat

def build(S, tnode, nsmap, tns, parent, stack, depth=0):
    def particles(node, inchoice=False):
        for c in node:
            if c.tag == XS+'element':
                yield c, inchoice, nsmap, tns
            elif c.tag in (XS+'sequence', XS+'all'):
                yield from particles(c, inchoice)
            elif c.tag == XS+'choice':
                yield from particles(c, True)
            elif c.tag in (XS+'complexContent', XS+'simpleContent'):
                for ext in c:
                    if ext.tag in (XS+'extension', XS+'restriction'):
                        bt = S.types.get(S.q(ext.get('base'), nsmap, tns))
                        if bt and bt[0].tag == XS+'complexType':
                            build(S, bt[0], bt[1], bt[2], parent, stack, depth+1)
                        yield from particles(ext, inchoice)
            elif c.tag == XS+'attribute':
                parent.attrs.append(c.get('name') or c.get('ref'))
    for e, inchoice, enm, etns in particles(tnode):
        mn = '0' if inchoice else e.get('minOccurs', '1')
        mx = e.get('maxOccurs', '1'); mx = '*' if mx == 'unbounded' else mx
        node_e, node_nsmap, node_tns = e, enm, etns
        if e.get('ref'):
            g = S.elems.get(S.q(e.get('ref'), enm, etns))
            node_e, node_nsmap, node_tns = g
            name = node_e.get('name'); ns = node_tns
        else:
            name = e.get('name')
            ns = etns if S.efd.get(etns) == 'qualified' else None
        typ = node_e.get('type')
        n = Node(fhir_name(name), ns, mn, mx, typ.split(':')[-1] if typ else None)
        n.xml_name = name if fhir_name(name) != name else None
        n.choice = inchoice
        n.doc = doc_of(node_e)
        parent.children.append(n)
        ct = None
        if typ:
            t = S.types.get(S.q(typ, node_nsmap, node_tns))
            if t and t[0].tag == XS+'complexType':
                ct = t
            else:
                n.simple, n.enum, n.pattern = simple_info(S, typ, node_nsmap, node_tns)
        else:
            inl = node_e.find(XS+'complexType')
            if inl is not None:
                ct = (inl, node_nsmap, node_tns); n.tname = None
            else:
                ist = node_e.find(XS+'simpleType'); n.simple = 'string'
        if ct:
            key = (ct[2], n.tname) if n.tname else None
            if key and key in stack:
                n.recursive_to = stack[key]
            else:
                sub = dict(stack)
                if key: sub[key] = n
                if n.tname and n.doc is None: n.doc = doc_of(ct[0])
                build(S, ct[0], ct[1], ct[2], n, sub, depth+1)
                if not n.children and not n.simple:
                    # complex type with simple content only
                    sc = ct[0].find(XS+'simpleContent')
                    n.simple = 'string'

def parse(responder, elemname):
    S = Schemas(); S.load(responder)
    for (ns, nm), (e, nsmap, tns) in S.elems.items():
        if nm == elemname:
            root = Node(nm, ns, '1', '1', e.get('type').split(':')[-1])
            t = S.types[S.q(e.get('type'), nsmap, tns)]
            build(S, t[0], t[1], t[2], root, {(t[2], root.tname): root})
            return root, S
    raise SystemExit('no element ' + elemname)

def walk(n, prefix=''):
    for c in n.children:
        p = prefix + c.name
        yield p, c
        yield from walk(c, p + '.')
