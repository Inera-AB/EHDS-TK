Profile: IneraEHDSAuditEventPatientQuery
Parent: $BALP-PatientQuery
Id: inera-ehds-audit-event-patient-query
Title: "SE EHDS AuditEvent – Sökning och träfflista med patient (BALP PatientQuery)"
Description: """
  Loggpost som ska skapas när ett EHDS-kompatibelt FHIR-API (t.ex. en EHDS-brygga) tar emot en
  sökning på en patients uppgifter och lämnar ut träfflistan, t.ex. MHD ITI-67 Find Document
  References eller QEDm PCC-44. Loggposterna behövs för att patienten ska kunna få veta vem som
  har tagit del av patientens uppgifter.

  Ärver från IHE BALP PatientQuery och lägger till:
  - användaragent (agent[user]) och syfte (purposeOfEvent, agent[user].purposeOfUse) är obligatoriska
  - en agent per källsystem/vårdgivare som bidrog till svaret (agent[custodian])
  - bryggan som loggkälla (source.observer)
  - träfflistan: varje utlämnad resurs registreras som en entity med entity.type = resurstypen
    (http://hl7.org/fhir/resource-types) och entity.role = object-role#4 "Domain Resource"
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
* agent[server] ^short = "FHIR-API:et/bryggan som besvarade sökningen"

* agent contains custodian 0..* MS
* agent[custodian].type = $v3-ParticipationType#CST "custodian"
* agent[custodian].type 1..1
* agent[custodian].who 1..1
* agent[custodian].who.identifier 1..1 MS
* agent[custodian].who.identifier ^short = "Källsystemets eller vårdgivarens HSA-id – samma som Provenance.agent[custodian] för de utlämnade resurserna"
* agent[custodian].requestor = false
* agent[custodian] ^short = "Källsystem/vårdgivare som bidrog till svaret"

* source.observer only Reference(Device)
* source.observer ^short = "Noden som registrerade händelsen (bryggan)"

* entity[patient].what only Reference(IneraEHDSPatient)
* entity[patient].what ^short = "Patienten – identifier med personnummer eller samordningsnummer"
* entity[query] ^short = "Sökfrågan (base64 i query)"
