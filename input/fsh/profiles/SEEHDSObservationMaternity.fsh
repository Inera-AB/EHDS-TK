Profile: SEEHDSObservationMaternity
Parent: Observation
Id: SEEHDSObservationMaternity
Title: "SE EHDS Observation – Mödravård (GetMaternityMedicalHistory)"
Description: """
  Generisk profil för medicinsk historik inom mödravård mappat från RIVTA-tjänstekontraktet
  GetMaternityMedicalHistory (clinicalprocess:healthcond:actoutcome v2.0).
  Täcker NPÖ 2.0 och 1177 Journal 2.0.

  TKB:n har tre avsnitt (registrationRecord, pregnancyCheckupRecord, postDeliveryRecord).
  Profilen används både för den grupperande Observationen per avsnitt (code = avsnittskod,
  code.text = documentTitle, hasMember = fälten) och för medlems-Observationerna, en per
  fält (MAT-001).
"""

* subject only Reference(SEEHDSPatient)
* subject MS
* subject ^short = "Patient (maternityMedicalRecordHeader.patientId)"

* meta.source MS
* meta.source ^short = "Källsystem HSA-id (maternityMedicalRecordHeader.sourceSystemHSAId) – https://tjanstekatalogen.inera.se/Endpoint/{hsaId} (GENERAL-005)"

* performer MS
* performer ^short = "Ansvarig personal/enhet (maternityMedicalRecordHeader.accountableHealthcareProfessional)"

* issued MS
* issued ^short = "Dokumentets registreringstidpunkt (maternityMedicalRecordHeader.documentTime)"

* status 1..1 MS
* status ^short = "Status"


* code 1..1 MS
* code ^short = "Grupperande: avsnittskod med code.text = documentTitle (MAT-003). Medlem: fältets kod"

* effective[x] MS
* effective[x] ^short = "Tidpunkt för dokumentation (maternityMedicalRecordHeader.accountableHealthcareProfessional.authorTime)"

* value[x] MS
* value[x] ^short = "Medlem: fältets värde (t.ex. pregnancyCheckupRecord.bloodPressureSystolic). Grupperande: inget värde"

* hasMember MS
* hasMember ^short = "Grupperande: avsnittets medlems-Observationer (MAT-001)"

* component MS
* component ^short = "Medlem för upprepad post (t.ex. previousGravidityAndParity[i]): postens fält"

* note MS
* note ^short = "Sektionsspecifik kommentar"
