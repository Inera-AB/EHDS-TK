<!-- Genererad av tools/rivta-lm/vdiff.py: SEEHDSLMVaccinationHistoryV10 mot SEEHDSLMVaccinationHistory. Redigera inte för hand. -->

| Element | 1.0 | 2.0 | Skillnad |
|---|---|---|---|
| `vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage` | 0..1 Backbone | – | Finns bara i 1.0 |
| `vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineType` | 0..1 CVType | – | Finns bara i 1.0 |
| `vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose` | – | 0..1 Backbone | Finns bara i 2.0 |
| `vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.typeOfVaccine` | – | 0..1 CVType | Finns bara i 2.0 |
| `vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation` | – | 0..1 Backbone | Finns bara i 2.0 |
| `result` | – | 1..1 Backbone | Finns bara i 2.0 |
| `vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullifiedReason` | 0..1 Boolean | 0..1 String | Ändrad datatyp |
