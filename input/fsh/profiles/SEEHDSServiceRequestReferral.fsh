Profile: SEEHDSServiceRequestReferral
Parent: ServiceRequest
Id: se-ehds-service-request-referral
Title: "SE EHDS ServiceRequest – Konsultationsremiss (GetReferralOutcome)"
Description: """
  Profil för konsultationsremisser mappat från RIVTA-tjänstekontraktet GetReferralOutcome
  (clinicalprocess:healthcond:actoutcome v3.1). Täcker NPÖ 3.1 och 1177 Journal 3.1.

  Notera: GetReferralOutcome returnerar remissvaret, inte remissen i sig. Remissens
  metadata finns under referralOutcomeBody.referral och är begränsad till id, orsak,
  tid och avsändare. Inget mottagarfält, prioritet, typ eller diagnos finns i TKBn
  för remissens del.
"""

* subject only Reference(SEEHDSPatient)
* subject MS
* subject ^short = "Patient (referralOutcomeHeader.patientId)"

* meta.source MS
* meta.source ^short = "Källsystem HSA-id (referralOutcomeHeader.sourceSystemHSAId)"

* identifier MS
* identifier ^short = "Remissidentifierare (referralOutcomeBody.referral.referralId)"

* requester only Reference(PractitionerRole)
* requester MS
* requester ^short = "Remitterande personal (referralOutcomeBody.referral.referralAuthor)"

* authoredOn MS
* authoredOn ^short = "Remisstidpunkt (referralOutcomeBody.referral.referralTime)"

* status 1..1 MS
* status ^short = "Alltid 'active' – härledd (remissdata i GetReferralOutcome representerar aktiva remisser)"

* intent 1..1 MS

* code 1..1 MS
* code ^short = "Remissorsak (referralOutcomeBody.referral.referralReason)"
