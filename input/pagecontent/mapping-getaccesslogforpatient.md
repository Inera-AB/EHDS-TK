# Auditloggning – åtkomstloggar i ett EHDS-kompatibelt FHIR-API

**Gäller:** EHDS-bryggor och andra FHIR-API:er som lämnar ut patientdata från RIVTA-tjänstekontrakten i denna IG  
**FHIR-resurs:** `AuditEvent` (FHIR R4) enligt IHE Basic Audit Log Patterns (BALP)  
**IHE-profiler:** mXDE med basprofilerna MHD, QEDm och ATNA/BALP  
**Relaterat:** [Bilaga – GetAccessLogForPatient](#bilaga--getaccesslogforpatient) (patientens hämtning av åtkomstloggar)

---

## Bakgrund och antaganden

EHDS ställer krav på att åtkomst till elektroniska patientuppgifter loggas, så att det går att
följa upp vem som har tagit del av en patients uppgifter och i vilket syfte. EURIDICE hänvisar
till IHE:s profiler för hur detta ska realiseras tekniskt.

Denna IG gör följande antaganden:

1. **Kravnivån är klinisk åtkomstloggning.** För FHIR-bryggor och liknande API:er motsvarar
   kraven IHE **mXDE** (Mobile Cross-Enterprise Document Data Element Extraction) och dess
   basprofiler.
2. **mXDE kombinerar tre förmågor:**

   | Profil | Förmåga | Relevans för bryggan |
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

---

## Vilka händelser som loggas

En `AuditEvent` skapas per FHIR-interaktion som lämnar ut, eller försöker lämna ut,
patientdata. Händelsen skapas även när interaktionen nekas eller misslyckas.

| Händelse | FHIR-interaktion | IHE-transaktion | BALP-mönster | `type` | `subtype` | `action` |
|---|---|---|---|---|---|---|
| Sökning + träfflista, dokument | `GET [base]/DocumentReference?patient=…` | MHD ITI-67 Find Document References | Patient Query | `DCM#110112` "Query" | `urn:ihe:event-type-code#ITI-67` och `http://hl7.org/fhir/restful-interaction#search-type` | `E` |
| Sökning + träfflista, strukturerad data | `GET [base]/Condition?patient=…` m.fl. | QEDm PCC-44 Mobile Query Existing Data | Patient Query | `DCM#110112` "Query" | `http://hl7.org/fhir/restful-interaction#search-type` | `E` |
| Innehållshämtning, dokument (framtida) | `GET` av `DocumentReference.content.attachment.url` | MHD ITI-68 Retrieve Document | Patient Read | `DCM#110106` "Export" | `urn:ihe:event-type-code#ITI-68` | `R` |
| Läsning av enskild resurs (framtida) | `GET [base]/[typ]/[id]` | – | Patient Read | `http://terminology.hl7.org/CodeSystem/audit-event-type#rest` | `http://hl7.org/fhir/restful-interaction#read` | `R` |

Sökning och träfflista loggas i **samma** `AuditEvent`. Frågan registreras som en
query-entity och de resurser som lämnades ut i träfflistan registreras som egna entities
(se [Träfflistan](#trafflistan)).

Där en IHE-transaktion har egna auditkrav (MHD ITI-67/ITI-68) används transaktionens
`subtype` tillsammans med BALP-mönstret. Övriga interaktioner följer BALP:s generiska mönster.

---

## AuditEvent-struktur

### Grundfält

| AuditEvent-element | Innehåll | Kommentar |
|---|---|---|
| `type` | Se tabellen ovan | |
| `subtype` | Se tabellen ovan | |
| `action` | `E` (sökning) eller `R` (läsning/hämtning) | |
| `recorded` | Tidpunkt då händelsen registrerades | ISO 8601 med tidszon |
| `outcome` | Se [Resultat](#resultat-outcome) | |
| `outcomeDesc` | Felbeskrivning vid nekad/misslyckad utlämning | Får inte innehålla patientdata |
| `purposeOfEvent` | Se [Syfte](#syfte-purpose-of-use) | |
| `source.observer` | Den nod som registrerade händelsen (bryggan) | `Reference(Device)` med identifier |
| `source.type` | `http://terminology.hl7.org/CodeSystem/security-source-type#4` "Application Server" | |

### Vem – agenter

| Agent | `agent.type` | `agent.who` | `requestor` | Övrigt |
|---|---|---|---|---|
| **Användare** | BALP användaragent (`http://terminology.hl7.org/CodeSystem/extra-security-role-type#humanuser`) | Identifier med användarens HSA-id (`urn:oid:1.2.752.129.2.1.4.1`); för patient som användare personnummer | `true` | `agent.role`: användarens befattning/roll när den finns. `agent.purposeOfUse`: se nedan |
| **Applikation (klient)** | `DCM#110153` "Source Role ID" | Identifier för klientapplikationen (t.ex. OAuth `client_id`) | `false` | `agent.network`: klientens nätverksadress |
| **Bryggan (server)** | `DCM#110152` "Destination Role ID" | `Reference(Device)` för bryggan | `false` | `agent.network`: serverns adress |
| **Källsystem** | `http://terminology.hl7.org/CodeSystem/v3-ParticipationType#CST` "custodian" | Identifier med källsystemets eller vårdgivarens HSA-id | `false` | En agent per källsystem som bidrog till svaret, se [Källsystem](#kallsystem-och-noder) |

När åtkomsttoken är en OAuth-token eller SAML-assertion följs BALP:s mönster för
tokenanvändning: uppgifter ur token (t.ex. subjekt, `client_id`, organisation) förs över till
användar- och applikationsagenterna.

### Vilken patient – entity

FHIR R4 saknar `AuditEvent.patient`. Patienten anges därför med BALP:s entity-mönster:

| Element | Värde |
|---|---|
| `entity.type` | `http://terminology.hl7.org/CodeSystem/audit-entity-type#1` "Person" |
| `entity.role` | `http://terminology.hl7.org/CodeSystem/object-role#1` "Patient" |
| `entity.what` | `Reference(IneraEHDSPatient)` med `identifier` = personnummer eller samordningsnummer |

Varje `AuditEvent` gäller exakt en patient. En fråga som inte är avgränsad till en patient
lämnar inte ut patientdata i denna IG och ska inte tillåtas.

### Frågan – entity

| Element | Värde |
|---|---|
| `entity.type` | `http://terminology.hl7.org/CodeSystem/audit-entity-type#2` "System Object" |
| `entity.role` | `http://terminology.hl7.org/CodeSystem/object-role#24` "Query" |
| `entity.query` | Frågesträngen (base64), t.ex. `Condition?patient=…&clinical-status=active` |

### Träfflistan {#trafflistan}

Träfflistan är en utlämning i sig. Varje resurs som lämnades ut i sökresultatet registreras som
en entity i samma `AuditEvent`:

| Element | Värde |
|---|---|
| `entity.type` | `http://terminology.hl7.org/CodeSystem/audit-entity-type#2` "System Object" |
| `entity.role` | `http://terminology.hl7.org/CodeSystem/object-role#4` "Domain Resource" |
| `entity.what` | Referens till den utlämnade resursen (`[typ]/[id]`), eller logisk referens via identifier |

Resurser som filtrerades bort före utlämning, till exempel på grund av spärr eller
`approvedForPatient = false`, registreras **inte** som utlämnade. Om filtrering skett anges det
i `outcomeDesc` utan att den bortfiltrerade informationen avslöjas.

### Syfte (purpose of use)

Syftet anges i `AuditEvent.purposeOfEvent` och i användaragentens `agent.purposeOfUse`, med
koder från `http://terminology.hl7.org/CodeSystem/v3-ActReason`:

| Situation | Kod |
|---|---|
| Vård och behandling inom vårdrelation (PDL) | `TREAT` |
| Nödåtkomst (nödöppning) | `ETREAT` |
| Patientens egen åtkomst, t.ex. via 1177 Journal | `PATRQT` |

Syftet ska komma från anropet (t.ex. åtkomsttokenens claims). Om syftet saknas i ett anrop som
kräver ett syfte ska utlämningen nekas och loggas med `outcome = 4`.

### Resultat (outcome)

| Situation | `outcome` |
|---|---|
| Utlämning genomförd (även med noll träffar) | `0` "Success" |
| Utlämning nekad, t.ex. saknad behörighet, saknat syfte eller spärr på hela svaret | `4` "Minor failure" |
| Fel i källsystem eller underliggande RIVTA-anrop | `8` "Serious failure" |
| Fel i bryggan | `12` "Major failure" |

### Källsystem och noder {#kallsystem-och-noder}

En utlämning från bryggan bygger på ett eller flera RIVTA-anrop mot källsystem. För
spårbarhet hela vägen tillbaka till källan:

- Bryggan registreras som `source.observer` och som serveragent.
- Varje källsystem (eller vårdgivare) som bidrog till svaret registreras som en agent av typen
  custodian, med samma HSA-id som används i `Provenance.agent[custodian]` för de utlämnade
  resurserna.
- RIVTA-anropets `logId` (`result.logId`, där det finns) kan anges som extra identifier på
  källsystemsagenten, så att bryggans loggpost kan kopplas till källsystemets egen loggpost.

---

## Lagring och åtkomst till loggposterna (ATNA)

- `AuditEvent` skickas till ett **Audit Record Repository** enligt ATNA, med FHIR-överföring
  (ITI-20 Record Audit Event, FHIR Feed) eller ett likvärdigt säkert flöde.
- Loggposter får inte ändras eller raderas av den som utför åtkomsten och ska bevaras enligt
  gällande krav på loggning (t.ex. patientdatalagen).
- Uppföljning och patientinsyn i loggarna görs via ATNA ITI-81 Retrieve ATNA Audit Event
  (`GET [base]/AuditEvent?patient=…`), se även [Sökparametrar](search-parameters.html).
- Loggposterna innehåller inte själva patientdatat, bara referenser till det som lämnades ut.

---

## Exempel – sökning efter diagnoser

En användare i vården söker aktiva diagnoser för en patient via QEDm. Två `Condition` lämnas ut
från ett källsystem.

```json
{
  "resourceType": "AuditEvent",
  "type": { "system": "http://dicom.nema.org/resources/ontology/DCM", "code": "110112", "display": "Query" },
  "subtype": [{ "system": "http://hl7.org/fhir/restful-interaction", "code": "search-type", "display": "search type" }],
  "action": "E",
  "recorded": "2026-10-01T10:15:00+02:00",
  "outcome": "0",
  "purposeOfEvent": [{ "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-ActReason", "code": "TREAT" }] }],
  "agent": [
    {
      "type": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/extra-security-role-type", "code": "humanuser" }] },
      "who": { "identifier": { "system": "urn:oid:1.2.752.129.2.1.4.1", "value": "SE2321000016-ABC1" } },
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
      "requestor": false
    },
    {
      "type": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType", "code": "CST", "display": "custodian" }] },
      "who": { "identifier": { "system": "urn:oid:1.2.752.129.2.1.4.1", "value": "SE2321000016-4HK5" } },
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
      "type": { "system": "http://terminology.hl7.org/CodeSystem/audit-entity-type", "code": "2" },
      "role": { "system": "http://terminology.hl7.org/CodeSystem/object-role", "code": "4" }
    },
    {
      "what": { "reference": "Condition/diag-2" },
      "type": { "system": "http://terminology.hl7.org/CodeSystem/audit-entity-type", "code": "2" },
      "role": { "system": "http://terminology.hl7.org/CodeSystem/object-role", "code": "4" }
    }
  ]
}
```

---

## Öppna frågor

| ID | Fråga |
|---|---|
| AUDIT-001 | **Egen AuditEvent-profil baserad på BALP.** Ska IG:n definiera profiler som ärver från IHE BALP (`IHE.BasicAudit.PatientQuery`, `IHE.BasicAudit.PatientRead`) med beroende till paketet `ihe.iti.balp`? Dagens [IneraEHDSAuditEvent](StructureDefinition-inera-ehds-audit-event.html) är gjord för GetAccessLogForPatient och täcker inte mönstren på denna sida. |
| AUDIT-002 | **Källa för syfte och användaridentitet.** Hur anropande system skickar användarens HSA-id, roll och syfte till bryggan (token-claims, SAML-attribut eller headrar) behöver fastställas. |
| AUDIT-003 | **Träfflistans granularitet.** En entity per utlämnad resurs ger fullständig spårbarhet men stora loggposter vid stora träfflistor. Alternativ: entity per resurs upp till en gräns, därefter referens till ett sparat sökresultat. |
| AUDIT-004 | **Audit Record Repository.** Var bryggans loggposter lagras (nationell loggtjänst, regional tjänst eller lokalt) och hur de görs tillgängliga för uppföljning och för patienten. |
| AUDIT-005 | **Koppling till källsystemens PDL-loggning.** Hur bryggans loggpost och källsystemens egna åtkomstloggar knyts ihop, t.ex. via `logId` eller en gemensam korrelations-id. |

---

## Bilaga – GetAccessLogForPatient

`informationsecurity:auditing:log` GetAccessLogForPatient v1.1, 2.0 är ett separat
tjänstekontrakt som används av **1177 Journal** (krävs inte för NPÖ) för att låta patienten se
vem som har tagit del av patientens journal i källsystemen. Det handlar alltså om att **lämna
ut** befintliga åtkomstloggar, inte om bryggans egen auditloggning ovan. Att hämta
åtkomstloggar är i sig en utlämning av patientdata och ska loggas enligt mönstren ovan.

**FHIR-profil:** [IneraEHDSAuditEvent](StructureDefinition-inera-ehds-audit-event.html)  
**Logisk modell:** [IneraEHDSLMAccessLog](StructureDefinition-inera-ehds-lm-access-log.html)

| RIVTA-element | Kard. | FHIR-element | Kommentar |
|---|---|---|---|
| `accessLogId` | 1..1 | `AuditEvent.entity[loggpost].what.identifier.value` | Loggpostens unika identifierare |
| `patientId` | 1..1 | `AuditEvent.entity[patient].what` | Patientens identitet, entity-mönstret ovan (`entity.role = 1`) |
| `accessTime` | 1..1 | `AuditEvent.recorded` | Åtkomsttidpunkt; ISO 8601 |
| `accessType` | 1..1 | `AuditEvent.type` | Åtkomsttyp (Läsning/Sökning), se LOG-002 |
| `accessSubType` | 0..1 | `AuditEvent.subtype` | Mer specifik klassificering av händelsen |
| `accessOutcome` | 1..1 | `AuditEvent.outcome` | `0` = beviljad, `4` = nekad |
| `accessPurpose` | 0..1 | `AuditEvent.purposeOfEvent` | Åtkomstsyfte (Vård/Administration); `v3-ActReason` |
| `userId` | 1..1 | `AuditEvent.agent[accessor].who.identifier.value` | Användarens HSA-id; system `urn:oid:1.2.752.129.2.1.4.1` |
| `userRole` | 0..1 | `AuditEvent.agent[accessor].role` | Användarroll vid åtkomsttillfället |
| `userOrganization` | 0..1 | `AuditEvent.agent[accessor].who` | Organisationens HSA-id |
| `sourceSystemHSAId` | 1..1 | `AuditEvent.source.observer.identifier.value` | Källsystemet som registrerade händelsen |
| `accessedResource` | 0..1 | `AuditEvent.entity[resurs].description` | Resurs eller tjänst som åtkoms |
| `result.*` | – | Ej mappad | Tekniska svarsfält – hanteras av transportlagret |

Öppna frågor för bilagan: LOG-001 och LOG-002 i [Mappningsissues](mapping-issues.html).
