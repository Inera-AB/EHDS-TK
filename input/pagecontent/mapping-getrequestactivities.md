# GetRequestActivities – Remisstatus

**Tjänstekontrakt:** `crm:requeststatus` GetRequestActivities v2.0  
**FHIR-profil:** [SEEHDSTask](StructureDefinition-SEEHDSTask.html)  
**Logisk modell:** [SEEHDSLMRequestActivities](StructureDefinition-SEEHDSLMRequestActivities.html)  
**Krävs för NPÖ:** Ja (v2.0) | **Krävs för 1177 Journal:** Ja (v1.0, 2.0)  
**EHDS-koppling:** Stödjande processinformation (ej separat EHDS-huvudkategori)

---

## Meddelandestruktur

Svaret `GetRequestActivitiesResponse` innehåller noll eller flera `requestActivity`, var och en med `header` (åtkomstkontroll, källsystem, post och dokumentationsansvarig) och `body` (status, händelsetidpunkt och den remiss som statusen gäller). Svaret har ingen patientidentitet och inget `result`-element. Patienten är den som efterfrågades i begäran (`patientId`). Strukturen följer den logiska modellen [SEEHDSLMRequestActivities](StructureDefinition-SEEHDSLMRequestActivities.html), som är genererad från XSD:n och verifierad mot TKB:n.

---

## Mappningstabell – header

| RIVTA-element | Kard. | FHIR-element | Kommentar |
|---|---|---|---|
| (begärans `patientId`) | 1..1 | `Task.for` | Svaret saknar patientidentitet; `Task.for` sätts till SEEHDSPatient för den efterfrågade patienten (GENERAL-006) |
| `requestActivity.header.accessControlHeader.accountableHealthcareProvider` | 1..1 | `Provenance.agent[custodian].who.identifier` | Yttre Sparr – uppgiftsägande vårdgivare. IIType: `extension` = HSA-id |
| `requestActivity.header.accessControlHeader.accountableCareUnit` | 0..1 | `Provenance.agent[author].who.identifier` | Inre Sparr – vårdenhet. IIType: `extension` = HSA-id |
| `requestActivity.header.accessControlHeader.originalPatientId` | 0..1 | Ej mappad | Personidentitet vid lagringstillfället, om den skiljer sig från den efterfrågade |
| `requestActivity.header.accessControlHeader.careProcessId` | 0..1 | Ej mappad | Id för individanpassad vårdprocess |
| `requestActivity.header.accessControlHeader.lockTime` | 0..0 | N/A | Ska inte användas enligt TKB |
| `requestActivity.header.accessControlHeader.blockComparisonTime` | 1..1 | Ej mappad | Används för spärrkontroll i bryggan |
| `requestActivity.header.accessControlHeader.approvedForPatient` | 1..1 | `Task.meta.security` | PDL-kontroll – se PDL-001 |
| `requestActivity.header.sourceSystemId` | 1..1 | `Task.meta.source` | IIType; `extension` = källsystemets HSA-id → `https://tjanstekatalogen.inera.se/Endpoint/{hsaId}` (GENERAL-005) |
| `requestActivity.header.record.id` | 1..1 | `Task.identifier[0]` | Remisstatusens id. `root` → `system` (OID→URI), `extension` → `value` |
| `requestActivity.header.record.timestamp` | 1..1 | `Task.authoredOn` | När remisstatusen skapades i källsystemet; ÅÅÅÅMMDDttmmss → ISO 8601 (GENERAL-001) |
| `requestActivity.header.author.id` | 0..1 | Ej mappad | HSA-id för den som dokumenterat statusen |
| `requestActivity.header.author.name` | 0..1 | Ej mappad | Namn på den som dokumenterat statusen |
| `requestActivity.header.author.timestamp` | 1..1 (om author) | `Provenance.recorded` | Används om `author` finns, annars `record.timestamp` |
| `requestActivity.header.author.byRole` | 0..1 | Ej mappad | Befattning (CVType) |

---

## Mappningstabell – body

| RIVTA-element | Kard. | FHIR-element | Kommentar |
|---|---|---|---|
| `requestActivity.body.statusCode` | 1..1 | `Task.businessStatus` och `Task.status` | Kv status vårdbegäran (OID 1.2.752.129.2.2.2.43). Koden bevaras i `businessStatus`; `status` härleds enligt tabellen nedan |
| `requestActivity.body.eventTime` | 1..1 | `Task.lastModified` | Tidpunkt för statusändringen; ÅÅÅÅMMDDttmmss → ISO 8601 |
| `requestActivity.body.request.id` | 1..1 | `Task.focus.identifier.value` | Remiss-id; logisk referens till SEEHDSServiceRequestReferral |
| `requestActivity.body.request.type` | 0..1 | Ej mappad | Remisstyp (Kv framställantyp, OID 1.2.752.129.2.2.2.24) – attribut till remissen, som bara refereras logiskt |
| `requestActivity.body.request.medium` | 0..1 | Ej mappad | Form av framställan (OID 1.2.752.129.2.2.2.7) – attribut till remissen |
| `requestActivity.body.request.author.name` | 1..1 (om author) | `Task.requester.display` | Remittentens namn |
| `requestActivity.body.request.author.organization.id` | 0..1 | `Task.requester.identifier` | Remitterande enhets HSA-id (IIType `extension`) |
| `requestActivity.body.request.author.organization.name` | 1..1 | `Task.requester.display` | Läggs efter remittentens namn |
| `requestActivity.body.request.receivingOrganization.id` | 0..1 | `Task.owner.identifier` | Mottagande enhets HSA-id (IIType `extension`) |
| `requestActivity.body.request.receivingOrganization.name` | 1..1 | `Task.owner.display` | Mottagande enhets namn |

---

## Statusmappning (Kv status vårdbegäran → Task.status)

Mappningen görs på koden i `statusCode`. Tabellen anger klartexterna; koderna i kodverket 1.2.752.129.2.2.2.43 behöver verifieras mot Ineras kodverkstjänst.

| Kv status vårdbegäran | Task.status |
|---|---|
| Mottagen | received |
| Under utredning | in-progress |
| Besvarad | completed |
| Avbruten | cancelled |
| Avvisad | rejected |

---

## Provenance

En `Provenance`-resurs skapas per Task och bär PDL/Sparr-information från `header.accessControlHeader`.

| Agent | Roll | Källa |
|---|---|---|
| `agent[custodian]` | Juridiskt ansvarig vårdgivare (Yttre Sparr) | `requestActivity.header.accessControlHeader.accountableHealthcareProvider` |
| `agent[author]` | Informationsägande vårdenhet (Inre Sparr) | `requestActivity.header.accessControlHeader.accountableCareUnit` |

`Provenance.target` refererar Task-resursen.  
`Provenance.recorded` = `header.author.timestamp` om den finns, annars `header.record.timestamp` (konverterat till ISO 8601).

---

## OID-till-URI-tabell

| OID | URI | Beskrivning |
|---|---|---|
| `1.2.752.129.2.1.3.1` | `http://electronichealth.se/identifier/personnummer` | Personnummer |
| `1.2.752.129.2.1.3.3` | `http://electronichealth.se/identifier/samordningsnummer` | Samordningsnummer |
| `1.2.752.129.2.1.4.1` | `urn:oid:1.2.752.29.4.19` | HSA-id (Inera NTjP) |

OID:er utan känd URI-mappning bevaras som `urn:oid:{oid}`.

---

## Designbeslut

### Task.identifier och Task.focus (tidigare REQ-001)

Meddelandet har två skilda identiteter: `header.record.id` identifierar remisstatusen och mappas till `Task.identifier`, medan `body.request.id` identifierar remissen och mappas till `Task.focus.identifier`.

### Task.requester (tidigare REQ-002)

Remittenten finns i `body.request.author` (namn och remitterande enhet) och mappas till `Task.requester` som logisk referens.
