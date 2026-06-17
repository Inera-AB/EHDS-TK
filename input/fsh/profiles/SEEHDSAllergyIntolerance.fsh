Profile: SEEHDSAllergyIntolerance
Parent: $AllergyIntolerance-uv-ips
Id: se-ehds-allergy-intolerance
Title: "SE EHDS AllergyIntolerance – Allergi/överkänslighet (GetAlertInformation)"
Description: """
  Sekundär profil för allergier och överkänslighet från GetAlertInformation.

  Skapas ENBART när typeOfAlertInformation anger allergi/överkänslighet.
  Den tillhörande SEEHDSFlag-resursen är alltid primär och pekar på denna
  resurs via Flag.extension[allergyReference].

  BEGRÄNSNING: alertInformationBody innehåller ENBART typeOfAlertInformation 1..1.
  Fält som alertCode, causeCode, reaction och alertComment existerar INTE i TKBn v2.0.
  AllergyIntolerance kan därför endast populeras med typkod och patientmetadata
  – inga kliniska detaljer (substans, reaktion, svårighetsgrad) finns tillgängliga
  från detta tjänstekontrakt. Se ALERT-001 och ALERT-002 i mapping-issues.

  Täcker NPÖ 2.0 och 1177 Journal 2.0.
"""

* patient only Reference(SEEHDSPatient)
* patient MS
* patient ^short = "Patient (alertInformationHeader.patientId)"

* meta.source MS
* meta.source ^short = "Källsystem HSA-id (alertInformationHeader.sourceSystemHSAId)"

* recorder only Reference(PractitionerRole)
* recorder MS
* recorder ^short = "Dokumentationsansvarig (alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId)"

* asserter only Reference(PractitionerRole)
* asserter MS
* asserter ^short = "Juridisk äkthetsintygsgivare (alertInformationHeader.legalAuthenticator.legalAuthenticatorHSAId)"

* recordedDate MS
* recordedDate ^short = "Registreringstidpunkt (alertInformationHeader.accountableHealthcareProfessional.authorTime)"

* clinicalStatus MS
* clinicalStatus ^short = "Alltid 'active' – härledd; inget statusfält i TKBn"

* verificationStatus MS
* verificationStatus ^short = "Alltid 'confirmed' – härledd; journaluppgifter anses bekräftade"

* code 1..1 MS
* code ^short = "Typ av allergi/överkänslighet (alertInformationBody.typeOfAlertInformation)"
