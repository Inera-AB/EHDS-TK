Profile: SEEHDSFlag
Parent: Flag
Id: se-ehds-flag
Title: "SE EHDS Flag – Uppmärksamhetsinformation (GetAlertInformation)"
Description: """
  Primär profil för ALL uppmärksamhetsinformation från GetAlertInformation
  (clinicalprocess:healthcond:description v2.0, 3.0).

  Varje alertInformationBody ger alltid en Flag.
  Om typeOfAlertInformation anger allergi/överkänslighet skapas dessutom en
  SEEHDSAllergyIntolerance-resurs som pekas ut via extension[allergyReference].

  Täcker NPÖ 2.0, 3.0 och 1177 Journal 2.0, 3.0.
"""

* extension contains AllergyReference named allergyReference 0..1 MS

* subject only Reference(SEEHDSPatient)
* subject 1..1 MS
* subject ^short = "Patient (patientId)"

* meta.source MS
* meta.source ^short = "Källsystem HSA-id (sourceSystemHSAId)"

* status 1..1 MS
* status ^short = "Uppmärksamhetsstatus (alertStatus: active/inactive)"

* category 1..* MS
* category ^short = "Uppmärksamhetstyp (typeOfAlertInformation – kv_uppmärksamhetstyp)"

* code 1..1 MS
* code ^short = "Uppmärksamhetskod (alertCode)"

* period MS
* period ^short = "Giltighetstid (alertTimePeriod)"

* author only Reference(PractitionerRole)
* author MS
* author ^short = "Ansvarig hälso- och sjukvårdspersonal (accountableHealthcareProfessional)"

Extension: AllergyReference
Id: allergy-reference
Title: "Referens till AllergyIntolerance"
Description: "Pekar ut den SEEHDSAllergyIntolerance-resurs som skapats för samma alert när typeOfAlertInformation är allergi/överkänslighet."
* value[x] only Reference(SEEHDSAllergyIntolerance)
