# Versionshistorik

Sidan beskriver ändringarna mellan publicerade versioner av denna Implementation Guide.

---

| Version | Datum | Status | Beskrivning |
|---------|-------|--------|-------------|
| 0.5.0 | 2026-10-12 | Draft | Alla aktiva tjänstekontraktsversioner enligt startsidan har nu logiska modeller och mappning, inte bara den senaste versionen. |
| 0.4.0 | 2026-10-12 | Draft | Ny konformitetsansats (EURIDICE och EU Core i stället för IPS/EPS), profiler omdöpta till SEEHDS, logiska modeller genererade från RIV-TA-XSD och verifierade mot TKB, och ett antal mappningsbeslut. |
| 0.3.3 | 2026-06-25 | Draft | `ig_slug` tillagd i dispatch-anropet till fhir-portal, så att länkarna till kanonisk URL blir rätt. |
| 0.3.2 | 2026-06-25 | Draft | Ompublicering som rättar publiceringsflödet och publiceringssökvägarna. |
| 0.3.1 | 2026-06-24 | Draft | Första publicerade versionen. |
| 0.1.0 | 2026-06-16 | Draft | Första mallversionen. |

---

### Ändringslogg

#### 0.5.0 — 2026-10-12 (Draft)

Startsidan anger flera aktiva versioner för en del tjänstekontrakt, men mappningarna byggde bara på en version per kontrakt. Nu är alla aktiva versioner med. Se [Tjänstekontraktsversioner](contract-versions.html).

**Logiska modeller**

- Tio nya modeller för övriga aktiva versioner: GetAlertInformation 3.0, GetCareContacts 2.0, GetCareDocumentation 2.1, GetLaboratoryOrderOutcome 4.1 och 3.1, GetReferralOutcome 3.1, GetVaccinationHistory 1.0, GetRequestActivities 1.0, GetObservations 1.2 och GetAccessLogsForPatient 1.1. Modellerna har versionen som suffix, t.ex. `SEEHDSLMCareContactsV20`.
- Modellerna är genererade från XSD:n och TKB:n i den domänversion där kontraktsversionen senast ingick, och jämförda med motsvarande modeller i tkb-converter.
- `tools/rivta-lm` läser domäner vid en viss tagg eller gren, och det nya skriptet `vdiff.py` beräknar skillnaderna mot modellen som mappningen utgår från.

**Mappningar**

- Varje berörd mappningssida har ett nytt avsnitt "Övriga aktiva versioner" med en genererad tabell över skillnaderna och en mappning av det som skiljer. För GetLaboratoryOrderOutcome 3.1, GetCareDocumentation 2.1, GetAlertInformation 3.0, GetRequestActivities 1.0 och GetObservations 1.2, som har andra meddelandemodeller, finns fullständiga mappningstabeller.
- Sidhuvudena på mappningssidorna anger nu samma aktiva versioner som startsidan.
- Nya öppna frågor VER-001–VER-006 på [Mappningsissues](mapping-issues.html), bland annat att GetAlertInformation 3.0 bara finns som beta, att huvudmodellen för GetObservations bygger på en release candidate medan 1.2 är aktiv, och att GetReferralOutcome mappas från 3.2 medan startsidan anger 3.1.

#### 0.4.0 — 2026-10-12 (Draft)

Versionen bryter bakåtkompatibiliteten: profiler och logiska modeller har nya namn och kanoniska URL:er, och beroendena är utbytta.

**Konformitetsansats och beroenden**

- IG:n utlovar nu tre saker: TKB-innehåll, en giltig profilering av EURIDICE (`hl7.fhir.eu.health-data-api` 1.0.0-ballot) och svenska konventioner enligt HL7 Sweden. Se [Startsida](index.html).
- HL7 Europe Core (`hl7.fhir.eu.base` 2.0.0-ballot) är nu ett beroende. Beroendena till IPS (`hl7.fhir.uv.ips`) och EPS (`hl7.fhir.eu.eps`) är borttagna, liksom IPS-spåren i profilerna och i mappningen av GetDiagnosis.
- Ett nytt avsnitt motiverar valet av FHIR R4: målet är R5, men först behöver de externa beroendena finnas för R5 ([Val av FHIR-version](index.html#fhir-version)).

**Profiler**

- Alla profiler, extensioner och logiska modeller har bytt prefix från `IneraEHDS` till `SEEHDS`.
- `SEEHDSPractitionerRole` och CapabilityStatement-profilen `SEEHDSResourceAccessProvider` är nya.
- Auditloggningen följer IHE BALP och mXDE. `SEEHDSAuditEventReadAccessLog` ersätter den tidigare loggprofilen.
- `SEEHDSCompositionCareDocumentation` och `SEEHDSDocumentReference` har utökats för vårddokumentation.
- GetDiagnosis: `patientId` mappas som PersonIdType `{id, type}`, och `abatementDateTime` har lagts till.

**Logiska modeller**

- Alla 15 logiska modeller genereras nu från tjänstekontraktens XSD med verktyget `tools/rivta-lm`. Modellerna använder RIV-TA-datatyper, XML-namnrymder och XML-namn, så att de kan användas som källa i FHIR Mapping Language. Se [Logiska modeller](logical-models.html).
- GetLaboratoryOrderOutcome och GetMedicationHistory är kompletta.
- GetObservations, GetRequestActivities och GetAccessLogForPatient följer TKB:ns logiska meddelandemodell i stället för en platt struktur.
- Kardinaliteterna är verifierade mot TKB:ns fältregler. Där TKB är strängare än XSD gäller TKB.
- XSD-element som heter `id` eller `extension` heter `rivId` respektive `rivExtension` i modellerna, eftersom namnen annars krockar med FHIR:s ärvda element.

**Mappningar och mappningsbeslut**

- Ny undersida om DocBook-narrativ i vårddokumentation.
- Valideringsfixar från EHDS-bryggan är införda i mappningsspecifikationerna.
- documentTime-undantaget för `recordedDate` och `Provenance.recorded` är förtydligat, och spärrtiden för GetDiagnosis är beskriven.
- GENERAL-008, organisationsuppgifter: föreslagen lösning med en contained `Organization` som ögonblicksbild. Uppgifterna `orgUnitTelecom` och `orgUnitEmail` utelämnas normalt när det är en patient som anropar.
- `documentTitle`:
  - Imaging och Referral mappar den till `DiagnosticReport.code.text`.
  - Vaccination mappar den till `Immunization.note`.
  - Medication undertrycker den (0..0).
- Mödravård: varje sektion blir en grupperande `Observation`.
- CareContacts: `careContactOrgUnit.orgUnitHSAId` och `orgUnitName` är 0..1.
- Lösta mappningsissues är stängda och sammanfogade på [Mappningsissues](mapping-issues.html).

**Bygge och kvalitetssäkring**

- PR-kontrollen (IG Publisher QA) misslyckas nu om IG Publisher avbryter publiceringen. Tidigare kunde en krasch se ut som ett lyckat bygge.
- Notifieringen till fhir-portal stoppar inte längre publiceringen om den misslyckas.

#### 0.3.3 — 2026-06-25 (Draft)

- `ig_slug` tillagd i dispatch-anropet till fhir-portal.

#### 0.3.2 — 2026-06-25 (Draft)

- Ompublicering med rättat publiceringsflöde och rättade publiceringssökvägar.

#### 0.3.1 — 2026-06-24 (Draft)

- Första publicerade versionen, med profiler, logiska modeller och mappningar för 16 tjänstekontrakt.

#### 0.1.0 — 2026-06-16 (Draft)

- Grundstrukturen etablerad.
- Mallprofilen IneraPatient tillagd.
- Platshållarsidor för arbetsflöde, logiska modeller, mappningar och nedladdningar tillagda.

---

> **Vägledning för författare:** Lägg till en rad i tabellen och ett avsnitt i ändringsloggen för varje publicerad version. Följ [semantisk versionshantering](https://semver.org/). Före 1.0.0 räknas minor-versionen upp även för ändringar som bryter bakåtkompatibiliteten. Ange publiceringsdatum, status (Draft, STU eller Normative) och en kort sammanfattning av vad som har ändrats.
