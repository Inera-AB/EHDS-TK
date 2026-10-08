Profile: SEEHDSAuditEventReadAccessLog
Parent: AuditEvent
Id: SEEHDSAuditEventReadAccessLog
Title: "SE EHDS AuditEvent – Läsning av åtkomstloggar (GetAccessLogForPatient)"
Description: """
  Profil för att läsa åtkomstloggar: representerar en befintlig loggpost som lämnas ut till
  patienten, mappad från RIVTA-tjänstekontraktet GetAccessLogForPatient
  (informationsecurity:auditing:log v1.1, 2.0). Täcker 1177 Journal 1.1, 2.0. Krävs ej för NPÖ.

  Profilen används INTE för att logga användningen av FHIR-API:et. De loggposter som ska skapas
  när API:et nyttjas beskrivs av SEEHDSAuditEventPatientQuery och SEEHDSAuditEventPatientRead.
"""

* agent 1..* MS
* agent ^short = "Aktörer i loggposten"
* agent.who MS
* agent.who ^short = "Användare (accessLog.userId), vårdenhet (careUnitId) eller vårdgivare (careProviderId)"
* agent.who only Reference(SEEHDSPractitionerRole or SEEHDSOrganization or Device)
* agent.requestor MS
* agent.requestor ^short = "Är aktören den som initierade händelsen"
* agent.purposeOfUse MS
* agent.purposeOfUse ^short = "Åtkomstsyfte (accessLog.purpose)"

* entity 1..* MS
* entity ^short = "Objekt/patient som åtkomsten gäller"
* entity.what MS
* entity.what only Reference(SEEHDSPatient)
* entity.what ^short = "Patient – den efterfrågade patienten (begärans patientId)"
* entity.role MS
* entity.role ^short = "Objektets roll i händelsen"

* recorded 1..1 MS
* recorded ^short = "Tidpunkt för åtkomst (accessLog.accessDate)"

* type 1..1 MS
* type ^short = "Händelsetyp – fast värde, meddelandet saknar åtkomsttyp (LOG-002)"

* action MS
* action ^short = "Åtgärd (R=Read)"

* outcome MS
* outcome ^short = "Utfall – 0 (Success): loggposten avser en genomförd åtkomst"

* source MS
* source.observer MS
* source.observer ^short = "Det källsystem (logisk adress) som bryggan anropade"
