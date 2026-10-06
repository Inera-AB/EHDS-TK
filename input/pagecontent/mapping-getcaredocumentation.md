# GetCareDocumentation – Journalanteckningar

**Tjänstekontrakt:** `clinicalprocess:healthcond:description` GetCareDocumentation v3.0  
**FHIR-profil:** [SEEHDSDocumentReference](StructureDefinition-SEEHDSDocumentReference.html)  
**Logisk modell:** [SEEHDSLMCareDocumentation](StructureDefinition-SEEHDSLMCareDocumentation.html)  
**Krävs för NPÖ:** Ja (v3.0) | **Krävs för 1177 Journal:** Ja (v3.0)  
**EHDS-koppling:** Journalanteckningar – kan bidra till discharge report eller dokumentationsunderlag; bredare än EHDS discharge reports

---

> **VIKTIGT – JoL-header v2.2 (inte PatientSummaryHeader)**
>
> GetCareDocumentation v3.0 använder **JoL-header v2.2**, inte det vanliga
> `PatientSummaryHeader`-mönstret. PDL-fälten för Sparr kommer **direkt från
> `accessControlHeader`**, inte från ett nästlat `accountableHealthcareProfessional`-block.
> Se DES-005 i [mapping-issues](mapping-issues.html).
>
> - Yttre Sparr: `careDocumentation.header.accessControlHeader.accountableHealthcareProvider`
> - Inre Sparr: `careDocumentation.header.accessControlHeader.accountableCareUnit`

---

## Resurshierarki

```
SEEHDSDocumentReference (1 per careDocumentation)
  └── author → PractitionerRole (header.author)
  └── authenticator → PractitionerRole (header.signature)
  └── content[0].attachment (XOR: clinicalDocumentNoteText eller multimediaEntry)
SEEHDSCompositionCareDocumentation (valfri, 0..1 per careDocumentation – endast när innehållet är DocBook, se DOC-004)
  └── section[] (en per DocBook-<section>)
```

Varje `careDocumentation`-post ger upphov till en `DocumentReference`. Kroppen är ett
XOR-fält: antingen `clinicalDocumentNoteText` (fritext) eller `multimediaEntry` (binärdata
eller URL) – se Härledda fält nedan.

---

## Mappningstabell – careDocumentation.header (JoL-header v2.2)

### accessControlHeader

| RIVTA-element | Kard. | FHIR-element | Kommentar |
|---|---|---|---|
| `careDocumentation.header.accessControlHeader.patientId.extension` | 1..1 | `DocumentReference.subject.identifier.value` | Personnummer eller samordningsnummer; `reference` till SEEHDSPatient + `identifier`, se [GENERAL-006](mappings.html#patientreferens) |
| `careDocumentation.header.accessControlHeader.patientId.root` | 1..1 | `DocumentReference.subject.identifier.system` | OID→URI, se tabell nedan |
| `careDocumentation.header.accessControlHeader.accountableHealthcareProvider` | 0..1 | `Provenance.agent[custodian].who.identifier` | **Yttre Sparr** – vårdgivarens HSA-id (direkt i accessControlHeader, inte under author-blocket) |
| `careDocumentation.header.accessControlHeader.accountableCareUnit` | 0..1 | `Provenance.agent[author].who.identifier` | **Inre Sparr** – vårdenhetens HSA-id (direkt i accessControlHeader) |
| `careDocumentation.header.accessControlHeader.careProcessId` | 0..1 | `DocumentReference.context.related[0].identifier` | Referens till individanpassad vårdprocess |
| `careDocumentation.header.accessControlHeader.blockComparisonTime` | 1..1 | `DocumentReference.extension[blockComparisonTime]` | Tidpunkt för Sparr-jämförelse; YYYYMMDDHHMMSS → ISO 8601 (Europe/Stockholm), se [GENERAL-001](#öppna-frågor) |
| `careDocumentation.header.accessControlHeader.approvedForPatient` | 1..1 | `DocumentReference.meta.security` | PDL-kontroll – se [PDL-001](#öppna-frågor) |

### sourceSystemId och record

| RIVTA-element | Kard. | FHIR-element | Kommentar |
|---|---|---|---|
| `careDocumentation.header.sourceSystemId` | 1..1 | `DocumentReference.meta.source` | Format: `https://tjanstekatalogen.inera.se/Endpoint/{hsaId}` (root = HSA-id för källsystemet) |
| `careDocumentation.header.record.recordId` | 1..1 | `DocumentReference.masterIdentifier` | Källsystemets primärnyckel; unik och beständig identifierare |
| `careDocumentation.header.record.timestamp` | 1..1 | `DocumentReference.date`; även `Provenance.recorded` om `author.timestamp` saknas | Tidpunkt då journalposten skapades; YYYYMMDDHHMMSS → ISO 8601 (Europe/Stockholm), se [GENERAL-001](#öppna-frågor). Fallback för `Provenance.recorded`, se [DOC-002](#beslutade-issues) |

### author (dokumentationsansvarig)

| RIVTA-element | Kard. | FHIR-element | Kommentar |
|---|---|---|---|
| `careDocumentation.header.author.authorId` | 0..1 | `DocumentReference.author[0]` (Reference(PractitionerRole)) | Författarens HSA-id; logisk referens |
| `careDocumentation.header.author.name` | 0..1 | `PractitionerRole.practitioner.display` | Författarens visningsnamn |
| `careDocumentation.header.author.timestamp` | 1..1 (om author) | `Provenance.recorded` | Tidpunkt då journalinformationen skapades av författaren; YYYYMMDDHHMMSS → ISO 8601. Saknas `author` används `record.timestamp`, se [DOC-002](#beslutade-issues) |
| `careDocumentation.header.author.byRole` | 0..1 | `PractitionerRole.code` | Yrkesroll för författaren |
| `careDocumentation.header.author.orgUnit.orgUnitHSAId` | 0..1 | `PractitionerRole.organization.identifier.value` | HSA-id för organisationsenhet som författaren är uppdragstagare i |
| `careDocumentation.header.author.orgUnit.orgUnitName` | 0..1 | `PractitionerRole.organization.display` | Namn på organisationsenhet som författaren är uppdragstagare i |

### signature (signeringsinformation)

| RIVTA-element | Kard. | FHIR-element | Kommentar |
|---|---|---|---|
| `careDocumentation.header.signature.signatureId` | 0..1 | `DocumentReference.authenticator` (Reference(PractitionerRole)) | Signerarens HSA-id; logisk referens |
| `careDocumentation.header.signature.name` | 0..1 | `PractitionerRole.practitioner.display` | Signerarens visningsnamn |
| `careDocumentation.header.signature.timestamp` | 0..1 | `DocumentReference.extension[ext-signature-time].valueDateTime` | Signeringstidpunkt; YYYYMMDDHHMMSS → ISO 8601. Extensionen ([ext-signature-time](StructureDefinition-ext-signature-time.html)) sätts endast när värdet finns – ingen ersättning annars, se [DOC-003](#beslutade-issues) |
| `careDocumentation.header.signature.byRole` | 0..1 | `PractitionerRole.code` | Yrkesroll för signeraren |

---

## Mappningstabell – careDocumentation.body

### Klassificering och titel

| RIVTA-element | Kard. | FHIR-element | Kommentar |
|---|---|---|---|
| `careDocumentation.body.clinicalDocumentNoteCode` | 1..1 | `DocumentReference.type` | Anteckningstyp; kodsystem ClinicalDocumentNoteCodeCS (OID 1.2.752.129.2.2.2.11) – se värdegrupptabell nedan |
| `careDocumentation.body.clinicalDocumentNoteTitle` | 0..1 | `DocumentReference.description` | Anteckningens titel (fritext) |

#### Värdegrupptabell – clinicalDocumentNoteCode

| Kod | Beskrivning | Anteckningstyp |
|---|---|---|
| `utr` | Utredning/planering | Planeringsanteckning |
| `atb` | Åtgärdsbeskrivning | Åtgärdsanteckning |
| `sam` | Sammanfattning | Sammanfattande anteckning |
| `sao` | Samordnad bedömning | Samordningsanteckning |
| `ins` | Inskrivning | Inskrivningsanteckning |
| `slu` | Slutanteckning | Utskrivningsanteckning |
| `auf` | Akutanteckning/frisk | Akutanteckning |
| `sva` | Specialistvårdsanteckning | Specialistanteckning |
| `bes` | Besöksanteckning | Besöksanteckning |

### Innehåll – XOR: clinicalDocumentNoteText eller multimediaEntry

Exakt ett av `clinicalDocumentNoteText` och `multimediaEntry` ska förekomma per post (se FSH Invariant `getcaredocumentation-body-xor`).

| RIVTA-element | Kard. | FHIR-element | Kommentar |
|---|---|---|---|
| `careDocumentation.body.clinicalDocumentNoteText` | 0..1 | `DocumentReference.content[0].attachment.data` | Journalanteckning (string). Fritext: base64 med `contentType: text/plain; charset=utf-8`. DocBook-XML: transformeras till XHTML och kodas base64 med `contentType: text/html; charset=utf-8` (Strategi A), och kan dessutom mappas till en `Composition` med en sektion per DocBook-sektion (Strategi B). Se [DocBook-mappning](guidance-docbook-narrative.html). XOR med multimediaEntry |
| `careDocumentation.body.multimediaEntry.mediaType` | 1..1 (om multimediaEntry) | `DocumentReference.content[0].attachment.contentType` | MIME-typ (t.ex. `application/pdf`, `image/jpeg`) |
| `careDocumentation.body.multimediaEntry.value` | 0..1 (XOR) | `DocumentReference.content[0].attachment.data` | Binärdata (base64-kodat). Ömsesidigt uteslutande med reference (se FSH Invariant `getcaredocumentation-multimedia-xor`) |
| `careDocumentation.body.multimediaEntry.reference` | 0..1 (XOR) | `DocumentReference.content[0].attachment.url` | URL till externt dokument. Ömsesidigt uteslutande med value |

### dissentingOpinion (avvikande mening)

| RIVTA-element | Kard. | FHIR-element | Kommentar |
|---|---|---|---|
| `careDocumentation.body.dissentingOpinion[i].opinionId` | 0..1 | `DocumentReference.extension[dissentingOpinion][i].opinionId` | Avvikande meningens identifierare |
| `careDocumentation.body.dissentingOpinion[i].authorTime` | 1..1 | `DocumentReference.extension[dissentingOpinion][i].authorTime` | Tidpunkt för avvikande mening; YYYYMMDDHHMMSS → ISO 8601 |
| `careDocumentation.body.dissentingOpinion[i].opinion` | 1..1 | `DocumentReference.extension[dissentingOpinion][i].opinion` | Text för avvikande mening |
| `careDocumentation.body.dissentingOpinion[i].personId` | 1..1 | `DocumentReference.extension[dissentingOpinion][i].personId` | Identifierare för personen med avvikande mening |
| `careDocumentation.body.dissentingOpinion[i].personName` | 1..1 | `DocumentReference.extension[dissentingOpinion][i].personName` | Namn på personen med avvikande mening |

> **Obs:** `dissentingOpinion` saknar standard FHIR R4-element i DocumentReference.
> Custom extension `https://fhir.inera.se/StructureDefinition/dissenting-opinion` krävs med
> delfälten `opinionId`, `authorTime`, `opinion`, `personId`, `personName`.

---

## Mappningstabell – hasMore (paginering, toppnivå)

`hasMore 0..*` är ett toppnivåelement i responsen (parallellt med `careDocumentation` och `result`)
och indikerar att ytterligare data kan hämtas.

| RIVTA-element | Kard. | FHIR-element | Kommentar |
|---|---|---|---|
| `hasMore[i].logicalAddress` | 1..1 | Ej mappad | Stöds inte av IG:n; paginering hanteras utanför IG:n – se [DOC-001](#beslutade-issues) |
| `hasMore[i].reference` | 1..1 | Ej mappad | Stöds inte av IG:n; paginering hanteras utanför IG:n – se [DOC-001](#beslutade-issues) |

---

## Mappningstabell – result (tekniska svarsfält)

`result 1..1` innehåller teknisk statusinformation som hanteras av transportlagret och inte
ingår i klinisk FHIR-data. OBS: GetCareDocumentation v3.0 använder `resultText` (ej `message`
och `logId` som i PatientSummaryHeader-baserade TK:er).

| RIVTA-element | Kard. | FHIR-element | Kommentar |
|---|---|---|---|
| `result.resultCode` | 1..1 | Ej mappad | Teknisk responskod (OK/INFO/ERROR) – hanteras av transportlagret |
| `result.resultText` | 0..1 | Ej mappad | Teknisk felbeskrivning – hanteras av transportlagret |

---

## Härledda fält / Designbeslut

### DocumentReference.status

`careDocumentation.body` innehåller inget statusfält. `DocumentReference.status` sätts alltid
till `current` – antagandet är att tjänsten returnerar aktiva, giltiga journalanteckningar.
Makulerade anteckningar förväntas inte returneras av källsystemet.

### XOR-villkor för body-innehåll

Exakt ett av `clinicalDocumentNoteText` och `multimediaEntry` ska förekomma per post (FSH
Invariant `getcaredocumentation-body-xor`). Inom `multimediaEntry` är `value` och `reference`
ömsesidigt uteslutande (FSH Invariant `getcaredocumentation-multimedia-xor`):

```
invariant: getcaredocumentation-body-xor
description: "Antingen clinicalDocumentNoteText eller multimediaEntry ska anges, ej båda"
expression: "clinicalDocumentNoteText.exists() xor multimediaEntry.exists()"

invariant: getcaredocumentation-multimedia-xor
description: "Antingen value eller reference ska anges i multimediaEntry, ej båda"
expression: "value.exists() xor reference.exists()"
```

### dissentingOpinion

Det finns inget standardiserat FHIR R4-element för avvikande meningar i `DocumentReference`.
Custom extension `https://fhir.inera.se/StructureDefinition/dissenting-opinion` definieras
med delfälten `opinionId`, `authorTime`, `opinion`, `personId`, `personName`.

### hasMore (paginering)

`hasMore 0..*` är ett toppnivåelement parallellt med `careDocumentation` och `result` i
responsstrukturen (inte under body) och indikerar att svaret är paginerat. Paginering via
`hasMore` **stöds inte** av denna IG och mappas inte till FHIR. Den behöver hanteras utanför
IG:n. Se [DOC-001](#beslutade-issues).

### clinicalDocumentNoteText och DocBook

`clinicalDocumentNoteText` är av typen string. När DocBook används ska fältet innehålla XML.
Eftersom XML:en ligger inuti ett XML-element måste XML-tecknen entity-kodas. DocBook i
textfältet känns igen på den entity-kodade XML:en, medan DocBook i en bilaga känns igen på
`multimediaEntry.mediaType`.

DocBook förs **inte** över som DocBook till FHIR:

| Innehåll | Mappning |
|---|---|
| Fritext | `content[0].attachment` med `contentType: text/plain; charset=utf-8` |
| DocBook – Strategi A (obligatorisk) | Transformeras till XHTML i `content[0].attachment` med `contentType: text/html; charset=utf-8` |
| DocBook – Strategi B (valfri) | Dessutom en `Composition` enligt [SEEHDSCompositionCareDocumentation](StructureDefinition-SEEHDSCompositionCareDocumentation.html) med en `section` per DocBook-`<section>`, kopplad via `Provenance.target` |
| Bilaga (`multimediaEntry`) med `mediaType` `application/docbook+xml` | Transformeras på samma sätt som DocBook i textfältet |

Avkodning, identifiering av DocBook, elementmappning, exempel och begränsningar beskrivs på
undersidan [DocBook-mappning](guidance-docbook-narrative.html). Se även [DOC-004](#beslutade-issues).

---

## PDL och Sparr

GetCareDocumentation använder JoL-header v2.2. PDL-fälten för Sparr hämtas **direkt från
`accessControlHeader`** – inte från ett `accountableHealthcareProfessional`-block som i
PatientSummaryHeader-baserade TK:er (DES-005):

| PDL-begrepp | RIVTA-källa | Hantering |
|---|---|---|
| Yttre Sparr (vårdgivare) | `careDocumentation.header.accessControlHeader.accountableHealthcareProvider` | `Provenance.agent[custodian].who.identifier` |
| Inre Sparr (vårdenhet) | `careDocumentation.header.accessControlHeader.accountableCareUnit` | `Provenance.agent[author].who.identifier` |
| Patientgodkännande | `careDocumentation.header.accessControlHeader.approvedForPatient` (boolean) | `DocumentReference.meta.security`; se [PDL-001](#öppna-frågor) |

---

## Provenance

| Agent | Roll | Källa |
|---|---|---|
| `agent[custodian]` | Juridiskt ansvarig vårdgivare | `careDocumentation.header.accessControlHeader.accountableHealthcareProvider` |
| `agent[author]` | Informationsägande vårdenhet | `careDocumentation.header.accessControlHeader.accountableCareUnit` |

`Provenance.target` refererar `DocumentReference` via `urn:uuid:{resurs.id}`, och även `Composition` när en sådan skapas (DOC-004, Strategi B).  
`Provenance.recorded` = `careDocumentation.header.author.timestamp` (ISO 8601). Om `author` saknas används `careDocumentation.header.record.timestamp` som fallback (DOC-002).

---

## OID-till-URI-tabell

| OID | URI |
|---|---|
| `1.2.752.129.2.1.3.1` | `http://electronichealth.se/identifier/personnummer` |
| `1.2.752.129.2.1.3.3` | `http://electronichealth.se/identifier/samordningsnummer` |
| `1.2.752.129.2.1.4.1` | `urn:oid:1.2.752.29.4.19` |

OID:er utan känd URI-mappning bevaras som `urn:oid:{oid}`.

---

## Öppna frågor

| ID | Fråga |
|---|---|
| PDL-001 | **`approvedForPatient` (boolean) saknar standardiserat FHIR-kodsystem.** Fältet finns i `accessControlHeader` men `meta.security` i FHIR har inget standardkodsystem för detta begrepp. Behöver gemensamt beslut; se central issue i [mapping-issues](mapping-issues.html). |
| GENERAL-001 | **Beslutat – tidszon.** RIVTA-tidsstämplar tolkas som lokal tid i `Europe/Stockholm` (sommartid beaktas). `dateTime` får explicit offset (`+01:00`/`+02:00`); `instant` anger samma tidpunkt, helst med samma offset-form. Se [Tidsstämplar och tidszon](mappings.html#tidszon). |

## Beslutade issues

| ID | Beslut |
|---|---|
| DOC-001 | **Paginering via `hasMore` stöds inte.** `hasMore` mappas inte till FHIR och behöver hanteras utanför IG:n. |
| DOC-002 | **`Provenance.recorded` faller tillbaka på `header.record.timestamp`.** `Provenance.recorded` = `header.author.timestamp`; när `author` (och därmed `author.timestamp`) saknas används `header.record.timestamp`. |
| DOC-003 | **`signature.timestamp` → `DocumentReference.extension[ext-signature-time]`** när den finns. När den saknas sätts ingen ersättning. |
| DOC-004 | **`clinicalDocumentNoteText` är av typen string.** När DocBook används ska fältet innehålla XML, och XML-tecknen måste då entity-kodas. DocBook förs inte över till FHIR. Innehållet transformeras till XHTML i `content.attachment` med `contentType: text/html; charset=utf-8` (Strategi A, obligatorisk). Det kan dessutom mappas till en `Composition` med en sektion per DocBook-sektion, kopplad via `Provenance.target` (Strategi B, valfri). Fritext mappas som `text/plain`. Se [DocBook-mappning](guidance-docbook-narrative.html). |
