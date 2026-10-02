# Mappings - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* **Mappings**

## Mappings

# Mappings

Denna sida ger en översikt över hur RIVTA-tjänstekontraktens element mappas till FHIR-profiler i denna IG. Detaljerade mappningstabeller finns på respektive tjänstekontrakts sida.

-------

### Syfte

Mappningarna spårar varje element i de logiska modellerna till det FHIR-profil-element som bär informationen. Detta möjliggör verifiering av täckning och vägleder implementörer som behöver förstå relationen mellan kliniska krav och teknisk representation.

-------

### Översikt per tjänstekontrakt

| | | | |
| :--- | :--- | :--- | :--- |
| GetDiagnosis | [IneraEHDSLMDiagnosis](StructureDefinition-inera-ehds-lm-diagnosis.md) | [IneraEHDSConditionDiagnosis](StructureDefinition-inera-ehds-condition-diagnosis.md) | [mapping-getdiagnosis](mapping-getdiagnosis.md) |
| GetAlertInformation | [IneraEHDSLMAlertInformation](StructureDefinition-inera-ehds-lm-alert-information.md) | [IneraEHDSAllergyIntolerance](StructureDefinition-inera-ehds-allergy-intolerance.md)+[IneraEHDSFlag](StructureDefinition-inera-ehds-flag.md) | [mapping-getalertinformation](mapping-getalertinformation.md) |
| GetMedicationHistory | [IneraEHDSLMMedicationHistory](StructureDefinition-inera-ehds-lm-medication-history.md) | [IneraEHDSMedicationStatement](StructureDefinition-inera-ehds-medication-statement.md) | [mapping-getmedicationhistory](mapping-getmedicationhistory.md) |
| GetVaccinationHistory | [IneraEHDSLMVaccinationHistory](StructureDefinition-inera-ehds-lm-vaccination-history.md) | [IneraEHDSImmunization](StructureDefinition-inera-ehds-immunization.md) | [mapping-getvaccinationhistory](mapping-getvaccinationhistory.md) |
| GetFunctionalStatus | [IneraEHDSLMFunctionalStatus](StructureDefinition-inera-ehds-lm-functional-status.md) | [IneraEHDSConditionFunctional](StructureDefinition-inera-ehds-condition-functional.md) | [mapping-getfunctionalstatus](mapping-getfunctionalstatus.md) |
| GetMaternityMedicalHistory | [IneraEHDSLMMaternityMedicalHistory](StructureDefinition-inera-ehds-lm-maternity-medical-history.md) | [IneraEHDSObservationMaternity](StructureDefinition-inera-ehds-observation-maternity.md) | [mapping-getmaternitymedicalhistory](mapping-getmaternitymedicalhistory.md) |
| GetCarePlans | [IneraEHDSLMCarePlans](StructureDefinition-inera-ehds-lm-care-plans.md) | [IneraEHDSCarePlan](StructureDefinition-inera-ehds-care-plan.md) | [mapping-getcareplans](mapping-getcareplans.md) |
| GetCareContacts | [IneraEHDSLMCareContacts](StructureDefinition-inera-ehds-lm-care-contacts.md) | [IneraEHDSEncounter](StructureDefinition-inera-ehds-encounter.md) | [mapping-getcarecontacts](mapping-getcarecontacts.md) |
| GetCareDocumentation | [IneraEHDSLMCareDocumentation](StructureDefinition-inera-ehds-lm-care-documentation.md) | [IneraEHDSDocumentReference](StructureDefinition-inera-ehds-document-reference.md) | [mapping-getcaredocumentation](mapping-getcaredocumentation.md) |
| GetLaboratoryOrderOutcome | [IneraEHDSLMLaboratoryOrderOutcome](StructureDefinition-inera-ehds-lm-laboratory-order-outcome.md) | [IneraEHDSDiagnosticReportLab](StructureDefinition-inera-ehds-diagnostic-report-lab.md)+[IneraEHDSObservationLab](StructureDefinition-inera-ehds-observation-lab.md) | [mapping-getlaboratoryorderoutcome](mapping-getlaboratoryorderoutcome.md) |
| GetImagingOutcome | [IneraEHDSLMImagingOutcome](StructureDefinition-inera-ehds-lm-imaging-outcome.md) | [IneraEHDSImagingStudy](StructureDefinition-inera-ehds-imaging-study.md)+[IneraEHDSDiagnosticReportImaging](StructureDefinition-inera-ehds-diagnostic-report-imaging.md) | [mapping-getimagingoutcome](mapping-getimagingoutcome.md) |
| GetReferralOutcome | [IneraEHDSLMReferralOutcome](StructureDefinition-inera-ehds-lm-referral-outcome.md) | [IneraEHDSServiceRequestReferral](StructureDefinition-inera-ehds-service-request-referral.md)+[IneraEHDSDiagnosticReportReferral](StructureDefinition-inera-ehds-diagnostic-report-referral.md) | [mapping-getreferraloutcome](mapping-getreferraloutcome.md) |
| GetRequestActivities | [IneraEHDSLMRequestActivities](StructureDefinition-inera-ehds-lm-request-activities.md) | [IneraEHDSTask](StructureDefinition-inera-ehds-task.md) | [mapping-getrequestactivities](mapping-getrequestactivities.md) |
| GetObservations | [IneraEHDSLMObservations](StructureDefinition-inera-ehds-lm-observations.md) | [IneraEHDSObservationGrowth](StructureDefinition-inera-ehds-observation-growth.md) | [mapping-getobservations](mapping-getobservations.md) |
| GetAccessLogForPatient | [IneraEHDSLMAccessLog](StructureDefinition-inera-ehds-lm-access-log.md) | [IneraEHDSAuditEventReadAccessLog](StructureDefinition-inera-ehds-audit-event-read-access-log.md) | [Åtkomstloggar – GetAccessLogForPatient](mapping-getaccesslogforpatient.md#getaccesslogforpatient) |

-------

### Gemensamt headermönster

Alla tjänstekontrakt (utom GetAccessLogForPatient) delar ett headermönster som mappas på följande sätt:

| | | |
| :--- | :--- | :--- |
| `patientId` | `{Resurs}.subject.identifier` | OID→URI-konvertering krävs; logisk referens, se[GENERAL-006](#patientreferens) |
| `sourceSystemHSAId` | `{Resurs}.meta.source` | Format:`https://tjanstekatalogen.inera.se/Endpoint/{hsaId}`, se[GENERAL-005](#meta-source) |
| `documentTime` | `{Resurs}.recordedDate`(eller primär tidsstämpel) | YYYYMMDDHHMMSS → ISO 8601 (Europe/Stockholm).**Gäller endast de TK:er där `documentTime` faktiskt skickas.**GetDiagnosis har`documentTime`0..0 per TKB och använder istället`accountableHealthcareProfessional.authorTime`för`recordedDate`– se den tjänstekontraktsspecifika mappningssidan för auktoritativ källa per TK. |
| `accountableHealthcareProfessional` | `{Resurs}.recorder`/`author`/`performer` | Logisk referens via HSA-id |
| `legalAuthenticator` | `{Resurs}.asserter`/`authenticator` | Logisk referens via HSA-id |
| `careProviderHSAId` | `Provenance.agent[custodian].who.identifier` | Yttre Sparr |
| `careUnitHSAId` | `Provenance.agent[author].who.identifier` | Inre Sparr |

> **OBS om server-side filtrering:** Om den FHIR-server som tillhandahåller data själv hanterar åtkomstfiltrering baserat på anropande vårdpersonals kontext eller patientens e-hälsotjänst, behöver Provenance-spärr-agenterna och `approvedForPatient`-säkerhetsmärkning (se PDL-001) inte inkluderas i svaret — filtreringen sker då redan på servernivå.

-------

### Tidsstämplar och tidszon (GENERAL-001)

RIVTA-tidsstämplar (`YYYYMMDDhhmmss`) saknar tidszon. FHIR kräver tidszon för `dateTime` med klockslag och för `instant`. Följande regler gäller för alla tjänstekontrakt:

1. **Tolkning:**RIVTA-tidsstämplar tolkas som**lokal tid i `Europe/Stockholm`**, med hänsyn till sommartid (CET`+01:00`, CEST`+02:00`).
1. **`dateTime` med klockslag**får explicit offset, t.ex.`20230601120000`→`2023-06-01T12:00:00+02:00`och`20230115120000`→`2023-01-15T12:00:00+01:00`.
1. **`instant`**(t.ex.`Provenance.recorded`,`DocumentReference.date`,`DiagnosticReport.issued`,`Observation.issued`,`AuditEvent.recorded`) ska ange**samma tidpunkt**som motsvarande lokala tid. För konsekvens rekommenderas samma offset-form som för`dateTime`(`2023-06-01T12:00:00+02:00`). UTC-form (`2023-06-01T10:00:00Z`) är tillåten endast efter korrekt konvertering. Att lägga till`Z`på en okonverterad lokal tid är fel (1–2 timmars avvikelse).
1. **Lägre precision:**`YYYYMMDD`→`date`(`2023-06-01`) utan tidszon.`YYYYMM`/`YYYY`→ se OBS-001.
1. **Sommartidsövergångar:**En lokal tid som förekommer två gånger (när sommartiden slutar) tolkas som den tidigare förekomsten (`+02:00`). En lokal tid som inte finns (när sommartiden börjar) flyttas fram med övergångens längd.

### meta.source – källsystem (GENERAL-005)

`meta.source` anges som källsystemets Endpoint i Ineras tjänstekatalog:

```
https://tjanstekatalogen.inera.se/Endpoint/{hsaId}

```

där `{hsaId}` är källsystemets HSA-id (`sourceSystemHSAId`/`sourceSystemId`). Det tidigare formatet `urn:oid:1.2.752.129.2.1.4.1#{hsaId}` är inte en giltig OID-URN i FHIR och ska inte användas.

### Patientreferens – logisk referens (GENERAL-006)

Patienten anges i alla profiler som en **logisk referens** till [IneraEHDSPatient](StructureDefinition-inera-ehds-patient.md) via `identifier` (personnummer eller samordningsnummer, OID→URI enligt GENERAL-002):

```
"subject": { "identifier": { "system": "http://electronichealth.se/identifier/personnummer", "value": "191212121212" } }

```

Detta gäller `subject` respektive `patient` i samtliga resurser, t.ex. både `Condition.subject` och `DocumentReference.subject`.

> **Medvetet avsteg från IPS:** IPS-profilerna (t.ex. Condition-uv-ips) kräver `subject.reference`. RIVTA-svaren innehåller ingen Patient-resurs, och bryggan skapar ingen. En resurs med enbart logisk referens uppfyller därför inte IPS-kravet på `subject.reference` vid validering. Om en Patient-resurs finns tillgänglig (t.ex. i samma Bundle) kan `reference` anges utöver `identifier`.

