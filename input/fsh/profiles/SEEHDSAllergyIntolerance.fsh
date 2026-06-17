Profile: SEEHDSAllergyIntolerance
Parent: $AllergyIntolerance-uv-ips
Id: se-ehds-allergy-intolerance
Title: "SE EHDS AllergyIntolerance – Allergi/överkänslighet (GetAlertInformation)"
Description: """
  Sekundär profil för allergier och överkänslighet från GetAlertInformation.

  Skapas **endast** när typeOfAlertInformation anger allergi/överkänslighet.
  Den tillhörande SEEHDSFlag-resursen är alltid primär och pekar på denna
  resurs via Flag.extension[allergyReference].

  Täcker NPÖ 2.0, 3.0 och 1177 Journal 2.0, 3.0.
"""

* patient only Reference(SEEHDSPatient)
* patient MS
* patient ^short = "Patient (patientId)"

* meta.source MS
* meta.source ^short = "Källsystem HSA-id (sourceSystemHSAId)"

* recorder only Reference(PractitionerRole)
* recorder MS
* recorder ^short = "Ansvarig hälso- och sjukvårdspersonal (accountableHealthcareProfessional)"

* asserter only Reference(PractitionerRole)
* asserter MS
* asserter ^short = "Rättslig äkthetsintygsgivare (legalAuthenticator)"

* recordedDate MS
* recordedDate ^short = "Registreringsdatum (documentTime)"

* clinicalStatus MS
* clinicalStatus ^short = "Klinisk status (alertStatus)"

* category 1..* MS
* category ^short = "Allergikategori (typeOfAlertInformation)"

* code 1..1 MS
* code ^short = "Orsak till allergi/överkänslighet (alertCode)"

* reaction MS
* reaction.substance MS
* reaction.substance ^short = "Utlösande ämne (causeCode)"
* reaction.manifestation MS
* reaction.manifestation ^short = "Reaktionsbeskrivning"

* note MS
* note ^short = "Kommentar (alertComment)"
