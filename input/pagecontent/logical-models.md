# Logical Models

Denna sida dokumenterar de logiska informationsmodeller som utgör grunden för profilerna i denna IG. De logiska modellerna fångar informationskraven från Ineras RIVTA-tjänstekontrakt oberoende av teknisk representation.

---

### Syfte

De logiska modellerna nedan representerar de informationskrav som definieras av respektive tjänstekontrakt i Ineras tjänstekatalog. De tjänar som auktoritativ källa för vilka data som ska utväxlas och utgör grunden för FHIR-profilerna i IG:t.

---

### Modeller

| Logisk modell | Tjänstekontrakt | FHIR-grupp |
|---|---|---|
| [SEEHDSLMDiagnosis](StructureDefinition-SEEHDSLMDiagnosis.html) | GetDiagnosis | Patientöversikt |
| [SEEHDSLMAlertInformation](StructureDefinition-SEEHDSLMAlertInformation.html) | GetAlertInformation | Patientöversikt |
| [SEEHDSLMMedicationHistory](StructureDefinition-SEEHDSLMMedicationHistory.html) | GetMedicationHistory | Patientöversikt |
| [SEEHDSLMVaccinationHistory](StructureDefinition-SEEHDSLMVaccinationHistory.html) | GetVaccinationHistory | Patientöversikt |
| [SEEHDSLMFunctionalStatus](StructureDefinition-SEEHDSLMFunctionalStatus.html) | GetFunctionalStatus | Patientöversikt |
| [SEEHDSLMMaternityMedicalHistory](StructureDefinition-SEEHDSLMMaternityMedicalHistory.html) | GetMaternityMedicalHistory | Patientöversikt |
| [SEEHDSLMCarePlans](StructureDefinition-SEEHDSLMCarePlans.html) | GetCarePlans | Patientöversikt |
| [SEEHDSLMCareContacts](StructureDefinition-SEEHDSLMCareContacts.html) | GetCareContacts | Patientöversikt |
| [SEEHDSLMCareDocumentation](StructureDefinition-SEEHDSLMCareDocumentation.html) | GetCareDocumentation | Patientöversikt |
| [SEEHDSLMLaboratoryOrderOutcome](StructureDefinition-SEEHDSLMLaboratoryOrderOutcome.html) | GetLaboratoryOrderOutcome | Laboratorie och diagnostik |
| [SEEHDSLMImagingOutcome](StructureDefinition-SEEHDSLMImagingOutcome.html) | GetImagingOutcome | Bilddiagnostik |
| [SEEHDSLMReferralOutcome](StructureDefinition-SEEHDSLMReferralOutcome.html) | GetReferralOutcome | Remiss och process |
| [SEEHDSLMRequestActivities](StructureDefinition-SEEHDSLMRequestActivities.html) | GetRequestActivities | Remiss och process |
| [SEEHDSLMObservations](StructureDefinition-SEEHDSLMObservations.html) | GetObservations | Tillväxtkurva barn |
| [SEEHDSLMAccessLog](StructureDefinition-SEEHDSLMAccessLog.html) | GetAccessLogForPatient | Logg |

---

### Gemensamma headerelement

Alla tjänstekontrakt med klinisk information delar ett headermönster (`PatientSummaryHeader` eller liknande) med dessa obligatoriska element:

| Element | Typ | Beskrivning |
|---|---|---|
| `patientId` | Identifier | Personnummer, samordningsnummer eller reservnummer |
| `sourceSystemHSAId` | string | Källsystemets HSA-id |
| `documentTime` | dateTime | Registreringstidpunkt (YYYYMMDDHHMMSS, Europe/Stockholm) |
| `accountableHealthcareProfessional` | Identifier | Ansvarig hälso- och sjukvårdspersonals HSA-id |
| `careProviderHSAId` | string | Vårdgivarens HSA-id (yttre Sparr) |
| `careUnitHSAId` | string | Vårdenhetens HSA-id (inre Sparr) |

Se [Mappings](mappings.html) för hur dessa headerElement mappas till FHIR.

> **Vägledning för författare:** Logiska modeller definieras som FHIR `StructureDefinition`-resurser med `kind = logical` i FSH. De finns i `input/fsh/logicalmodels/`.
