Profile: SEEHDSFlag
Parent: Flag
Id: se-ehds-flag
Title: "SE EHDS Flag – Uppmärksamhetsinformation (GetAlertInformation)"
Description: """
  Primär profil för ALL uppmärksamhetsinformation från GetAlertInformation
  (clinicalprocess:healthcond:description v2.0).

  Varje alertInformationBody ger alltid en Flag.
  Om typeOfAlertInformation anger allergi/överkänslighet skapas dessutom en
  SEEHDSAllergyIntolerance-resurs som pekas ut via extension[allergyReference].

  Profilen är alignad med HL7 Sweden UMI-IG (SEAlertInformationFlag) vad gäller
  category-hierarkin och flag-detail-extension för länk till kompletterande Observation.

  OBS: alertInformationBody innehåller ENBART typeOfAlertInformation 1..1.
  Fält som alertCode, alertStatus, alertTimePeriod, causeCode, reaction och alertComment
  existerar INTE i det riktiga tjänstekontraktet v2.0.

  Täcker NPÖ 2.0 och 1177 Journal 2.0.
"""

// Länk till AllergyIntolerance vid allergi/överkänslighet
* extension contains AllergyReference named allergyReference 0..1 MS

// Länk till Observation med klinisk detaljinformation (UMI-mönster, alignat med HL7 Sweden)
* extension contains
    http://hl7.org/fhir/StructureDefinition/flag-detail named flagDetail 0..* MS

* subject only Reference(SEEHDSPatient)
* subject 1..1 MS
* subject ^short = "Patient (alertInformationHeader.patientId)"

* meta.source MS
* meta.source ^short = "Källsystem HSA-id (alertInformationHeader.sourceSystemHSAId)"

* status 1..1 MS
* status ^short = "Alltid 'active' – inget statusfält i TKBn; returnerade poster är per definition aktiva"

* category 1..* MS
* category ^short = "Uppmärksamhetstyp (alertInformationBody.typeOfAlertInformation)"

* code 1..1 MS
* code ^short = "Uppmärksamhetskod (alertInformationBody.typeOfAlertInformation – samma värde som category)"

* period.start MS
* period.start ^short = "Registreringstidpunkt (alertInformationHeader.accountableHealthcareProfessional.authorTime)"

* author only Reference(PractitionerRole)
* author MS
* author ^short = "Ansvarig hälso- och sjukvårdspersonal (alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId)"

* encounter MS
* encounter ^short = "Kopplad vårdkontakt (alertInformationHeader.careContactId)"

Extension: AllergyReference
Id: allergy-reference
Title: "Referens till AllergyIntolerance"
Description: "Pekar ut den SEEHDSAllergyIntolerance-resurs som skapats för samma alert när typeOfAlertInformation är allergi/överkänslighet."
* value[x] only Reference(SEEHDSAllergyIntolerance)
