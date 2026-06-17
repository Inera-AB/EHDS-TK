**Instruktion: Mappning av RIVTA-tjänstekontrakt till FHIR
1. Förberedelse
Innan du börjar behöver du:

Tjänstekontraktets WSDL/XSD och beskrivning från Ineras tjänstekatalog
Motsvarande FHIR R4-resurstyp (t.ex. Condition, MedicationStatement, AllergyIntolerance)
EU EPS obligations-profilen för resursen (t.ex. condition-obl-eu-eps från hl7.fhir.eu.eps)
Svenska basprofilerna (HL7 Sweden basprofiler-r4) för Patient, Practitioner, Organization
2. EU EPS-profilen som grund
Identifiera EU EPS obligations-profilen för resursen. Den finns i paketet hl7.fhir.eu.eps och heter typiskt {resource}-obl-eu-eps.
Profilen ska bära båda profilerna i meta.profile: vår EHDS-brygga-profil OCH EU EPS-profilen.
Obligatoriska element i EU EPS-profilen (SHALL/MUST-krav) ska alltid sättas.
Frivilliga element i EU EPS-profilen (t.ex. rekommenderade kodverk, extensions, slicings) ska nyttjas om tjänstekontraktet innehåller semantiskt motsvarande data.
3. Terminologi och kodverk
3a. Officiella URL:ar
Alla kodverk från tjänstekontrakt ska använda sina officiella URL:ar — inte OID:ar som urn:oid:.... Hämta rätt URL från:

https://terminologitjansten.inera.se — Ineras egna kodverk (t.ex. kv_diagnostyp)
https://www.icd10.se/ — ICD-10-SE
http://snomed.info/sct|http://snomed.info/sct/45991000052106 — SNOMED CT SE
http://loinc.org — LOINC
3b. Slicings vid överlappning med FHIR-standardvärden
Om FHIR-resursen har ett obligatoriskt eller rekommenderat valueset (t.ex. encounter-diagnosis i Condition.category): skapa en slicing där det svenska kodverket utgör ett eget snitt (category[{kodverksnamn}]). Standardbindningen och det svenska snittet kan samexistera.
Om FHIR-resursen saknar fast binding på elementet: det svenska kodverket ersätter exemplet direkt, ingen slicing behövs.
3c. Namngivning av ValueSet och CodeSystem
ValueSet och CodeSystem ska namnges efter kodverket, t.ex. SEDiagnosisTypeVS för kv_diagnostyp.
CodeSystem med extern officiell URL definieras som Instance: … InstanceOf: CodeSystem (SUSHI v3.20 hanterar annars ^url felaktigt på CodeSystem:-syntax).
4. Profildefinition (FSH)
4a. Identifiering
Profile: SE{Resurstyp}
Parent: {Resurstyp}
Id: se-ehds-{resurstyp-kebab}
canonical: https://fhir.inera.se (auto-genererat från sushi-config.yaml)
4b. Must Support och beskrivning
Varje element som mappas från tjänstekontraktet ska:

Märkas MS (Must Support)
Ha ^short med beskrivning och ursprungsfältets namn från tjänstekontraktet, t.ex.:
* code MS
* code ^short = "Diagnoskod (diagnosisCode från RIVTA), ICD-10-SE eller SNOMED CT"
4c. Kardinalitet
Om tjänstekontraktet kräver ett fält (t.ex. 1..1 eller 1..*) ska profilen skärpa FHIR:s kardinalitet i enlighet med detta.

4d. Inera-specifika extensions
Använd befintliga HL7/IPS/EU EPS-extensions före Inera-egna.
Skapa Inera-extensions enbart när det saknas semantisk ekvivalent i etablerade profiler.
Om en extension behöver skapas: definiera den med ^url = "https://fhir.inera.se/StructureDefinition/{id}" (auto-genererat via SUSHI för Extension:-syntax).
5. PatientSummaryHeader-mappning
Alla tjänstekontrakt som bär PatientSummaryHeader mappas enligt detta fasta mönster:

Header-fält	FHIR-destination	Syfte
careProviderHSAId	Provenance.agent[custodian].who.identifier	Juridiskt ansvarig vårdgivare — yttre Sparr
careUnitHSAId	Provenance.agent[author].who.identifier	Informationsägare vårdenhet — inre Sparr. Kan även ingå i resursens performer/participant-organisation om resursen har ett sådant fält.
sourceSystemHSAId	{Resurs}.meta.source	Källsystemets HSA-id, format urn:oid:1.2.752.129.2.1.4.1#{hsaId}
documentTime	{Resurs}.recordedDate (eller resursens primära tidsstämpel)	Konverteras från YYYYMMDDHHMMSS → ISO 8601, tolkas som Europe/Stockholm
accountableHealthcareProfessional	{Resurs}.author som Reference(PractitionerRole) — logisk referens via HSA-id	Ansvarig hälso- och sjukvårdspersonal
legalAuthenticator	{Resurs}.asserter (om resursen har asserter) som Reference(PractitionerRole)	Rättslig äkthetsintygsgivare; datum läggs i extension assertedDate
patientId	{Resurs}.subject.identifier	Personnummer/samordningsnummer via OID→URI-konvertering
PractitionerRole för accountableHealthcareProfessional och legalAuthenticator uttrycks som logisk referens:

"author": [{ "identifier": { "system": "urn:oid:1.2.752.129.2.1.4.1", "value": "{hsaId}" } }]
Provenance skapas alltid per resurs med tre agenter:

Agent	Roll	Källa
agent[0]	custodian	careProviderHSAId
agent[1]	author	careUnitHSAId
agent[2]	assembler	EHDS_BRIDGE_HSA_ID (env-variabel)
Provenance.target refererar resursen via urn:uuid:{resurs.id}. Provenance inkluderas i sökbundeln med searchMode = include.

6. Patient, Practitioner, Organization
Följ HL7 Sweden basprofiler-r4 för:

Patient: identifier-slicing för personnummer (http://electronichealth.se/identifier/personnummer) och samordningsnummer
Practitioner/PractitionerRole: identifier för HSA-id (urn:oid:1.2.752.129.2.1.4.1 Inera NTjP eller urn:oid:1.2.752.29.4.19 HL7 Sweden)
Organization: identifier för HSA-id på samma sätt
OID→URI-konverteringen sköts av NamingSystemRegistry. Okända OID:ar bevaras som urn:oid:{oid}.

7. Leverabler per tjänstekontrakt
Artefakt	Syfte
input/fsh/profiles/SEEHDS{Resurs}.fsh	Profil med Must Support, kardinalitet, slicings, shorttext
input/fsh/codesystems/{KodverksNamn}CS.fsh	Instance-syntax CodeSystem om extern URL krävs
input/fsh/valuesets/{KodverksNamn}VS.fsh	ValueSet som inkluderar koderna
input/fsh/conceptmaps/{Mappning}Map.fsh	ConceptMap om kodvärden måste transformeras
input/pagecontent/mapping-{kontraktnamn}.md	Mappningstabell, OID-tabell, Provenance-tabell, Sparr-noter, PoC-begränsningar
input/pagecontent/naming-systems.md	Uppdatera om nya OID:ar tillkommer
input/includes/menu.xml	Lägg till sida under "Mappningar"-dropdown
sushi-config.yaml	Lägg till ny sida under pages:
8. Checklista innan commit
not done
SUSHI ger 0 errors (warning om ig.ini är ok om du vet varför)
not done
meta.profile innehåller både vår profil och EU EPS-profilen
not done
Alla mappade fält har MS och ^short med RIVTA-fältnamn
not done
Inga ^url-overrides på CodeSystem:-syntax (använd Instance-syntax)
not done
Alla kodverk-URL:ar är officiella (inte urn:oid:)
not done
Provenance-mönstret är implementerat
not done
Mappningssida finns och innehåller: mappningstabell, OID-tabell, Provenance-tabell, Sparr-noter
