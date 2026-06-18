# Sökparametrar – RIVTA inparametrar och FHIR Search API

## Bakgrund

RIVTA-tjänstekontrakt definierar en **begärantyp** (`GetXxxType`) med obligatoriska och valfria inparametrar som filtrerar vilka poster som returneras. När kontrakten exponeras via ett FHIR-API ersätts dessa inparametrar av FHIR:s standardiserade sökparametrar (`_search`).

Denna sida kartlägger varje RIVTA-inparameter mot lämplig FHIR-sökparameter och redovisar parametrar som saknar direkt FHIR-motpart.

> **Avgränsning:** Sidan behandlar *frågesidan* (request). Svarsstrukturen täcks av de logiska modellerna och mappningssidorna.

---

## Gemensamma parametrar

| RIVTA-inparameter | Kard. | FHIR-sökparameter | Typ | Kommentar |
|---|---|---|---|---|
| `subjectOfCareId` | 1..1 | `patient` | reference/token | Personnummer eller samordningsnummer. I FHIR anges identifierarsystem och värde: `patient.identifier=http://electronichealth.se/identifier/personnummer\|191212121212` |
| `sourceSystemHSAId` | 0..1 | Ej tillämplig | – | Se resonemang nedan. |

### Resonemang – subjectOfCareId

`subjectOfCareId` är obligatorisk i alla RIVTA-kontrakt och anger patienten vars data ska returneras. I FHIR är `patient` ett standardiserat sökfält på alla patientcentrerade resurser. För exakt matchning på personnummer bör sökparametern kombineras med identifierarsystemet:

```
GET /Condition?patient.identifier=http://electronichealth.se/identifier/personnummer|191212121212
```

Alternativt, om en intern Patient-resurs skapas med identifieraren länkad, räcker `patient={id}`.

### Resonemang – sourceSystemHSAId (ej tillämplig i FHIR-kontext)

`sourceSystemHSAId` existerar i RIVTA-kontrakten för att hantera tjänsteplattformens standardbeteende: en fråga förgrenas automatiskt till alla regioners bakändessystem och svaren aggregeras ihop. Parametern gör det möjligt att begränsa denna fan-out till ett specifikt källsystem.

I ett FHIR-API anropas en specifik endpoint direkt — det sker ingen fan-out. Källsystemet är därmed implicit givet av den endpoint man anropar, och `sourceSystemHSAId` behöver ingen FHIR-sökparametermotpart. Parametern lämnas utan mappning.

---

## Sammanfattning per tjänstekontrakt

`sourceSystemHSAId` förekommer som valfri inparameter i alla TKBs men har ingen FHIR-sökparametermotpart (se resonemang ovan) och är utesluten ur tabellen nedan.

| Tjänstekontrakt | Obligatorisk | Relevanta valfria FHIR-sökparametrar | Anmärkning |
|---|---|---|---|
| GetDiagnosis | `subjectOfCareId` | – | Inga extra parametrar |
| GetAlertInformation | `subjectOfCareId` | – | Inga extra parametrar |
| GetMedicationHistory | `subjectOfCareId` | – | Inga extra parametrar |
| GetVaccinationHistory | `subjectOfCareId` | – | Inga extra parametrar |
| GetFunctionalStatus | `subjectOfCareId` | – | Inga extra parametrar |
| GetMaternityMedicalHistory | `subjectOfCareId` | – | Inga extra parametrar |
| GetCarePlans | `subjectOfCareId` | – | Inga extra parametrar |
| GetCareContacts | `subjectOfCareId` | `careUnitHSAId`, `fromDateTime`, `toDateTime` | Datumfilter + vårdenhet |
| GetCareDocumentation | `subjectOfCareId` | `careUnitHSAId`, `fromDateTime`, `toDateTime` | Datumfilter + vårdenhet; paginering via `hasMore` i svar |
| GetLaboratoryOrderOutcome | `subjectOfCareId` | – | Inga extra parametrar |
| GetImagingOutcome | `subjectOfCareId` | – | Inga extra parametrar |
| GetReferralOutcome | `subjectOfCareId` | – | Inga extra parametrar |
| GetRequestActivities | `subjectOfCareId` | `fromDate`, `toDate` | Datumfilter |
| GetObservations | `subjectOfCareId` | `careUnitHSAId`, `observationCode` | Kodfilter på observationstyp |
| GetAccessLogForPatient | `subjectOfCareId` | `careGiverId`, `fromDate`, `toDate` | Datumfilter + vårdgivare |

---

## Detaljerade mappningar – TK-specifika parametrar

### GetCareContacts och GetCareDocumentation – datumintervall och vårdenhet

Dessa två kontrakt delar mönstret med `fromDateTime`/`toDateTime` och `careUnitHSAId`.

#### fromDateTime / toDateTime → `date`

| RIVTA-inparameter | FHIR-sökparameter | Resurs | Kommentar |
|---|---|---|---|
| `fromDateTime` | `date=ge{datum}` | `Encounter`, `DocumentReference` | FHIR `date`-parametern stöder prefixoperatorer: `ge` (≥), `le` (≤), `gt`, `lt` |
| `toDateTime` | `date=le{datum}` | `Encounter`, `DocumentReference` | Kombineras med `fromDateTime` för intervallsökning |

Exempel för GetCareContacts:
```
GET /Encounter?patient.identifier=...&date=ge2024-01-01&date=le2024-12-31
```

`date`-parametern på `Encounter` söker på `Encounter.period` (start och end), vilket stämmer med `careContactTimePeriod` i TKB. För `DocumentReference` söker `date` på `DocumentReference.date` (publiceringstidpunkt), vilket motsvarar `careDocumentation.header.record.timestamp`.

> **OBS:** RIVTA-kontrakten använder formatet `YYYYMMDDhhmmss`; FHIR kräver ISO 8601. Bryggan måste konvertera formaten.

#### careUnitHSAId

| RIVTA-inparameter | FHIR-sökparameter | Kommentar |
|---|---|---|
| `careUnitHSAId` | Ingen direkt standard | `careUnitHSAId` lagras i `Provenance.agent[author].who.identifier`, inte på resursen själv |

`careUnitHSAId` filtrerar i RIVTA på vårdenhet via Sparr-strukturen. I FHIR-mappningen hamnar detta i `Provenance`, inte på huvud-resursen (Encounter/DocumentReference). Det finns inget standardiserat sökfält för att filtrera resurser efter vilken vårdenhet som producerade dem via Provenance.

Alternativa strategier:
1. **Anpassad sökparameter** (rekommenderas): Definiera en `SearchParameter` som söker på `Provenance?agent.who.identifier` via reverse chaining med `_has`. Exempel: `Encounter?_has:Provenance:target:agent.who.identifier=urn:oid:1.2.752.129.2.1.4.1|HSAID`. Detta kräver att servern stöder `_has` och att Provenance-resurser är konsekvent skapade.
2. **Ignorera filtret**: Returnera alla poster och låta FHIR-klienten filtrera lokalt. Acceptabelt om datamängden är liten men skalas dåligt.
3. **Uttryckt i resursen direkt**: Lagra en kopia av `careUnitHSAId` som ett `identifier` eller `extension` på huvud-resursen och definiera en sökparameter mot det. Tillför redundans men förenklar sökning.

> **Beslut saknas (SP-001):** Valet av strategi för `careUnitHSAId`-filtrering är öppet.

---

### GetObservations – observationskod

| RIVTA-inparameter | Kard. | FHIR-sökparameter | Resurs | Kommentar |
|---|---|---|---|---|
| `observationCode` | 0..1 | `code` | `Observation` | Filtrerar på observationstyp (CVType: code + codeSystem). Sökvärde: `code=http://snomed.info/sct\|{snomedkod}` |

`observationCode` i GetObservations är en CVType med `code` och `codeSystem`. I FHIR-mappningen hamnar detta i `Observation.code.coding`. FHIR:s `code`-sökparameter söker på `code.coding.code` kombinerat med system:

```
GET /Observation?patient.identifier=...&code=http://snomed.info/sct|1153637007
```

Detta täcker den vanligaste användningen i IoÖ Tillväxtkurva (se `SEEHDSObservationGrowth`) där specifika SNOMED CT-koder söks. `displayName` och `originalText` i CVType är presentationsdata och inte relevanta för filtrering.

---

### GetRequestActivities – datumintervall

| RIVTA-inparameter | FHIR-sökparameter | Resurs | Kommentar |
|---|---|---|---|
| `fromDate` | `authored=ge{datum}` | `Task` | `Task.authoredOn` (tidpunkt för skapande av aktivitetsbegäran) |
| `toDate` | `authored=le{datum}` | `Task` | Kombineras med `fromDate` |

`GetRequestActivities` returnerar remisstatus och aktiviteter. I FHIR-mappningen (profil `SEEHDSTask`) är `authored` den närmaste tidssöksparametern. `Task` stöder även `modified` (senast ändrad) och `period` (period för aktiviteten) som alternativa filtreringspunkter beroende på vad `fromDate`/`toDate` faktiskt avser i TKB:n – detta bör verifieras.

---

### GetAccessLogForPatient – datumintervall och vårdgivare

| RIVTA-inparameter | Kard. | FHIR-sökparameter | Resurs | Kommentar |
|---|---|---|---|---|
| `fromDate` | 0..1 | `date=ge{datum}` | `AuditEvent` | `AuditEvent.recorded` (händelsetidpunkt) |
| `toDate` | 0..1 | `date=le{datum}` | `AuditEvent` | Kombineras med `fromDate` |
| `careGiverId` | 0..1 | Se nedan | `Provenance` | Filtrerar på ansvarig vårdgivare (Sparr-nivå yttre); lagras i Provenance, inte direkt på AuditEvent |

#### careGiverId – tre möjliga strategier

`careGiverId` i GetAccessLogForPatient avser den juridiskt ansvariga vårdgivaren (yttre Sparr-nivå), konsekvent med hur `healthcareProfessionalCareGiverHSAId` hanteras i övriga kontrakt. I FHIR-mappningen lagras detta i `Provenance.agent[custodian].who.identifier` — inte på AuditEvent direkt.

Tre strategier för att filtrera på `careGiverId` diskuteras:

**Strategi 1 – Provenance-omvänd kedja (rekommenderas som standard)**

Använd FHIR:s `_has`-parameter för att filtera `AuditEvent`-resurser vars associerade `Provenance` pekar på en viss vårdgivare:

```
GET /AuditEvent?patient.identifier=...&date=ge2024-01-01
  &_has:Provenance:target:agent.who.identifier=urn:oid:1.2.752.129.2.1.4.1|SE2321000016-AB1C
```

Kräver att servern stöder `_has` (reverse chaining) och att Provenance-resurser konsekvent skapas per AuditEvent med korrekt `agent[custodian]`. Fungerar utan serverspecifika tillägg men `_has` implementeras ej i alla FHIR-servrar.

**Strategi 2 – HSA-trädklättring**

HSA-katalogen är hierarkisk: en vårdgivare (`careGiverId`) kan ha ett eller flera hundra HSA-id:n på underordnade enheter. Idén är att bryggan, innan sökningen, slår upp alla HSA-id:n under given vårdgivare i HSA och sedan filtrerar på enhetsnivå via `_source` — det vill säga `meta.source`-URI:erna för de ingående systemen (format `urn:oid:1.2.752.129.2.1.4.1#{hsaId}`). Fördelen är att inga anpassade FHIR-parametrar behövs utöver standard `_source`; nackdelen är ett externt beroende på HSA-tjänsten och potentiellt ett stort antal enhets-HSA-id:n att söka på.

```
# Pseudokod
enhetslista = hsa.getUnitsUnder(careGiverId)
GET /AuditEvent?patient.identifier=...&_source:in={enhetslista}
```

Kräver att `_source:in` (multi-value) eller upprepade `_source`-parametrar stöds av servern. Prestanda- och träffbarhetsöverväganden tillkommer beroende på HSA-strukturens storlek. Notera att `_source` här används som intern filtermekanism i bryggan — inte som exponering av RIVTA:s `sourceSystemHSAId`-parameter, vilken inte har någon FHIR-motsvarighet (se resonemang ovan).

**Strategi 3 – Multitenant FHIR-server**

HAPI FHIR och andra servrar stöder multitenancy där varje tenant (t.ex. en vårdgivare) har en separat del i URL:en:

```
GET /{careGiverId}/fhir/AuditEvent?patient.identifier=...
```

Här är `careGiverId` implicit i URL-kontexten och behöver inte vara en sökparameter. Klienten vet vilken vårdgivare den söker mot via URL:ens bas. Fördelen är enkel söksyntax; nackdelen är att det kräver ett val av serverarkitektur och fungerar dåligt om en klient vill söka över flera vårdgivare i ett anrop.

> **Jämförelse:** Strategi 1 är mest FHIR-standard men kräver `_has`-stöd. Strategi 2 minskar FHIR-serverkraven men lägger komplexitet i bryggan och skapar HSA-beroende. Strategi 3 passar bäst om varje installation alltid representerar exakt en vårdgivare (typiskt för en brygga per region). Beslutet är arkitekturellt och beroende av val av FHIR-serverprodukt — se SP-005.

---

## Parametrar utan FHIR-sökparametermotpart

| RIVTA-inparameter | Förekommer i | Skäl | Hantering |
|---|---|---|---|
| `sourceSystemHSAId` | Alla | Konceptet finns inte i FHIR – källsystem är implicit i endpoint-URL:en | Ingen FHIR-sökparameter behövs |
| `careUnitHSAId` | GetCareContacts, GetCareDocumentation, GetObservations | Lagras i Provenance, inte direkt på resursen | Kräver implementationsbeslut (se SP-001) |
| `careGiverId` | GetAccessLogForPatient | Lagras i Provenance, inte direkt på AuditEvent | Kräver implementationsbeslut (se SP-005) |

---

## Paginering – GetCareDocumentation

GetCareDocumentation stöder implicit paginering via `hasMore`-flaggan i svaret. I FHIR hanteras paginering med `_count` och `Bundle.link[next]` (cursor-baserad eller offset-baserad beroende på server). Bryggimplementationen måste mappa RIVTA:s `hasMore`-logik till FHIR:s Bundle-pagineringsmekanism.

| RIVTA-mekanism | FHIR-ekvivalent |
|---|---|
| `hasMore = true` i svar | `Bundle.link[rel="next"]` med `_count`-parameter |
| Upprepad begäran med offset | Använd `next`-länken från föregående Bundle-svar |

---

## Öppna frågor

| ID | Fråga | Status |
|---|---|---|
| SP-001 | **`careUnitHSAId`-filtrering saknar standardlösning.** Vårdenhet lagras i Provenance, inte på huvud-resursen. Tre strategier diskuteras ovan (anpassad SP med `_has`, ignorera filter, duplicera till resurs). Kräver implementationsbeslut. | Öppen |
| SP-002 | **`sourceSystemHSAId` – ingen FHIR-sökparameter behövs.** Parametern existerar i RIVTA för tjänsteplattformens fan-out/aggregering, ett mönster som inte förekommer i FHIR. Källsystemet är implicit i endpoint-URL:en. | Stängd |
| SP-003 | **Datumparametrars semantik.** RIVTA:s `fromDateTime`/`toDateTime` avser i de flesta fall händelsetidpunkten (t.ex. `careContactTimePeriod.start`). Verifiering behövs att rätt FHIR `date`-fält söks per resurstyp (t.ex. `Encounter.period` vs. `Encounter.meta.lastUpdated`). | Öppen |
| SP-004 | **Paginering GetCareDocumentation.** RIVTA `hasMore`-flaggans exakta semantik (hur många poster per sida, max-gräns) är ej specificerad i TKB:n. Behöver klarläggas för korrekt FHIR Bundle-paginering. | Öppen |
| SP-005 | **`careGiverId`-filtrering i GetAccessLogForPatient saknar standardlösning.** Vårdgivare lagras i `Provenance.agent[custodian].who.identifier`, inte på AuditEvent direkt. Tre strategier diskuteras ovan (Provenance `_has` reverse chain, HSA-trädklättring, multitenant FHIR-server). Beslutet är arkitekturellt och beroende av val av FHIR-serverprodukt. | Öppen |
