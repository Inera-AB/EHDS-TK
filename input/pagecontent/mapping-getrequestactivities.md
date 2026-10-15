# GetRequestActivities – Remisstatus

**Tjänstekontrakt:** `crm:requeststatus` GetRequestActivities v2.0  
**FHIR-profil:** [SEEHDSTask](StructureDefinition-SEEHDSTask.html)  
**Logisk modell:** [SEEHDSLMRequestActivities](StructureDefinition-SEEHDSLMRequestActivities.html) (v2.0) | [SEEHDSLMRequestActivitiesV1](StructureDefinition-SEEHDSLMRequestActivitiesV1.html) (v1.0)  
**Krävs för NPÖ:** Ja (v2.0) | **Krävs för 1177 Journal:** Ja (v1.0, 2.0)  
**Äldre version:** v1.0 mappas till samma profil, se [GetRequestActivities 1.0](#aldre-versioner)  
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

## GetRequestActivities 1.0 {#aldre-versioner}

1177 Journal hämtar även version 1.0 (namnrymd `…:GetRequestActivitiesResponder:1`, domänversion 1.0.7). Svaret beskrivs av den logiska modellen [SEEHDSLMRequestActivitiesV1](StructureDefinition-SEEHDSLMRequestActivitiesV1.html) och mappas till samma profil, [SEEHDSTask](StructureDefinition-SEEHDSTask.html). I 1.0 är `requestActivity` platt: alla uppgifter ligger direkt under `requestActivity` som text, utan header och body och utan RIV-TA-datatyperna IIType och CVType.

### Skillnader mot version 2.0

Tabellen visar vilket element i 2.0 som motsvarar respektive element i 1.0. Elementet i 1.0 mappas som motsvarigheten, med de skillnader som anges nedan.

<!-- versionsdiff:SEEHDSLMRequestActivitiesV1:start -->
Svarets namnrymd: `urn:riv:crm:requeststatus:GetRequestActivitiesResponder:1` (GetRequestActivities 1.0) och `urn:riv:crm:requeststatus:GetRequestActivitiesResponder:2` (GetRequestActivities 2.0).

| Element i GetRequestActivities 1.0 | GetRequestActivities 1.0 | Motsvarighet i GetRequestActivities 2.0 | GetRequestActivities 2.0 | Skillnad |
|---|---|---|---|---|
| `requestActivity.subjectOfCareId` | 1..1 text | – | – | Finns bara i GetRequestActivities 1.0 |
| `requestActivity.senderRequestId` | 0..1 text | `requestActivity.body.request.rivId` | 1..1 text | Ändrad namn/plats, kardinalitet |
| `requestActivity.receiverRequestId` | 0..1 text | – | – | Finns bara i GetRequestActivities 1.0 |
| `requestActivity.typeOfRequest` | 1..1 text | `requestActivity.body.request.type` | 0..1 CVType | Ändrad namn/plats, kardinalitet, typ |
| `requestActivity.requestMedium` | 0..1 text | `requestActivity.body.request.medium` | 0..1 CVType | Ändrad namn/plats, typ |
| `requestActivity.requestIssuedByPersonName` | 0..1 text | `requestActivity.body.request.author.name` | 1..1 text | Ändrad namn/plats, kardinalitet |
| `requestActivity.requestIssuedByOrganizationalUnitId` | 0..1 text | `requestActivity.body.request.author.organization.rivId` | 0..1 IIType | Ändrad namn/plats, typ |
| `requestActivity.requestIssuedByOrganizationalUnitDescription` | 0..1 text | `requestActivity.body.request.author.organization.name` | 1..1 text | Ändrad namn/plats, kardinalitet |
| `requestActivity.receivingPersonName` | 0..1 text | – | – | Finns bara i GetRequestActivities 1.0 |
| `requestActivity.receivingOrganizationalUnitId` | 0..1 text | `requestActivity.body.request.receivingOrganization.rivId` | 0..1 IIType | Ändrad namn/plats, typ |
| `requestActivity.receivingOrganizationalUnitDescription` | 0..1 text | `requestActivity.body.request.receivingOrganization.name` | 1..1 text | Ändrad namn/plats, kardinalitet |
| `requestActivity.careUnit` | 0..1 text | `requestActivity.header.accessControlHeader.accountableCareUnit` | 0..1 IIType | Ändrad namn/plats, typ |
| `requestActivity.logicalSystemId` | 1..1 text | `requestActivity.header.sourceSystemId` | 1..1 IIType | Ändrad namn/plats, typ |
| `requestActivity.statusCode` | 1..1 text | `requestActivity.body.statusCode` | 1..1 CVType | Ändrad namn/plats, typ |
| `requestActivity.eventTime` | 1..1 text | `requestActivity.body.eventTime` | 1..1 TimeStampType | Ändrad namn/plats, typ |
| – | – | `requestActivity.header` | 1..1 struktur | Ny i GetRequestActivities 2.0 |
| – | – | `requestActivity.body` | 1..1 struktur | Ny i GetRequestActivities 2.0 |

Element som saknas i den ena versionen redovisas på översta nivån; deras underelement listas inte. Element som är 0..0 i senaste versionen och saknas i den äldre listas inte. Element med samma namn, kardinalitet och datatyp i båda versionerna listas inte, och inte heller element som bara följer med när föräldern byter namn eller plats.
<!-- versionsdiff:SEEHDSLMRequestActivitiesV1:end -->

### Mappning

| RIVTA-element (v1.0) | Kard. | FHIR-element | Kommentar |
|---|---|---|---|
| `requestActivity.subjectOfCareId` | 1..1 | `Task.for.identifier` | Patientens person- eller samordningsnummer (12 tecken). Till skillnad från 2.0 finns patienten i svaret; `system` sätts utifrån numrets typ, se [GENERAL-006](mappings.html#patientreferens) |
| `requestActivity.senderRequestId` | 0..1 | `Task.focus.identifier.value` | Remiss-id hos framställaren. Motsvarar `body.request.id` |
| `requestActivity.receiverRequestId` | 0..1 | `Task.focus.identifier.value` | Används om `senderRequestId` saknas (minst ett av dem finns) |
| `requestActivity.typeOfRequest` | 1..1 | Ej mappad | Lokal kod (1 = röntgen, 2 = labb, 4 = allmän, 10 = fysiologi), attribut till remissen, som i 2.0 |
| `requestActivity.requestMedium` | 0..1 | Ej mappad | KV Form av framställan som enbart kod, attribut till remissen |
| `requestActivity.requestIssuedByPersonName` | 0..1 | `Task.requester.display` | Remittentens namn |
| `requestActivity.requestIssuedByOrganizationalUnitId` | 0..1 | `Task.requester.identifier` | HSA-id som text; `system` sätts till HSA-id:ts URI |
| `requestActivity.requestIssuedByOrganizationalUnitDescription` | 0..1 | `Task.requester.display` | Läggs efter remittentens namn |
| `requestActivity.receivingPersonName` | 0..1 | `Task.owner.display` | Mottagande person. Saknar motsvarighet i 2.0; läggs före enhetens namn |
| `requestActivity.receivingOrganizationalUnitId` | 0..1 | `Task.owner.identifier` | HSA-id som text |
| `requestActivity.receivingOrganizationalUnitDescription` | 0..1 | `Task.owner.display` | Fritext om enheten |
| `requestActivity.careUnit` | 0..1 | `Provenance.agent[author].who.identifier` | Inre Sparr. Version 1.0 har ingen vårdgivare, så `Provenance.agent[custodian]` kan inte sättas från svaret |
| `requestActivity.logicalSystemId` | 1..1 | `Task.meta.source` | Källsystemets HSA-id, se [GENERAL-005](mappings.html#meta-source) |
| `requestActivity.statusCode` | 1..1 | `Task.businessStatus` och `Task.status` | Lokalt kodverk, se tabellen nedan |
| `requestActivity.eventTime` | 1..1 | `Task.lastModified` och `Task.authoredOn` | ÅÅÅÅMMDDttmmss → ISO 8601. Version 1.0 har ingen separat tidpunkt för när statusen registrerades |

Version 1.0 saknar `approvedForPatient`, en identitet för själva remisstatusen och uppgift om dokumentationsansvarig. `Task.meta.security` och `Task.identifier` sätts därför inte, och `Provenance.recorded` sätts till `eventTime`.

#### Statuskoder i version 1.0 (förslag)

Kodverket i 1.0 saknar nationell förankring. Koden bevaras i `Task.businessStatus`, och `Task.status` härleds så här:

| Kod | Klartext | Task.status |
|---|---|---|
| 20 | Skickad | requested |
| 30 | Mottagen | received |
| 90 | Bedömd | accepted |
| 126, 136 | Preliminärsvar skickat/mottaget | in-progress |
| 130, 140 | Svar skickat/mottaget | completed |
| Övriga | – | in-progress |

---

## Designbeslut

### Task.identifier och Task.focus (tidigare REQ-001)

Meddelandet har två skilda identiteter: `header.record.id` identifierar remisstatusen och mappas till `Task.identifier`, medan `body.request.id` identifierar remissen och mappas till `Task.focus.identifier`.

### Task.requester (tidigare REQ-002)

Remittenten finns i `body.request.author` (namn och remitterande enhet) och mappas till `Task.requester` som logisk referens.
