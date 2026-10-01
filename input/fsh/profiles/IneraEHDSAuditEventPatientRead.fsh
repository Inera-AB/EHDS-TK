Profile: IneraEHDSAuditEventPatientRead
Parent: $BALP-PatientRead
Id: inera-ehds-audit-event-patient-read
Title: "SE EHDS AuditEvent – Innehållshämtning med patient (BALP PatientRead)"
Description: """
  Loggpost som ska skapas när ett EHDS-kompatibelt FHIR-API (t.ex. en EHDS-brygga) lämnar ut en
  enskild resurs eller ett dokuments innehåll för en patient, t.ex. läsning av en resurs eller
  (framtida) MHD ITI-68 Retrieve Document. Loggposterna behövs för att patienten ska kunna få
  veta vem som har tagit del av patientens uppgifter.

  Ärver från IHE BALP PatientRead och lägger till:
  - användaragent (agent[user]) och syfte (purposeOfEvent, agent[user].purposeOfUse) är obligatoriska
  - en agent per källsystem/vårdgivare som innehållet kommer från (agent[custodian])
  - bryggan som loggkälla (source.observer)
"""

* purposeOfEvent 1..* MS
* purposeOfEvent ^short = "Syfte med åtkomsten, v3-ActReason (TREAT, ETREAT, PATRQT)"

* agent[user] 1..1 MS
* agent[user] ^short = "Användaren som tog del av uppgifterna"
* agent[user].who.identifier 1..1 MS
* agent[user].who.identifier ^short = "Användarens HSA-id (urn:oid:1.2.752.129.2.1.4.1), eller personnummer när patienten själv är användare"
* agent[user].purposeOfUse 1..* MS
* agent[user].purposeOfUse ^short = "Syfte med åtkomsten, v3-ActReason (TREAT, ETREAT, PATRQT)"

* agent[client] ^short = "Klientapplikationen (t.ex. OAuth client_id)"
* agent[server] ^short = "FHIR-API:et/bryggan som lämnade ut innehållet"

* agent contains custodian 0..* MS
* agent[custodian].type = $v3-ParticipationType#CST "custodian"
* agent[custodian].type 1..1
* agent[custodian].who 1..1
* agent[custodian].who.identifier 1..1 MS
* agent[custodian].who.identifier ^short = "Källsystemets eller vårdgivarens HSA-id – samma som Provenance.agent[custodian] för den utlämnade resursen"
* agent[custodian].requestor = false
* agent[custodian] ^short = "Källsystem/vårdgivare som innehållet kommer från"

* source.observer only Reference(Device)
* source.observer ^short = "Noden som registrerade händelsen (bryggan)"

* entity[patient].what only Reference(IneraEHDSPatient)
* entity[patient].what ^short = "Patienten – identifier med personnummer eller samordningsnummer"
* entity[data] ^short = "Den utlämnade resursen eller dokumentet"
