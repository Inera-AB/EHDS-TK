# Åtkomstloggar – patientåtkomst och auditloggning i ett EHDS-kompatibelt FHIR-API

**Gäller:** EHDS-bryggor och andra FHIR-API:er som lämnar ut patientdata från RIVTA-tjänstekontrakten i denna IG  
**FHIR-resurs:** `AuditEvent` (FHIR R4)  
**Profiler:**
- [SEEHDSAuditEventReadAccessLog](StructureDefinition-SEEHDSAuditEventReadAccessLog.html) – läsning av källsystemens åtkomstloggar (GetAccessLogForPatient)
- [SEEHDSAuditEventPatientQuery](StructureDefinition-SEEHDSAuditEventPatientQuery.html) – loggpost som skapas vid sökning och träfflista (bygger på IHE BALP PatientQuery)
- [SEEHDSAuditEventPatientRead](StructureDefinition-SEEHDSAuditEventPatientRead.html) – loggpost som skapas vid innehållshämtning (bygger på IHE BALP PatientRead)

**IHE-profiler:** mXDE med basprofilerna MHD, QEDm och ATNA/BALP

---

## Patientens åtkomst till loggar via API:et {#patientatkomst}

EHDS ger patienten rätt att få veta vem som har tagit del av patientens elektroniska
patientuppgifter. I ett EHDS-kompatibelt FHIR-API tillhandahålls därför åtkomstloggar till
patienten som en del av API:et, på samma sätt som övriga patientuppgifter. Patienten (eller en
app som agerar för patienten, t.ex. 1177 Journal) hämtar loggarna som `AuditEvent`-resurser:

```
GET [base]/AuditEvent?patient.identifier=http://electronichealth.se/identifier/personnummer|191212121212&date=ge2026-01-01
```

Sökningen motsvarar ATNA ITI-81 Retrieve ATNA Audit Event. Se även
[Sökparametrar](search-parameters.html) för filtrering på datum och vårdgivare.

En fullständig bild av vem som har tagit del av patientens uppgifter består av två delar:

| Del | Var loggarna skapas | Hur de når patienten | Profil |
|---|---|---|---|
| **Källsystemens åtkomstloggar** | I journalsystemen, när vårdpersonal läser journalen direkt i källsystemet | Hämtas via RIVTA-tjänstekontraktet GetAccessLogForPatient och mappas till `AuditEvent` | [SEEHDSAuditEventReadAccessLog](StructureDefinition-SEEHDSAuditEventReadAccessLog.html), se [Läsning av källsystemens åtkomstloggar](#getaccesslogforpatient) |
| **API:ets egna loggposter** | I FHIR-API:et (t.ex. bryggan), när patientdata lämnas ut via API:et | Lagras i ett Audit Record Repository och lämnas ut via `GET [base]/AuditEvent` | [SEEHDSAuditEventPatientQuery](StructureDefinition-SEEHDSAuditEventPatientQuery.html), [SEEHDSAuditEventPatientRead](StructureDefinition-SEEHDSAuditEventPatientRead.html), se [Loggar som måste skapas](#loggar-som-maste-skapas) |

Källsystemens loggar täcker inte utlämningar som sker via API:et. Om API:et inte skapar egna
loggposter kan patienten alltså inte se att uppgifterna lämnats ut den vägen. Därför ställs
kraven i nästa avsnitt.

Patientens egen hämtning av loggar är också en utlämning av patientdata. Den ska loggas på samma
sätt som andra utlämningar, med syftet `PATRQT`.

---

## Loggar som måste skapas när API:et nyttjas {#loggar-som-maste-skapas}

**Dessa loggar måste skapas när detta API nyttjas för att kunna stödja patientåtkomsten till
loggar.** Varje gång API:et lämnar ut patientdata ska det skapa en loggpost som patienten
senare kan ta del av enligt [föregående avsnitt](#patientatkomst).

### Antaganden

EURIDICE hänvisar till IHE:s profiler för hur loggningen ska realiseras tekniskt. Denna IG gör
följande antaganden:

1. **Kravnivån är klinisk åtkomstloggning.** För FHIR-bryggor och liknande API:er motsvarar
   kraven IHE **mXDE** (Mobile Cross-Enterprise Document Data Element Extraction) och dess
   basprofiler.
2. **mXDE kombinerar tre förmågor:**

   | Profil | Förmåga | Relevans för API:et |
   |---|---|---|
   | **MHD** (Mobile access to Health Documents) | Dokumentsökning och dokumenthämtning | `DocumentReference`-sökning och hämtning av dokumentinnehåll, t.ex. [GetCareDocumentation](mapping-getcaredocumentation.html) |
   | **QEDm** (Query for Existing Data for Mobile) | Sökning i strukturerad data | Sökning efter `Condition`, `AllergyIntolerance`, `MedicationStatement`, `Immunization`, `Observation`, `Encounter` m.fl. |
   | **ATNA / BALP** (Audit Trail and Node Authentication / Basic Audit Log Patterns) | Audit-infrastruktur och FHIR-nativa `AuditEvent`-mönster | Hur varje utlämning loggas och vart loggposterna skickas |

3. **Varje utlämning av patientdata ska generera ett `AuditEvent`.** Det gäller:
   - **sökning** – en fråga om en patients uppgifter tas emot,
   - **träfflista** – resultatet av frågan lämnas ut,
   - **innehållshämtning** (framtida) – innehållet i ett enskilt dokument eller en enskild
     resurs hämtas.

4. **Varje `AuditEvent` ska fånga:**

   | Fråga | Innehåll |
   |---|---|
   | **Vem** | Användaren, applikationen (klienten) och källsystemet/noden |
   | **Varför** | Syftet med åtkomsten (purpose of use) |
   | **Vilken patient** | Patientens identitet (personnummer eller samordningsnummer) |
   | **Resultat** | Om utlämningen lyckades eller nekades/misslyckades |

### Händelser och profiler

En `AuditEvent` skapas per FHIR-interaktion som lämnar ut, eller försöker lämna ut,
patientdata.

| Händelse | FHIR-interaktion | IHE-transaktion | Profil | `type` | `subtype` | `action` |
|---|---|---|---|---|---|---|
| Sökning + träfflista, dokument | `GET [base]/DocumentReference?patient=…` | MHD ITI-67 Find Document References | [SEEHDSAuditEventPatientQuery](StructureDefinition-SEEHDSAuditEventPatientQuery.html) | `audit-event-type#rest` | `restful-interaction#search-type` och `urn:ihe:event-type-code#ITI-67` | `E` |
| Sökning + träfflista, strukturerad data | `GET [base]/Condition?patient=…` m.fl. | QEDm PCC-44 Mobile Query Existing Data | [SEEHDSAuditEventPatientQuery](StructureDefinition-SEEHDSAuditEventPatientQuery.html) | `audit-event-type#rest` | `restful-interaction#search-type` | `E` |
| Patientens hämtning av åtkomstloggar | `GET [base]/AuditEvent?patient=…` | ATNA ITI-81 Retrieve ATNA Audit Event | [SEEHDSAuditEventPatientQuery](StructureDefinition-SEEHDSAuditEventPatientQuery.html) | `audit-event-type#rest` | `restful-interaction#search-type` | `E` |
| Läsning av enskild resurs (framtida) | `GET [base]/[typ]/[id]` | – | [SEEHDSAuditEventPatientRead](StructureDefinition-SEEHDSAuditEventPatientRead.html) | `audit-event-type#rest` | `restful-interaction#read` | `R` |
| Innehållshämtning, dokument (framtida) | `GET` av `DocumentReference.content.attachment.url` | MHD ITI-68 Retrieve Document | [SEEHDSAuditEventPatientRead](StructureDefinition-SEEHDSAuditEventPatientRead.html) | `audit-event-type#rest` | `restful-interaction#read` och `urn:ihe:event-type-code#ITI-68` | `R` |

Kodsystem: `audit-event-type` = `http://terminology.hl7.org/CodeSystem/audit-event-type`,
`restful-interaction` = `http://hl7.org/fhir/restful-interaction`.

Sökning och träfflista loggas i **samma** `AuditEvent`. Frågan registreras som en
query-entity och de resurser som lämnades ut registreras som egna entities (se
[Träfflistan](#trafflistan)).

### Vad Inera-profilerna lägger till utöver BALP

Profilerna ärver från IHE BALP (`ihe.iti.balp`) och skärper följande:

| Krav | BALP | Inera-profilerna |
|---|---|---|
| Användaragent (`agent[user]`) | 0..1 | 1..1, med identifier (HSA-id eller personnummer) |
| Syfte (`purposeOfEvent`, `agent[user].purposeOfUse`) | Valfritt | Obligatoriskt |
| Källsystem/vårdgivare | – | Ny slice `agent[custodian]`, en per källsystem som bidrog |
| Loggkälla (`source.observer`) | Valfri typ | `Reference(Device)` – bryggan |
| Patient (`entity[patient].what`) | `Reference(Patient)` | `Reference(SEEHDSPatient)` |
| Träfflista | Antal och innehåll registreras inte | Varje utlämnad resurs registreras som entity (PatientQuery) |

### Vem – agenter

| Agent | `agent.type` | `agent.who` | `requestor` | Övrigt |
|---|---|---|---|---|
| **Användare** (`agent[user]`) | `v3-ParticipationType#IRCP` "information recipient" | Identifier med användarens HSA-id (`urn:oid:1.2.752.29.4.19`); för patienten själv personnummer | `true` | `role`: befattning/roll om den finns. `purposeOfUse`: se nedan |
| **Applikation** (`agent[client]`) | PatientQuery: `DCM#110153` "Source Role ID"; PatientRead: `DCM#110152` "Destination Role ID" | Identifier för klientapplikationen (t.ex. OAuth `client_id`) | `false` | `network`: klientens adress (obligatorisk i BALP) |
| **API:et/bryggan** (`agent[server]`) | PatientQuery: `DCM#110152`; PatientRead: `DCM#110153` | `Reference(Device)` eller identifier för bryggan | `false` | `network`: serverns adress (obligatorisk i BALP) |
| **Källsystem** (`agent[custodian]`) | `v3-ParticipationType#CST` "custodian" | Identifier med källsystemets eller vårdgivarens HSA-id | `false` | En agent per källsystem, se [Källsystem](#kallsystem-och-noder) |

Att klient och server har olika DICOM-roller för sökning respektive läsning följer BALP.

När åtkomsttoken är en OAuth-token eller SAML-assertion följs BALP:s mönster för
tokenanvändning: uppgifter ur token (t.ex. subjekt, `client_id`, organisation, syfte) förs
över till användar- och applikationsagenterna.

### Vilken patient – entity[patient]

FHIR R4 saknar `AuditEvent.patient`. Patienten anges med BALP:s entity-mönster:

| Element | Värde |
|---|---|
| `entity.type` | `audit-entity-type#1` "Person" |
| `entity.role` | `object-role#1` "Patient" |
| `entity.what` | `Reference(SEEHDSPatient)` med `identifier` = personnummer eller samordningsnummer |

Varje `AuditEvent` gäller exakt en patient. Om en sökning ger träffar för flera patienter skapas
en `AuditEvent` per patient, enligt BALP.

### Frågan – entity[query]

| Element | Värde |
|---|---|
| `entity.type` | `audit-entity-type#2` "System Object" |
| `entity.role` | `object-role#24` "Query" |
| `entity.query` | Den råa frågesträngen, base64-kodad |
| `entity.description` | Valfritt: den tvättade frågesträngen i klartext |

### Träfflistan {#trafflistan}

Träfflistan är en utlämning i sig. Varje resurs som lämnades ut registreras som en entity i
samma `AuditEvent`:

| Element | Värde |
|---|---|
| `entity.type` | Resurstypen, t.ex. `http://hl7.org/fhir/resource-types#Condition` |
| `entity.role` | `object-role#4` "Domain Resource" |
| `entity.what` | Referens till den utlämnade resursen (`[typ]/[id]`), eller logisk referens via identifier |

Resurser som filtrerades bort före utlämning, till exempel på grund av spärr eller
`approvedForPatient = false`, registreras **inte**.

### Syfte (purpose of use)

Syftet anges i `AuditEvent.purposeOfEvent` och i `agent[user].purposeOfUse`, med koder från
`http://terminology.hl7.org/CodeSystem/v3-ActReason`:

| Situation | Kod |
|---|---|
| Vård och behandling inom vårdrelation (PDL) | `TREAT` |
| Nödåtkomst (nödöppning) | `ETREAT` |
| Patientens egen åtkomst, t.ex. via 1177 Journal | `PATRQT` |

Syftet ska komma från anropet (t.ex. åtkomsttokenens claims). Om syftet saknas i ett anrop som
kräver ett syfte ska utlämningen nekas och loggas (se nedan).

### Resultat (outcome)

Inera-profilerna, liksom BALP, beskriver **lyckade** utlämningar (`outcome = 0`, även med noll
träffar). Nekade och misslyckade försök ska också loggas. De loggas med samma struktur men utan
`meta.profile` till profilerna, med ett `OperationOutcome` till klienten enligt FHIR:s mönster
för nekad åtkomst:

| Situation | `outcome` |
|---|---|
| Utlämning genomförd | `0` "Success" |
| Utlämning nekad, t.ex. saknad behörighet, saknat syfte eller spärr på hela svaret | `4` "Minor failure" |
| Fel i källsystem eller underliggande RIVTA-anrop | `8` "Serious failure" |
| Fel i API:et/bryggan | `12` "Major failure" |

`outcomeDesc` får inte avslöja bortfiltrerad eller spärrad information.

### Källsystem och noder {#kallsystem-och-noder}

En utlämning från bryggan bygger på ett eller flera RIVTA-anrop mot källsystem. För
spårbarhet hela vägen tillbaka till källan:

- Bryggan registreras som `source.observer` och som `agent[server]`.
- Varje källsystem (eller vårdgivare) som bidrog till svaret registreras som `agent[custodian]`,
  med samma HSA-id som `Provenance.agent[custodian]` för de utlämnade resurserna.
- RIVTA-anropets `logId` (`result.logId`, där det finns) kan anges som extra identifier på
  `agent[custodian]`, så att API:ets loggpost kan kopplas till källsystemets egen loggpost.

### Lagring (ATNA)

- `AuditEvent` skickas till ett **Audit Record Repository** enligt ATNA, med FHIR-överföring
  (ITI-20 Record Audit Event, FHIR Feed) eller ett likvärdigt säkert flöde.
- Loggposter får inte ändras eller raderas av den som utför åtkomsten och ska bevaras enligt
  gällande krav (t.ex. patientdatalagen).
- Loggposterna innehåller inte själva patientdatat, bara referenser till det som lämnades ut.
- Loggposterna lämnas ut till patienten enligt [Patientens åtkomst till loggar](#patientatkomst).

### Exempel – sökning efter diagnoser

En användare i vården söker aktiva diagnoser för en patient via QEDm. Två `Condition` lämnas ut
från ett källsystem.

```json
{
  "resourceType": "AuditEvent",
  "meta": { "profile": ["https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSAuditEventPatientQuery"] },
  "type": { "system": "http://terminology.hl7.org/CodeSystem/audit-event-type", "code": "rest", "display": "Restful Operation" },
  "subtype": [{ "system": "http://hl7.org/fhir/restful-interaction", "code": "search-type", "display": "search type" }],
  "action": "E",
  "recorded": "2026-10-01T10:15:00+02:00",
  "outcome": "0",
  "purposeOfEvent": [{ "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-ActReason", "code": "TREAT" }] }],
  "agent": [
    {
      "type": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType", "code": "IRCP", "display": "information recipient" }] },
      "who": { "identifier": { "system": "urn:oid:1.2.752.29.4.19", "value": "SE2321000016-ABC1" } },
      "requestor": true,
      "purposeOfUse": [{ "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-ActReason", "code": "TREAT" }] }]
    },
    {
      "type": { "coding": [{ "system": "http://dicom.nema.org/resources/ontology/DCM", "code": "110153", "display": "Source Role ID" }] },
      "who": { "identifier": { "system": "urn:ietf:rfc:3986", "value": "urn:uuid:7f1c2a64-1e0b-4c55-9d36-2b1a1f2c9e10" }, "display": "Journalapp" },
      "requestor": false,
      "network": { "address": "10.0.0.15", "type": "2" }
    },
    {
      "type": { "coding": [{ "system": "http://dicom.nema.org/resources/ontology/DCM", "code": "110152", "display": "Destination Role ID" }] },
      "who": { "reference": "Device/ehds-brygga" },
      "requestor": false,
      "network": { "address": "ehds-brygga.example.se", "type": "1" }
    },
    {
      "type": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType", "code": "CST", "display": "custodian" }] },
      "who": { "identifier": { "system": "urn:oid:1.2.752.29.4.19", "value": "SE2321000016-4HK5" } },
      "requestor": false
    }
  ],
  "source": {
    "observer": { "reference": "Device/ehds-brygga" },
    "type": [{ "system": "http://terminology.hl7.org/CodeSystem/security-source-type", "code": "4" }]
  },
  "entity": [
    {
      "what": { "identifier": { "system": "http://electronichealth.se/identifier/personnummer", "value": "191212121212" } },
      "type": { "system": "http://terminology.hl7.org/CodeSystem/audit-entity-type", "code": "1" },
      "role": { "system": "http://terminology.hl7.org/CodeSystem/object-role", "code": "1" }
    },
    {
      "type": { "system": "http://terminology.hl7.org/CodeSystem/audit-entity-type", "code": "2" },
      "role": { "system": "http://terminology.hl7.org/CodeSystem/object-role", "code": "24" },
      "query": "Q29uZGl0aW9uP3BhdGllbnQ9MTkxMjEyMTIxMjEyJmNsaW5pY2FsLXN0YXR1cz1hY3RpdmU="
    },
    {
      "what": { "reference": "Condition/diag-1" },
      "type": { "system": "http://hl7.org/fhir/resource-types", "code": "Condition" },
      "role": { "system": "http://terminology.hl7.org/CodeSystem/object-role", "code": "4" }
    },
    {
      "what": { "reference": "Condition/diag-2" },
      "type": { "system": "http://hl7.org/fhir/resource-types", "code": "Condition" },
      "role": { "system": "http://terminology.hl7.org/CodeSystem/object-role", "code": "4" }
    }
  ]
}
```

---

## Läsning av källsystemens åtkomstloggar – GetAccessLogForPatient {#getaccesslogforpatient}

**Tjänstekontrakt:** `informationsecurity:auditing:log` GetAccessLogForPatient v1.1, 2.0  
**FHIR-profil:** [SEEHDSAuditEventReadAccessLog](StructureDefinition-SEEHDSAuditEventReadAccessLog.html)  
**Logisk modell:** [SEEHDSLMAccessLog](StructureDefinition-SEEHDSLMAccessLog.html)  
**Krävs för NPÖ:** Nej | **Krävs för 1177 Journal:** Ja (v1.1, 2.0)

GetAccessLogForPatient används för att lämna ut källsystemens befintliga åtkomstloggar till
patienten. Varje loggpost mappas till en `AuditEvent` enligt
SEEHDSAuditEventReadAccessLog. Profilen används bara för att **läsa** loggar. Den används
inte för de loggposter API:et själv skapar (se [Loggar som måste skapas](#loggar-som-maste-skapas)).

Svaret `GetAccessLogsForPatientResponse` innehåller ett `accessLogsResult` med rapportstatus (`reportResult`) och en lista med loggposter (`accesssLogs.accessLog`). Elementnamnet `accesssLogs` stavas med tre s i XSD:n och måste användas så i XML:en. Loggposten har ingen patientidentitet, ingen åtkomsttyp och inget utfall: patienten är den som efterfrågades i begäran, och övriga AuditEvent-fält får fasta värden enligt profilen. Strukturen följer [SEEHDSLMAccessLog](StructureDefinition-SEEHDSLMAccessLog.html), som är genererad från XSD:n och verifierad mot TKB:n.

| RIVTA-element | Kard. | FHIR-element | Kommentar |
|---|---|---|---|
| (begärans `patientId`) | 1..1 | `AuditEvent.entity[patient].what` | SEEHDSPatient för den efterfrågade patienten, entity-mönstret (`entity.role = 1`), se LOG-001 |
| `accessLogsResult.accesssLogs.accessLog.accessDate` | 1..1 | `AuditEvent.recorded` | Tidpunkt för åtkomst (xs:dateTime); tidszon Europe/Stockholm om den saknas (GENERAL-001) |
| `accessLogsResult.accesssLogs.accessLog.userId` | 1..1 | `AuditEvent.agent[user].who.identifier.value` | Vårdaktörens id; HSA-id med system `urn:oid:1.2.752.29.4.19`. `agent.requestor = true` |
| `accessLogsResult.accesssLogs.accessLog.userName` | 0..1 | `AuditEvent.agent[user].who.display` | Vårdaktörens namn |
| `accessLogsResult.accesssLogs.accessLog.userTitle` | 0..1 | `AuditEvent.agent[user].role.text` | Vårdaktörens titel |
| `accessLogsResult.accesssLogs.accessLog.purpose` | 1..1 | `AuditEvent.agent[user].purposeOfUse` | Syftet i klartext i `text`; "Vård och behandling" kodas även som `v3-ActReason#TREAT` |
| `accessLogsResult.accesssLogs.accessLog.careUnitId` | 1..1 | `AuditEvent.agent[vårdenhet].who.identifier.value` | Vårdenhet som haft åtkomst; logisk referens till SEEHDSOrganization. `agent.requestor = false` |
| `accessLogsResult.accesssLogs.accessLog.careUnitName` | 0..1 | `AuditEvent.agent[vårdenhet].who.display` | Vårdenhetens namn |
| `accessLogsResult.accesssLogs.accessLog.careProviderId` | 1..1 | `AuditEvent.agent[vårdgivare].who.identifier.value` | Vårdgivare som haft åtkomst; logisk referens till SEEHDSOrganization. `agent.requestor = false` |
| `accessLogsResult.accesssLogs.accessLog.careProviderName` | 0..1 | `AuditEvent.agent[vårdgivare].who.display` | Vårdgivarens namn |
| `accessLogsResult.accesssLogs.accessLog.resourceType` | 1..1 | `AuditEvent.entity[resurs].description` | Typ av resurs som åtkomsten avsåg |
| (saknas i meddelandet) | – | `AuditEvent.type`, `action`, `outcome` | Fasta värden enligt profilen: `action = R`, `outcome = 0` (loggposten avser en genomförd åtkomst); `type` se LOG-002 |
| (saknas i meddelandet) | – | `AuditEvent.source.observer` | Det källsystem (logisk adress) som bryggan anropade |
| `accessLogsResult.reportResult.result.resultCode` | 1..1 | Ej mappad | Teknisk statuskod – hanteras av transportlagret |
| `accessLogsResult.reportResult.result.resultText` | 0..1 | Ej mappad | Teknisk statustext |
| `accessLogsResult.reportResult.startInterval` | 0..1 | Ej mappad | Datum för första loggposten som finns för uppföljning när rapporten skapades |
| `accessLogsResult.reportResult.endInterval` | 0..1 | Ej mappad | Datum för sista loggposten som finns för uppföljning när rapporten skapades |
| `accessLogsResult.reportResult.queuedReportId` | 0..1 | Ej mappad | Id för köad rapport (asynkront svar); bryggan behöver anropa igen |
| `accessLogsResult.reportResult.queueTime` | 0..1 | Ej mappad | Förväntad tid i sekunder tills den köade rapporten kan levereras |

Öppna frågor: LOG-001 och LOG-002 i [Mappningsissues](mapping-issues.html).

---

## Öppna frågor

| ID | Fråga |
|---|---|
| AUDIT-002 | **Källa för syfte och användaridentitet.** Hur anropande system skickar användarens HSA-id, roll och syfte till API:et (token-claims, SAML-attribut eller headrar) behöver fastställas. |
| AUDIT-003 | **Träfflistans granularitet.** En entity per utlämnad resurs ger fullständig spårbarhet men stora loggposter vid stora träfflistor. Alternativ: entity per resurs upp till en gräns, därefter referens till ett sparat sökresultat. |
| AUDIT-004 | **Audit Record Repository.** Var API:ets loggposter lagras (nationell, regional eller lokal loggtjänst) och hur de görs tillgängliga för patienten tillsammans med källsystemens loggar. |
| AUDIT-005 | **Koppling till källsystemens PDL-loggning.** Hur API:ets loggpost och källsystemens egna åtkomstloggar knyts ihop, t.ex. via `logId` eller ett gemensamt korrelations-id. |

AUDIT-001 (egna AuditEvent-profiler baserade på BALP) är beslutad: se
[SEEHDSAuditEventPatientQuery](StructureDefinition-SEEHDSAuditEventPatientQuery.html) och
[SEEHDSAuditEventPatientRead](StructureDefinition-SEEHDSAuditEventPatientRead.html).
