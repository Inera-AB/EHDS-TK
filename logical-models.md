# Logical Models - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* **Logical Models**

## Logical Models

# Logical Models

Denna sida dokumenterar de logiska informationsmodeller som utgör grunden för profilerna i denna IG. De logiska modellerna fångar informationskraven från Ineras RIVTA-tjänstekontrakt oberoende av teknisk representation.

-------

### Syfte

De logiska modellerna nedan representerar de informationskrav som definieras av respektive tjänstekontrakt i Ineras tjänstekatalog. De tjänar som auktoritativ källa för vilka data som ska utväxlas och utgör grunden för FHIR-profilerna i IG:t.

-------

### Modeller

| | | |
| :--- | :--- | :--- |
| [SEEHDSLMDiagnosis](StructureDefinition-SEEHDSLMDiagnosis.md) | GetDiagnosis | Patientöversikt |
| [SEEHDSLMAlertInformation](StructureDefinition-SEEHDSLMAlertInformation.md) | GetAlertInformation | Patientöversikt |
| [SEEHDSLMMedicationHistory](StructureDefinition-SEEHDSLMMedicationHistory.md) | GetMedicationHistory | Patientöversikt |
| [SEEHDSLMVaccinationHistory](StructureDefinition-SEEHDSLMVaccinationHistory.md) | GetVaccinationHistory | Patientöversikt |
| [SEEHDSLMFunctionalStatus](StructureDefinition-SEEHDSLMFunctionalStatus.md) | GetFunctionalStatus | Patientöversikt |
| [SEEHDSLMMaternityMedicalHistory](StructureDefinition-SEEHDSLMMaternityMedicalHistory.md) | GetMaternityMedicalHistory | Patientöversikt |
| [SEEHDSLMCarePlans](StructureDefinition-SEEHDSLMCarePlans.md) | GetCarePlans | Patientöversikt |
| [SEEHDSLMCareContacts](StructureDefinition-SEEHDSLMCareContacts.md) | GetCareContacts | Patientöversikt |
| [SEEHDSLMCareDocumentation](StructureDefinition-SEEHDSLMCareDocumentation.md) | GetCareDocumentation | Patientöversikt |
| [SEEHDSLMLaboratoryOrderOutcome](StructureDefinition-SEEHDSLMLaboratoryOrderOutcome.md) | GetLaboratoryOrderOutcome | Laboratorie och diagnostik |
| [SEEHDSLMImagingOutcome](StructureDefinition-SEEHDSLMImagingOutcome.md) | GetImagingOutcome | Bilddiagnostik |
| [SEEHDSLMReferralOutcome](StructureDefinition-SEEHDSLMReferralOutcome.md) | GetReferralOutcome | Remiss och process |
| [SEEHDSLMRequestActivities](StructureDefinition-SEEHDSLMRequestActivities.md) | GetRequestActivities | Remiss och process |
| [SEEHDSLMObservations](StructureDefinition-SEEHDSLMObservations.md) | GetObservations | Tillväxtkurva barn |
| [SEEHDSLMAccessLog](StructureDefinition-SEEHDSLMAccessLog.md) | GetAccessLogForPatient | Logg |

-------

### Gemensamma headerelement

Alla tjänstekontrakt med klinisk information delar ett headermönster (`PatientSummaryHeader` eller liknande) med dessa obligatoriska element:

| | | |
| :--- | :--- | :--- |
| `patientId` | Identifier | Personnummer, samordningsnummer eller reservnummer |
| `sourceSystemHSAId` | string | Källsystemets HSA-id |
| `documentTime` | dateTime | Registreringstidpunkt (YYYYMMDDHHMMSS, Europe/Stockholm) |
| `accountableHealthcareProfessional` | Identifier | Ansvarig hälso- och sjukvårdspersonals HSA-id |
| `careProviderHSAId` | string | Vårdgivarens HSA-id (yttre Sparr) |
| `careUnitHSAId` | string | Vårdenhetens HSA-id (inre Sparr) |

Se [Mappings](mappings.md) för hur dessa headerElement mappas till FHIR.

> **Vägledning för författare:** Logiska modeller definieras som FHIR `StructureDefinition`-resurser med `kind = logical` i FSH. De finns i `input/fsh/logicalmodels/`.

