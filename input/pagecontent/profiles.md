# Profiles

Denna sida listar alla FHIR-profiler definierade i denna IG, grupperade per FHIR-grupp. Se [Mappings](mappings.html) för hur respektive profil relaterar till RIVTA-tjänstekontrakten.

Profilerna ärver HL7 Europe Core där en EU Core-profil finns, annars FHIR-basresursen, så att de är en giltig profilering av EURIDICE. De heter `SEEHDS…` med `Id` lika med namnet, enligt de svenska basprofilernas konvention. Se [Vad IG:n utlovar](index.html#loften).

Kraven på API:et anges i [SEEHDSResourceAccessProvider](CapabilityStatement-SEEHDSResourceAccessProvider.html), som utgår från EURIDICE:s Resource Access Provider.

---

### Gemensamma profiler

| Profil | Basresurs | Beskrivning |
|---|---|---|
| [SEEHDSPatient](StructureDefinition-SEEHDSPatient.html) | EU Core Patient (patient-eu-core) | Patient med identifierarslicar enligt SEBasePatient (personnummer, samordningsnummer, nationelltReservnummer). Skapas utifrån patientId, se GENERAL-006. |
| [SEEHDSPractitionerRole](StructureDefinition-SEEHDSPractitionerRole.html) | EU Core PractitionerRole (practitionerRole-eu-core) | Personal i uppdrag; identifier-slice `hsaid` enligt SEBasePractitionerRole. Används som logisk referens. |
| [SEEHDSOrganization](StructureDefinition-SEEHDSOrganization.html) | EU Core Organization (organization-eu-core) | Organisationsenhet; identifier-slice `hsaid` enligt SEBaseOrganization samt SMI-id. |
| [SEEHDSProvenance](StructureDefinition-SEEHDSProvenance.html) | Provenance | Provenance med tre agenter: custodian (vårdgivare), author (vårdenhet), assembler (EHDS-bryggan). |

---

### Patientöversikt

| Profil | Basresurs | Tjänstekontrakt |
|---|---|---|
| [SEEHDSConditionDiagnosis](StructureDefinition-SEEHDSConditionDiagnosis.html) | EU Core Condition (condition-eu-core) | GetDiagnosis |
| [SEEHDSAllergyIntolerance](StructureDefinition-SEEHDSAllergyIntolerance.html) | EU Core AllergyIntolerance (allergyIntolerance-eu-core) | GetAlertInformation (allergi/överkänslighet) |
| [SEEHDSFlag](StructureDefinition-SEEHDSFlag.html) | EU Core Flag (flag-eu-core) | GetAlertInformation (varning) |
| [SEEHDSMedicationStatement](StructureDefinition-SEEHDSMedicationStatement.html) | EU Core MedicationStatement (medicationStatement-eu-core) | GetMedicationHistory |
| [SEEHDSImmunization](StructureDefinition-SEEHDSImmunization.html) | EU Core Immunization (immunization-eu-core) | GetVaccinationHistory |
| [SEEHDSConditionFunctional](StructureDefinition-SEEHDSConditionFunctional.html) | EU Core Condition (condition-eu-core) | GetFunctionalStatus |
| [SEEHDSObservationMaternity](StructureDefinition-SEEHDSObservationMaternity.html) | Observation | GetMaternityMedicalHistory |
| [SEEHDSCarePlan](StructureDefinition-SEEHDSCarePlan.html) | CarePlan | GetCarePlans |
| [SEEHDSEncounter](StructureDefinition-SEEHDSEncounter.html) | Encounter | GetCareContacts |
| [SEEHDSDocumentReference](StructureDefinition-SEEHDSDocumentReference.html) | DocumentReference | GetCareDocumentation |
| [SEEHDSCompositionCareDocumentation](StructureDefinition-SEEHDSCompositionCareDocumentation.html) | EU Core Composition (composition-eu-core) | GetCareDocumentation – valfri strukturerad representation av DocBook ([DocBook-mappning](guidance-docbook-narrative.html)) |

---

### Laboratorie och diagnostik

| Profil | Basresurs | Tjänstekontrakt |
|---|---|---|
| [SEEHDSDiagnosticReportLab](StructureDefinition-SEEHDSDiagnosticReportLab.html) | EU Core DiagnosticReport (diagnosticReport-eu-core) | GetLaboratoryOrderOutcome |
| [SEEHDSObservationLab](StructureDefinition-SEEHDSObservationLab.html) | EU Core MedicalTestResult (medicalTestResult-eu-core) | GetLaboratoryOrderOutcome |

---

### Bilddiagnostik

| Profil | Basresurs | Tjänstekontrakt |
|---|---|---|
| [SEEHDSImagingStudy](StructureDefinition-SEEHDSImagingStudy.html) | ImagingStudy | GetImagingOutcome |
| [SEEHDSDiagnosticReportImaging](StructureDefinition-SEEHDSDiagnosticReportImaging.html) | EU Core DiagnosticReport (diagnosticReport-eu-core) | GetImagingOutcome |

---

### Remiss och process

| Profil | Basresurs | Tjänstekontrakt |
|---|---|---|
| [SEEHDSServiceRequestReferral](StructureDefinition-SEEHDSServiceRequestReferral.html) | ServiceRequest | GetReferralOutcome |
| [SEEHDSDiagnosticReportReferral](StructureDefinition-SEEHDSDiagnosticReportReferral.html) | EU Core DiagnosticReport (diagnosticReport-eu-core) | GetReferralOutcome |
| [SEEHDSTask](StructureDefinition-SEEHDSTask.html) | Task | GetRequestActivities |

---

### Tillväxtkurva barn

| Profil | Basresurs | Tjänstekontrakt |
|---|---|---|
| [SEEHDSObservationGrowth](StructureDefinition-SEEHDSObservationGrowth.html) | SEEHDSObservationBase (Observation) | GetObservations |

---

### Logg

| Profil | Basresurs | Tjänstekontrakt |
|---|---|---|
| [SEEHDSAuditEventReadAccessLog](StructureDefinition-SEEHDSAuditEventReadAccessLog.html) | AuditEvent | GetAccessLogForPatient – läsning av åtkomstloggar |
| [SEEHDSAuditEventPatientQuery](StructureDefinition-SEEHDSAuditEventPatientQuery.html) | IHE BALP PatientQuery | Loggpost som skapas vid sökning/träfflista i API:et ([Auditloggning](mapping-getaccesslogforpatient.html)) |
| [SEEHDSAuditEventPatientRead](StructureDefinition-SEEHDSAuditEventPatientRead.html) | IHE BALP PatientRead | Loggpost som skapas vid innehållshämtning i API:et ([Auditloggning](mapping-getaccesslogforpatient.html)) |
