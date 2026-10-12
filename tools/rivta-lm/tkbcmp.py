"""Jämför de logiska modellerna för övriga aktiva kontraktsversioner med tkb-converters modeller
för samma domänversion (https://github.com/oskthu2/tkb-converter), som en oberoende kontroll.

Jämförelsen görs per elementsökväg ned till RIV-TA-datatyperna (tkb-converter expanderar dem till
FHIR-datatyper). tkb-converter prefixar ibland elementnamn (t.ex. `patient.id` -> `patient.patientId`);
sådana namn matchas på suffix inom samma förälder. Element med kardinalitet 0..0 i IG:ns modell räknas
inte, och inte heller 0..0 i tkb-converter. Förväntade avvikelser är beskrivna i README.md.
"""
import sys, os, argparse
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from oldfsh import parse

ap = argparse.ArgumentParser(description=__doc__)
ap.add_argument('--tkbconv', default='../tkb-converter', help='klon av tkb-converter')
ap.add_argument('--models', default='input/fsh/logicalmodels')
args = ap.parse_args()

# IG-modell -> tkb-converters modell (relativt igs/). Versioner som saknas i tkb-converter
# (LaboratoryOrderOutcome 4.1, ReferralOutcome 3.1, AlertInformation 3.0, RequestActivities 1.0) ingår inte.
PAIRS = {
    'SEEHDSLMVaccinationHistoryV10': 'TKB_clinicalprocess_activityprescription_actoutcome/versions/1.0.2/input/fsh/logical-models/GetVaccinationHistory.fsh',
    'SEEHDSLMLaboratoryOrderOutcomeV31': 'TKB_clinicalprocess_healthcond_actoutcome/versions/3.1.10/input/fsh/logical-models/GetLaboratoryOrderOutcome.fsh',
    'SEEHDSLMCareDocumentationV21': 'TKB_clinicalprocess_healthcond_description/versions/2.1.19/input/fsh/logical-models/GetCareDocumentation.fsh',
    'SEEHDSLMCareContactsV20': 'TKB_clinicalprocess_logistics_logistics/versions/2.0.7/input/fsh/logical-models/GetCareContacts.fsh',
    'SEEHDSLMObservationsV12': 'TKB_clinicalprocess_healthcond_basic/input/fsh/logical-models/GetObservations.fsh',
    'SEEHDSLMAccessLogV11': 'TKB_ehr_log/input/fsh/logical-models/GetAccessLogsForPatient.fsh',
}


# Stavfel i XSD:erna som IG:ns modeller behåller (XML:en måste använda dem) men tkb-converter rättar.
TYPOS = {'dissentintopinion': 'dissentingopinion', 'accessslogs': 'accesslogs'}


def key(p):
    return '.'.join(TYPOS.get(s, s) for s in p.lower().replace('rivid', 'id').split('.'))


def compare(model, other):
    _, a, _ = parse(os.path.join(args.models, model + '.fsh'))
    _, b, _ = parse(os.path.join(args.tkbconv, 'igs', other))
    leafy = {k for k, v in b.items() if v['type'] not in ('BackboneElement', 'Element')}
    B = {key(k): v for k, v in b.items() if v['card'] != '0..0' and not any(k.startswith(x + '.') for x in leafy)}
    A = {key(k): (k, v) for k, v in a.items() if v['card'] != '0..0'}
    if not set(A) & set(B):                       # IG:ns modell har en extra rotnivå
        A = {k.split('.', 1)[1]: x for k, x in A.items() if '.' in k}

    memo = {}
    def match(k):
        if k in memo: return memo[k]
        if k in B: r = k
        else:
            par, _, leaf = k.rpartition('.')
            pp = match(par) if par else ''
            c = [x for x in B if pp is not None and x.rpartition('.')[0] == pp and x.rpartition('.')[2].endswith(leaf)]
            if len(c) > 1:                        # exakt namn, annars t.ex. observation.time -> observationTime
                c = [x for x in c if x.rpartition('.')[2] == leaf] or \
                    [x for x in c if x.rpartition('.')[2] == par.rpartition('.')[2] + leaf]
            r = c[0] if len(c) == 1 else None
        memo[k] = r
        return r

    only_ig, cards, hit = [], [], set()
    for k, (p, v) in A.items():
        t = match(k)
        if t is None:
            only_ig.append(p)
        else:
            hit.add(t)
            if B[t]['card'] != v['card']:
                cards.append((p, v['card'], B[t]['card']))
    # Under en RIV-TA-datatyp i IG:ns modell finns inga element att jämföra med.
    dt = {match(k) for k, (p, v) in A.items() if v['type'].startswith('SEEHDSRiv')} - {None}
    only_tc = [k for k in B if k not in hit and not any(k.startswith(d + '.') for d in dt)]
    only_ig = [p for p in only_ig if not any(p.startswith(q + '.') for q in only_ig)]
    only_tc = [p for p in only_tc if not any(p.startswith(q + '.') for q in only_tc)]
    return len(hit), only_ig, only_tc, cards


for model, other in PAIRS.items():
    n, oi, ot, cd = compare(model, other)
    print(f'{model:36} matchade {n:3}  bara IG {len(oi):2}  bara tkb-converter {len(ot):2}  olika kardinalitet {len(cd):2}')
    for p in oi: print(f'    bara IG              {p}')
    for p in ot: print(f'    bara tkb-converter   {p}')
    for p, x, y in cd: print(f'    kardinalitet         {p}  IG {x}  tkb-converter {y}')
