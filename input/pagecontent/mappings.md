# Mappings

Denna sida ger en översikt över hur RIVTA-tjänstekontraktens element mappas till FHIR-profiler i denna IG. Detaljerade mappningstabeller finns på respektive tjänstekontrakts sida.

---

### Syfte

Mappningarna spårar varje element i de logiska modellerna till det FHIR-profil-element som bär informationen. Detta möjliggör verifiering av täckning och vägleder implementörer som behöver förstå relationen mellan kliniska krav och teknisk representation.

---

### Översikt per tjänstekontrakt

| Tjänstekontrakt | Logisk modell | FHIR-profil(er) | Mappningssida |
|---|---|---|---|
| GetDiagnosis | [SEEHDSLMDiagnosis](StructureDefinition-SEEHDSLMDiagnosis.html) | [SEEHDSConditionDiagnosis](StructureDefinition-SEEHDSConditionDiagnosis.html) | [mapping-getdiagnosis](mapping-getdiagnosis.html) |
| GetAlertInformation | [SEEHDSLMAlertInformation](StructureDefinition-SEEHDSLMAlertInformation.html) | [SEEHDSAllergyIntolerance](StructureDefinition-SEEHDSAllergyIntolerance.html) + [SEEHDSFlag](StructureDefinition-SEEHDSFlag.html) | [mapping-getalertinformation](mapping-getalertinformation.html) |
| GetMedicationHistory | [SEEHDSLMMedicationHistory](StructureDefinition-SEEHDSLMMedicationHistory.html) | [SEEHDSMedicationStatement](StructureDefinition-SEEHDSMedicationStatement.html) | [mapping-getmedicationhistory](mapping-getmedicationhistory.html) |
| GetVaccinationHistory | [SEEHDSLMVaccinationHistory](StructureDefinition-SEEHDSLMVaccinationHistory.html) | [SEEHDSImmunization](StructureDefinition-SEEHDSImmunization.html) | [mapping-getvaccinationhistory](mapping-getvaccinationhistory.html) |
| GetFunctionalStatus | [SEEHDSLMFunctionalStatus](StructureDefinition-SEEHDSLMFunctionalStatus.html) | [SEEHDSConditionFunctional](StructureDefinition-SEEHDSConditionFunctional.html) | [mapping-getfunctionalstatus](mapping-getfunctionalstatus.html) |
| GetMaternityMedicalHistory | [SEEHDSLMMaternityMedicalHistory](StructureDefinition-SEEHDSLMMaternityMedicalHistory.html) | [SEEHDSObservationMaternity](StructureDefinition-SEEHDSObservationMaternity.html) | [mapping-getmaternitymedicalhistory](mapping-getmaternitymedicalhistory.html) |
| GetCarePlans | [SEEHDSLMCarePlans](StructureDefinition-SEEHDSLMCarePlans.html) | [SEEHDSCarePlan](StructureDefinition-SEEHDSCarePlan.html) | [mapping-getcareplans](mapping-getcareplans.html) |
| GetCareContacts | [SEEHDSLMCareContacts](StructureDefinition-SEEHDSLMCareContacts.html) | [SEEHDSEncounter](StructureDefinition-SEEHDSEncounter.html) | [mapping-getcarecontacts](mapping-getcarecontacts.html) |
| GetCareDocumentation | [SEEHDSLMCareDocumentation](StructureDefinition-SEEHDSLMCareDocumentation.html) | [SEEHDSDocumentReference](StructureDefinition-SEEHDSDocumentReference.html) | [mapping-getcaredocumentation](mapping-getcaredocumentation.html) |
| GetLaboratoryOrderOutcome | [SEEHDSLMLaboratoryOrderOutcome](StructureDefinition-SEEHDSLMLaboratoryOrderOutcome.html) | [SEEHDSDiagnosticReportLab](StructureDefinition-SEEHDSDiagnosticReportLab.html) + [SEEHDSObservationLab](StructureDefinition-SEEHDSObservationLab.html) | [mapping-getlaboratoryorderoutcome](mapping-getlaboratoryorderoutcome.html) |
| GetImagingOutcome | [SEEHDSLMImagingOutcome](StructureDefinition-SEEHDSLMImagingOutcome.html) | [SEEHDSImagingStudy](StructureDefinition-SEEHDSImagingStudy.html) + [SEEHDSDiagnosticReportImaging](StructureDefinition-SEEHDSDiagnosticReportImaging.html) | [mapping-getimagingoutcome](mapping-getimagingoutcome.html) |
| GetReferralOutcome | [SEEHDSLMReferralOutcome](StructureDefinition-SEEHDSLMReferralOutcome.html) | [SEEHDSServiceRequestReferral](StructureDefinition-SEEHDSServiceRequestReferral.html) + [SEEHDSDiagnosticReportReferral](StructureDefinition-SEEHDSDiagnosticReportReferral.html) | [mapping-getreferraloutcome](mapping-getreferraloutcome.html) |
| GetRequestActivities | [SEEHDSLMRequestActivities](StructureDefinition-SEEHDSLMRequestActivities.html) | [SEEHDSTask](StructureDefinition-SEEHDSTask.html) | [mapping-getrequestactivities](mapping-getrequestactivities.html) |
| GetObservations | [SEEHDSLMObservations](StructureDefinition-SEEHDSLMObservations.html) | [SEEHDSObservationGrowth](StructureDefinition-SEEHDSObservationGrowth.html) | [mapping-getobservations](mapping-getobservations.html) |
| GetAccessLogForPatient | [SEEHDSLMAccessLog](StructureDefinition-SEEHDSLMAccessLog.html) | [SEEHDSAuditEventReadAccessLog](StructureDefinition-SEEHDSAuditEventReadAccessLog.html) | [Åtkomstloggar – GetAccessLogForPatient](mapping-getaccesslogforpatient.html#getaccesslogforpatient) |

---

### Gemensamt headermönster

Alla tjänstekontrakt (utom GetAccessLogForPatient) delar ett headermönster som mappas på följande sätt:

| Header-element | FHIR-destination | Notering |
|---|---|---|
| `patientId` | `{Resurs}.subject` (`reference` + `identifier`) | Referens till SEEHDSPatient; OID→URI-konvertering krävs, se [GENERAL-006](#patientreferens) |
| `sourceSystemHSAId` | `{Resurs}.meta.source` | Format: `https://tjanstekatalogen.inera.se/Endpoint/{hsaId}`, se [GENERAL-005](#meta-source) |
| `documentTime` | `{Resurs}.recordedDate` (eller primär tidsstämpel) | YYYYMMDDHHMMSS → ISO 8601 (Europe/Stockholm). **Gäller endast de TK:er där `documentTime` faktiskt skickas.** GetDiagnosis har `documentTime` 0..0 per TKB och använder istället `accountableHealthcareProfessional.authorTime` för `recordedDate` – se den tjänstekontraktsspecifika mappningssidan för auktoritativ källa per TK. |
| `accountableHealthcareProfessional` | `{Resurs}.recorder` / `author` / `performer` | Logisk referens via HSA-id |
| `legalAuthenticator` | `{Resurs}.asserter` / `authenticator` | Logisk referens via HSA-id |
| `careProviderHSAId` | `Provenance.agent[custodian].who.identifier` | Yttre Sparr |
| `careUnitHSAId` | `Provenance.agent[author].who.identifier` | Inre Sparr |

> **OBS om server-side filtrering:** Om den FHIR-server som tillhandahåller data själv hanterar åtkomstfiltrering baserat på anropande vårdpersonals kontext eller patientens e-hälsotjänst, behöver Provenance-spärr-agenterna och `approvedForPatient`-säkerhetsmärkning (se PDL-001) inte inkluderas i svaret — filtreringen sker då redan på servernivå.

---

### Tidsstämplar och tidszon (GENERAL-001) {#tidszon}

RIVTA-tidsstämplar (`YYYYMMDDhhmmss`) saknar tidszon. FHIR kräver tidszon för `dateTime` med
klockslag och för `instant`. Följande regler gäller för alla tjänstekontrakt:

1. **Tolkning:** RIVTA-tidsstämplar tolkas som **lokal tid i `Europe/Stockholm`**, med hänsyn till
   sommartid (CET `+01:00`, CEST `+02:00`).
2. **`dateTime` med klockslag** får explicit offset, t.ex. `20230601120000` →
   `2023-06-01T12:00:00+02:00` och `20230115120000` → `2023-01-15T12:00:00+01:00`.
3. **`instant`** (t.ex. `Provenance.recorded`, `DocumentReference.date`, `DiagnosticReport.issued`,
   `Observation.issued`, `AuditEvent.recorded`) ska ange **samma tidpunkt** som motsvarande lokala
   tid. För konsekvens rekommenderas samma offset-form som för `dateTime`
   (`2023-06-01T12:00:00+02:00`). UTC-form (`2023-06-01T10:00:00Z`) är tillåten endast efter
   korrekt konvertering. Att lägga till `Z` på en okonverterad lokal tid är fel (1–2 timmars avvikelse).
4. **Lägre precision:** `YYYYMMDD` → `date` (`2023-06-01`) utan tidszon. `YYYYMM`/`YYYY` → se OBS-001.
5. **Sommartidsövergångar:** En lokal tid som förekommer två gånger (när sommartiden slutar)
   tolkas som den tidigare förekomsten (`+02:00`). En lokal tid som inte finns (när sommartiden
   börjar) flyttas fram med övergångens längd.

### meta.source – källsystem (GENERAL-005) {#meta-source}

`meta.source` anges som källsystemets Endpoint i Ineras tjänstekatalog:

```
https://tjanstekatalogen.inera.se/Endpoint/{hsaId}
```

där `{hsaId}` är källsystemets HSA-id (`sourceSystemHSAId`/`sourceSystemId`). Det tidigare formatet
`urn:oid:1.2.752.129.2.1.4.1#{hsaId}` är inte en giltig OID-URN i FHIR och ska inte användas.

### Patientreferens (GENERAL-006) {#patientreferens}

HL7 Europe Core kräver `subject.reference` (respektive `patient.reference`) och referens till en
EU Core Patient. Eftersom IG:n utlovar att vara en giltig profilering av EURIDICE gäller följande:

1. API:et skapar en [SEEHDSPatient](StructureDefinition-SEEHDSPatient.html)-resurs per patient,
   utifrån `patientId` i RIVTA-svaret.
2. Alla resurser refererar patienten med **både** `reference` och `identifier`:

```json
"subject": {
  "reference": "Patient/{id}",
  "identifier": { "system": "http://electronichealth.se/identifier/personnummer", "value": "191212121212" }
}
```

3. SEEHDSPatient fylls så här, eftersom EU Core Patient kräver `name` och `birthDate`:

| Element | Källa |
|---|---|
| `identifier` | `patientId` (OID→URI enligt GENERAL-002), slice `personnummer`, `samordningsnummer` eller `nationelltReservnummer` |
| `birthDate` | Härleds ur personnummer (`ÅÅÅÅMMDD`) eller samordningsnummer (dag − 60). För reservnummer: `data-absent-reason` |
| `name` | Om namnet är känt (t.ex. från TKB:n eller personuppgiftstjänsten). Annars ett `HumanName` med extensionen `data-absent-reason` (`unknown`), vilket EU Core uttryckligen tillåter |

Detta gäller `subject` respektive `patient` i samtliga resurser, t.ex. både `Condition.subject` och
`DocumentReference.subject`.

### Organisationsenheter, kontaktuppgifter och historik (GENERAL-008) {#organisation}

> **Status: föreslagen lösning.** Avsnittet föreslår `contained` Organization. Profilerna är ännu inte ändrade, och dagens mappning (logisk referens med HSA-id och namn) gäller tills vidare. Frågan ersätter CC-002, CP-003, REF-004 och MAT-002.

#### Problemet

RIVTA-svaren innehåller organisationsenheter av typen `OrgUnitType` (t.ex. `healthcareProfessionalOrgUnit` och `careContactOrgUnit`) med HSA-id, namn och kontaktuppgifter: `orgUnitTelecom`, `orgUnitEmail`, `orgUnitAddress` och `orgUnitLocation`. HSA saknar historik, så ett uppslag på HSA-id ger dagens uppgifter, inte de som gällde när informationen dokumenterades. Därför skickar tjänsteproducenten med enhetens uppgifter i varje svar som en ögonblicksbild, och det är bara den som är korrekt för historiska data. Med enbart en logisk referens (`identifier` = HSA-id, `display` = namn) försvinner ögonblicksbilden.

#### FHIR-mekanismer för att skicka med Organization

**A. Inkluderade resurser i sökresultatet (`_include`).** En sökning kan returnera refererade resurser i samma Bundle, markerade med `Bundle.entry.search.mode = include`, t.ex. `GET [base]/Encounter?patient=…&_include=Encounter:service-provider`.

- *Fördel:* standardmönstret för att skicka med extra resurser i ett svar; ingen dubblering inom svaret.
- *Nackdel:* en Organization-resurs har en identitet (`Organization/[id]`) som ska gå att läsa igen. Eftersom samma HSA-id kan ha olika uppgifter i olika svar måste id:t representera ögonblicksbilden, inte enheten. Det kräver att API:et lagrar ögonblicksbilderna eller bildar id deterministiskt ur innehållet. Bryggan är i dag tillståndslös. `_include` måste också deklareras i CapabilityStatement.

**B. Inbäddade resurser (`contained`).** Organisationen bäddas in i den resurs som refererar den (`"reference": "#org1"`), med HSA-id i `Organization.identifier` och producentens uppgifter i `name`, `telecom` och `address`. FHIR anger att inbäddade resurser används när innehållet saknar självständig existens, till exempel när källan bara har en ögonblicksbild. Det motsvarar situationen här.

- *Fördel:* ögonblicksbilden följer alltid med den resurs den gäller; ingen lagring eller id-hantering i API:et; fungerar för både sökning och läsning.
- *Nackdel:* uppgifterna upprepas i varje resurs; den inbäddade organisationen kan inte sökas eller refereras från andra resurser.

**C. Endast logisk referens.** `identifier` och `display` utan kontaktuppgifter. Det är dagens mappning. Historiska kontaktuppgifter går förlorade.

#### Förslag: inbäddad Organization (`contained`)

Producentens organisationsenhet bäddas in som en `contained` Organization i den resurs som refererar den (direkt eller via en inbäddad PractitionerRole):

```json
"contained": [{
  "resourceType": "Organization",
  "id": "org1",
  "identifier": [{ "system": "urn:oid:1.2.752.29.4.19", "value": "SE2321000016-ABCD" }],
  "name": "Vårdcentralen Exempel",
  "telecom": [
    { "system": "phone", "value": "+46-8-123 45 67" },
    { "system": "email", "value": "exempel@region.se" }
  ],
  "address": [{ "text": "Exempelgatan 1, 123 45 Exempelstad" }]
}]
```

- `orgUnitHSAId` → `Organization.identifier` (HSA-id), så att mottagaren kan slå upp dagens uppgifter vid behov.
- `orgUnitName` → `Organization.name`.
- `orgUnitTelecom` → `Organization.telecom` (`system = phone`); `orgUnitEmail` → `Organization.telecom` (`system = email`).
- `orgUnitAddress` → `Organization.address.text`; `orgUnitLocation` → `Organization.address.city` eller `text`, beroende på innehåll.

`_include` (alternativ A) blir aktuellt först om API:et får en lagrande komponent eller om samma organisation behöver delas mellan många resurser i stora svar.

#### Kontaktuppgifter vid patientens egen åtkomst

`orgUnitTelecom` och `orgUnitEmail` brukar utelämnas när det är patienten som gör anropet, eftersom de främst är avsedda för kontakt mellan vårdgivare. Det kan komma att ändras av krav i EHDS. Om API:et tar bort element ur en resurs märks den med `meta.tag` = `http://terminology.hl7.org/CodeSystem/v3-ObservationValue#SUBSETTED`.
