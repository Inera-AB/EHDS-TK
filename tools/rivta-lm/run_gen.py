import sys, os, re, json
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import gen
from gen import generate, dt_name, fsh_str, domain_code
from tkb import parse_docx

import argparse
ap = argparse.ArgumentParser(description='Generera logiska modeller för RIV-TA-svar från XSD + TKB.')
ap.add_argument('--domains', required=True, help='Katalog med kloner av bitbucket.org/rivta-domains/riv.*')
ap.add_argument('--models', default='input/fsh/logicalmodels', help='Befintliga modeller (källa för beskrivningar)')
ap.add_argument('--out', default='input/fsh/logicalmodels', help='Utkatalog')
ap.add_argument('only', nargs='*', help='Begränsa till dessa modeller')
args = ap.parse_args()
X = args.domains; MODELS, OUT = args.models, args.out
CFG = __import__('cfg').CFG(X)
only = args.only
os.makedirs(OUT, exist_ok=True)
report = {}; all_dt = {}
for cfg in CFG:
    if only and cfg['model'] not in only: continue
    root, lines, dts, header = generate(cfg, MODELS, report)
    all_dt.update({k: v for k, v in dts.items() if k not in all_dt})
    # header: keep invariants and Logical/Id/Title/Description, drop Characteristics and old comment lines
    htxt = '\n'.join(header)
    htxt = re.sub(r'^Characteristics:.*\n?', '', htxt, flags=re.M)
    htxt = re.sub(r'^//.*\n?', '', htxt, flags=re.M).strip('\n')
    xsdrel = os.path.relpath(cfg['xsd'], X).replace(os.sep, '/').replace('/schemas/interactions/', '/schemas/interactions/')
    tkbrel = os.path.basename(cfg['tkb'])
    comment = (f'// RIV-TA {cfg["contract"]} – svarsmeddelandet {cfg["element"]}.\n'
               f'// Struktur, namn, ordning, namnrymder och XSD-kardinaliteter är genererade från\n'
               f'// {xsdrel} (bitbucket.org/rivta-domains).\n'
               f'// Kardinaliteter är verifierade mot {tkbrel}; texter är sammanslagna från tidigare modell och TKB.\n')
    body = '\n'.join(lines)
    txt = comment + '\n' + htxt + f'\n* insert RivRoot({cfg["element"]}, {root.ns})\n' + body + '\n'
    open(os.path.join(OUT, cfg['model'] + '.fsh'), 'w', encoding='utf-8').write(txt)
if os.environ.get('RIVTA_LM_REPORT'):
    json.dump(report, open(os.environ['RIVTA_LM_REPORT'], 'w'), ensure_ascii=False, indent=1)
# datatypes
DTSHORT = {'root': 'OID eller UUID för identifierarens namnrymd', 'extension': 'Identifierarens värde inom namnrymden',
 'code': 'Kod', 'codeSystem': 'OID för kodsystem', 'codeSystemName': 'Kodsystemets namn', 'codeSystemVersion': 'Kodsystemets version',
 'displayName': 'Kodens klartext', 'originalText': 'Originaltext (om kod saknas eller som komplement)',
 'id': 'Personidentitet (12 tecken utan avskiljare)', 'type': 'OID för typ av personidentitet',
 'value': 'Värde', 'unit': 'Enhet', 'low': 'Nedre gräns', 'high': 'Övre gräns', 'lowClosed': 'Nedre gräns inkluderad',
 'highClosed': 'Övre gräns inkluderad', 'start': 'Starttidpunkt', 'end': 'Sluttidpunkt', 'format': 'Format för värdet'}
dl = ['// RIV-TA-datatyper för de logiska modellerna. Genererade från respektive domäns XSD.',
      '// Varje datatyp finns per namnrymd eftersom underelementen ärver datatypens namnrymd i XML:en.', '',
      'RuleSet: RivNs(path, ns)',
      '* {path} ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace"',
      '* {path} ^extension[=].valueUri = "{ns}"', '',
      'RuleSet: RivRoot(name, ns)',
      '* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics"',
      '* ^extension[=].valueCode = #can-be-target',
      '* ^extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/xml-name"',
      '* ^extension[=].valueString = "{name}"',
      '* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace"',
      '* ^extension[=].valueUri = "{ns}"', '',
      'RuleSet: RivXmlName(path, name)',
      '* {path} ^extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/xml-name"',
      '* {path} ^extension[=].valueString = "{name}"', '',
      'RuleSet: RivTypeNs(ns)',
      '* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace"',
      '* ^extension[=].valueUri = "{ns}"', '']
WR = [('SEEHDSRivString', 'string', 'RIV-TA text', 'Textinnehåll i ett RIV-TA-element av typen xs:string eller en strängbaserad typ (t.ex. HSAIdType, kodlistor).'),
      ('SEEHDSRivTimeStamp', 'string', 'RIV-TA TimeStampType', 'Tidpunkt i formatet ÅÅÅÅMMDDttmmss (lokal svensk tid utan tidszon). Konverteras till FHIR dateTime/instant med Europe/Stockholm, se GENERAL-001.'),
      ('SEEHDSRivDate', 'string', 'RIV-TA DateType', 'Datum i formatet ÅÅÅÅMMDD.'),
      ('SEEHDSRivDateTime', 'string', 'RIV-TA xs:dateTime', 'Tidpunkt enligt xs:dateTime. Lagras som text eftersom xs:dateTime tillåter tidpunkt utan tidszon.'),
      ('SEEHDSRivBoolean', 'boolean', 'RIV-TA xs:boolean', 'Sanningsvärde (true/false).'),
      ('SEEHDSRivInteger', 'integer', 'RIV-TA heltal', 'Heltal (xs:int/xs:integer).'),
      ('SEEHDSRivDecimal', 'decimal', 'RIV-TA decimaltal', 'Decimaltal (xs:double/xs:decimal).'),
      ('SEEHDSRivBase64Binary', 'base64Binary', 'RIV-TA xs:base64Binary', 'Base64-kodat innehåll.'),
      ('SEEHDSRivAnyURI', 'uri', 'RIV-TA xs:anyURI', 'URI.')]
for name, ft, title, desc in WR:
    dl += [f'Logical: {name}', f'Id: {name}', f'Title: "{title}"',
           f'Description: "{desc} Elementets värde ligger som textinnehåll i XML-elementet (representation xmlText)."',
           f'* value 1..1 {ft} "Elementets textinnehåll"', '* value ^representation = #xmlText', '']
for (tname, ns), n in sorted(all_dt.items()):
    nm = dt_name(tname, ns)
    dl += [f'Logical: {nm}', f'Id: {nm}', f'Title: "RIV-TA {tname} ({ns.replace("urn:riv:", "")})"',
           f'Description: "RIV-TA-datatypen {tname} i namnrymden {ns}."', f'* insert RivTypeNs({ns})']
    for c in n.children:
        xn = c.xml_name or c.name
        dl.append(f'* {c.name} {c.card} {gen.leaf_type(c)} "{fsh_str(DTSHORT.get(xn, xn))}"')
        if c.xml_name:
            dl.append(f'* insert RivXmlName({c.name}, {c.xml_name})')
    dl.append('')
open(os.path.join(OUT, 'SEEHDSRivDatatypes.fsh'), 'w', encoding='utf-8').write('\n'.join(dl))
for k, v in report.items():
    print(f"{k:34} elements={v['elements']:5} cardnotes={len(v['card_notes']):3} dropped_old={len(v['dropped_old'])}")
print('datatypes', len(all_dt))
