Profile: SEEHDSImmunization
Parent: $Immunization-uv-ips
Id: se-ehds-immunization
Title: "SE EHDS Immunization – Vaccinationer (GetVaccinationHistory)"
Description: "Profil för vaccinationer mappat från RIVTA-tjänstekontraktet GetVaccinationHistory (clinicalprocess:activityprescription:actoutcome v2.0). Täcker NPÖ 2.0 och 1177 Journal 1.0, 2.0."

* patient only Reference(SEEHDSPatient)
* patient MS
* patient ^short = "Patient (vaccinationMedicalRecordHeader.patientId)"

* meta.source MS
* meta.source ^short = "Källsystem HSA-id (vaccinationMedicalRecordHeader.sourceSystemHSAId)"

* performer MS
* performer.actor only Reference(PractitionerRole or Organization)
* performer.actor MS
* performer.actor ^short = "Administrerande personal/enhet (vaccinationMedicalRecordHeader.accountableHealthCareProfessional)"

* recorded MS
* recorded ^short = "Dokumentationstidpunkt (vaccinationMedicalRecordHeader.accountableHealthCareProfessional.authorTime)"

* status 1..1 MS
* status ^short = "Vaccinationsstatus – 'completed' normalt; 'entered-in-error' om vaccinationMedicalRecordHeader.nullified=true"

* vaccineCode 1..1 MS
* vaccineCode ^short = "Vaccin (administrationRecord.typeOfVaccine / administrationRecord.vaccineName)"

* occurrenceDateTime MS
* occurrenceDateTime ^short = "Vaccinationsdatum (vaccinationMedicalRecordBody.registrationRecord.date)"

* lotNumber MS
* lotNumber ^short = "Batchnummer (administrationRecord.vaccineBatchId)"

* site MS
* site ^short = "Injektionsställe (administrationRecord.anatomicalSite)"

* route MS
* route ^short = "Administreringssätt (administrationRecord.route)"

* doseQuantity MS
* doseQuantity ^short = "Dos (administrationRecord.dose.quantity)"

* protocolApplied MS
* protocolApplied ^short = "Vaccinationsprotokoll (administrationRecord.doseOrdinalNumber / vaccineTargetDisease)"
* protocolApplied.doseNumberPositiveInt MS
* protocolApplied.doseNumberPositiveInt ^short = "Dosnummer (administrationRecord.doseOrdinalNumber)"

* note MS
* note ^short = "Kommentar (administrationRecord.commentAdministration / administrationRecord.commentPrescription)"
