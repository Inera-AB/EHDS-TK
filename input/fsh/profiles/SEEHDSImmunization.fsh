Profile: SEEHDSImmunization
Parent: $Immunization-uv-ips
Id: se-ehds-immunization
Title: "SE EHDS Immunization – Vaccinationer (GetVaccinationHistory)"
Description: "Profil för vaccinationer mappat från RIVTA-tjänstekontraktet GetVaccinationHistory (clinicalprocess:activityprescription:actoutcome v2.0). Täcker NPÖ 2.0 och 1177 Journal 1.0, 2.0."

// ─── Header-extensions ───────────────────────────────────────────────────────
* extension contains ImmunizationLegalAuthenticator named legalAuthenticator 0..1 MS
* extension contains ImmunizationPatientPostalCode named patientPostalCode 0..1 MS

// ─── registrationRecord-extensions ───────────────────────────────────────────
* extension contains ImmunizationRiskCategory named riskCategory 0..* MS
* extension contains ImmunizationCareUnitSmiId named careUnitSmiId 0..1 MS

// ─── registrationRecord.sourceSystem* → Device-referens ─────────────────────
* extension contains ImmunizationRegistrationDevice named registrationDevice 0..1 MS

// ─── administrationRecord-extensions ─────────────────────────────────────────
* extension contains ImmunizationIsDoseComplete named isDoseComplete 0..1 MS
* extension contains ImmunizationSourceDescription named sourceDescription 0..1 MS
* extension contains ImmunizationPrescriber named prescriber 0..1 MS

// ─── Header-fält ─────────────────────────────────────────────────────────────

* patient only Reference(SEEHDSPatient)
* patient MS
* patient ^short = "Patient (vaccinationMedicalRecordHeader.patientId)"

* meta.source MS
* meta.source ^short = "Källsystem HSA-id (vaccinationMedicalRecordHeader.sourceSystemHSAId)"

* meta.security MS
* meta.security ^short = "PDL-kontroll (vaccinationMedicalRecordHeader.approvedForPatient) – se PDL-001"

* identifier MS
* identifier ^short = "Dokumentidentifierare (vaccinationMedicalRecordHeader.documentId)"

* status 1..1 MS
* status ^short = "Vaccinationsstatus – 'completed' normalt; 'entered-in-error' om nullified=true"

* statusReason MS
* statusReason ^short = "Makuleringsorsak (vaccinationMedicalRecordHeader.nullifiedReason)"

* encounter MS
* encounter ^short = "Kopplad vårdkontakt (vaccinationMedicalRecordHeader.careContactId)"

// ─── registrationRecord-fält ──────────────────────────────────────────────────

* recorded MS
* recorded ^short = "Registreringsdatum (vaccinationMedicalRecordBody.registrationRecord.date)"

* note MS
* note ^short = "Ostrukturerad anteckning (registrationRecord.vaccinationUnstructuredNote) / kommentar"

// ─── administrationRecord-fält ────────────────────────────────────────────────

* occurrenceDateTime MS
* occurrenceDateTime ^short = "Vaccinationstidpunkt: vaccinationMedicalRecordHeader.documentTime (primär) eller authorTime (fallback)"

* performer MS
* performer.actor only Reference(PractitionerRole or Organization)
* performer.actor MS
* performer.actor ^short = "Administrerande personal/enhet eller juridisk vårdgivare (administrationRecord.performer / performerOrg; registrationRecord.careGiverOrg)"

* vaccineCode 1..1 MS
* vaccineCode ^short = "Vaccin (administrationRecord.typeOfVaccine / administrationRecord.vaccineName)"

* lotNumber MS
* lotNumber ^short = "Batchnummer (administrationRecord.vaccineBatchId)"

* site MS
* site ^short = "Injektionsställe (administrationRecord.anatomicalSite)"

* route MS
* route ^short = "Administreringssätt (administrationRecord.route)"

* doseQuantity MS
* doseQuantity ^short = "Dos (administrationRecord.dose.quantity)"

* protocolApplied MS
* protocolApplied ^short = "Vaccinationsprotokoll (administrationRecord)"
* protocolApplied.doseNumberPositiveInt MS
* protocolApplied.doseNumberPositiveInt ^short = "Dosnummer (administrationRecord.doseOrdinalNumber)"
* protocolApplied.seriesDosesPositiveInt MS
* protocolApplied.seriesDosesPositiveInt ^short = "Antal ordinerade doser (administrationRecord.numberOfPrescribedDoses)"
* protocolApplied.targetDisease MS
* protocolApplied.targetDisease ^short = "Målsjukdom (administrationRecord.vaccineTargetDisease)"
* protocolApplied.series MS
* protocolApplied.series ^short = "Vaccinationsprogram (administrationRecord.vaccinationProgramName)"

* reaction MS
* reaction ^short = "Biverkning (registrationRecord.patientAdverseEffect / administrationRecord.patientAdverseEffect)"

// ─── Extension-definitioner ───────────────────────────────────────────────────

Extension: ImmunizationLegalAuthenticator
Id: immunization-legal-authenticator
Title: "Juridisk äkthetsintygsgivare för vaccination"
Description: "Signeringstidpunkt och HSA-id för juridisk äkthetsintygsgivare (vaccinationMedicalRecordHeader.legalAuthenticator)."
* extension contains
    signatureTime 1..1 and
    hsaId 0..1
* extension[signatureTime].value[x] only dateTime
* extension[signatureTime] ^short = "Signeringstidpunkt (legalAuthenticator.signatureTime)"
* extension[hsaId].value[x] only string
* extension[hsaId] ^short = "Signerarens HSA-id (legalAuthenticator.legalAuthenticatorHSAId)"

Extension: ImmunizationPatientPostalCode
Id: immunization-patient-postal-code
Title: "Patientens postnummer vid vaccination"
Description: "Patientens postnummer vid vaccinationstillfället (registrationRecord.patientPostalCode)."
* value[x] only string

Extension: ImmunizationRiskCategory
Id: immunization-risk-category
Title: "Riskgrupp"
Description: "Riskgrupp som patienten tillhör vid vaccinationstillfället (registrationRecord.riskCategory). Inget standard Immunization-fält finns för riskgrupp."
* value[x] only CodeableConcept

Extension: ImmunizationCareUnitSmiId
Id: immunization-care-unit-smi-id
Title: "SMI-id för utförande vårdenhet"
Description: "Folkhälsomyndighetens SMI-id för den vårdenhet som administrerade vaccinet (registrationRecord.careUnitSmiId)."
* value[x] only string

Extension: ImmunizationRegistrationDevice
Id: immunization-registration-device
Title: "Källsystem för vaccinationsregistrering"
Description: """
  Referens till den Device-resurs som beskriver källsystemet varifrån
  vaccinationsregistreringen härstammar
  (registrationRecord.sourceSystemName/productName/productVersion/sourceSystemContact).
  Ersätter extension[sourceSystem].* med en strukturerad Device-resurs (SEEHDSDevice).
"""
* value[x] only Reference(SEEHDSDevice)

Extension: ImmunizationIsDoseComplete
Id: immunization-is-dose-complete
Title: "Fullständig dos administrerad"
Description: "Anger om hela den ordinerade dosen administrerades (administrationRecord.isDoseComplete)."
* value[x] only boolean

Extension: ImmunizationSourceDescription
Id: immunization-source-description
Title: "Källbeskrivning för efterregistrering"
Description: "Fritext om varifrån informationen om en efterregistrerad vaccinering härstammar (administrationRecord.sourceDescription)."
* value[x] only string

Extension: ImmunizationPrescriber
Id: immunization-prescriber
Title: "Förskrivande vårdenhet och person"
Description: "Förskrivande organisations- och personinformation (administrationRecord.prescriberOrg/prescriberPerson)."
* extension contains
    orgHSAId 0..1 and
    orgName 0..1 and
    personId 0..1 and
    personName 0..1
* extension[orgHSAId].value[x] only string
* extension[orgHSAId] ^short = "Förskrivande vårdenhetens HSA-id (prescriberOrg.orgUnitHSAId)"
* extension[orgName].value[x] only string
* extension[orgName] ^short = "Förskrivande vårdenhetens namn (prescriberOrg.orgUnitName)"
* extension[personId].value[x] only string
* extension[personId] ^short = "Förskrivande personens identifierare (prescriberPerson.actorId)"
* extension[personName].value[x] only string
* extension[personName] ^short = "Förskrivande personens namn (prescriberPerson.actorName)"
