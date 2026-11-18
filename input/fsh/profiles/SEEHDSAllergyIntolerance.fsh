Profile: SEEHDSAllergyIntolerance
Parent: $AllergyIntoleranceEuCore
Id: SEEHDSAllergyIntolerance
Title: "SE EHDS AllergyIntolerance – Allergi/överkänslighet (GetAlertInformation)"
Description: """
  Sekundär profil för allergier och överkänslighet från GetAlertInformation.

  Skapas ENBART när alertInformationBody = hypersensitivity.
  Den tillhörande SEEHDSFlag-resursen är alltid primär och pekar på denna
  resurs via Flag.extension[flag-detail] (standard R4-extension; R5: supportingInfo).

  Populeras med klinisk information från hypersensitivity-blocket:
  - atcSubstance/hypersensitivityAgentCode → AllergyIntolerance.code
  - degreeOfSeverity → AllergyIntolerance.reaction.severity
  - degreeOfCertainty → AllergyIntolerance.verificationStatus (se ALERT-004)
  - ascertainedDate → AllergyIntolerance.onsetDateTime
  - alertInformationComment → AllergyIntolerance.note
  - pharmaceuticalProductId → AllergyIntolerance.reaction.substance.coding (NPL-id)

  Täcker NPÖ 2.0 och 1177 Journal 2.0.
"""

// PDL-001: approvedForPatient = false → meta.security v3-ActCode#NOPAT
* insert PdlNoPat

* patient only Reference(SEEHDSPatient)
* patient MS
* patient ^short = "Patient (alertInformationHeader.patientId)"

* meta.source MS
* meta.source ^short = "Källsystem HSA-id (alertInformationHeader.sourceSystemHSAId) – https://tjanstekatalogen.inera.se/Endpoint/{hsaId} (GENERAL-005)"

* recorder only Reference(SEEHDSPractitionerRole)
* recorder MS
* recorder ^short = "Dokumentationsansvarig (alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId)"

* asserter only Reference(SEEHDSPractitionerRole)
* asserter MS
* asserter ^short = "Juridisk äkthetsintygsgivare (alertInformationHeader.legalAuthenticator.legalAuthenticatorHSAId)"

* recordedDate MS
* recordedDate ^short = "Registreringstidpunkt (alertInformationHeader.accountableHealthcareProfessional.authorTime)"

// CLINSTAT-001: slutdatum som har passerat ger resolved. Annars active, som för Flag.status:
// ait-1 kräver clinicalStatus, bindningen är required och allergyintolerance-clinical saknar "unknown".
* clinicalStatus 1..1 MS
* clinicalStatus ^short = "resolved om giltighetstiden har ett slutdatum som passerat, annars active (samma regel som Flag.status) – se CLINSTAT-001"

* verificationStatus MS
* verificationStatus ^short = "Visshet (alertInformationBody.hypersensitivity.degreeOfCertainty → ConceptMap till verificationStatus); se ALERT-004"

* type MS
* type ^short = "Alltid 'allergy' – härledd av att body = hypersensitivity"

* code 1..1 MS
* code ^short = """
    Agens/substans:
    - pharmaceuticalHypersensitivity.atcSubstance → code.coding (ATC, primär)
    - pharmaceuticalHypersensitivity.nonATCSubstance → code.text
    - otherHypersensitivity.hypersensitivityAgentCode → code.coding
    - otherHypersensitivity.hypersensitivityAgent → code.text
  """

* onsetDateTime MS
* onsetDateTime ^short = "Datum för konstaterande (alertInformationBody.ascertainedDate)"

* note MS
* note ^short = "Kommentar (alertInformationBody.alertInformationComment)"

* reaction MS
* reaction ^short = "Reaktionsinformation (delar av hypersensitivity)"

* reaction.severity MS
* reaction.severity ^short = "Allvarlighetsgrad (hypersensitivity.degreeOfSeverity → ConceptMap till reaction.severity)"

* reaction.substance MS
* reaction.substance ^short = "Läkemedelsprodukt (pharmaceuticalHypersensitivity.pharmaceuticalProductId → reaction.substance.coding med NPL-id)"
