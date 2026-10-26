Profile: SEEHDSProvenance
Parent: Provenance
Id: SEEHDSProvenance
Title: "SE EHDS Provenance"
Description: """
  Provenance-profil för EHDS-TK. Varje klinisk resurs åtföljs av en Provenance
  med två agenter som speglar spärr-hierarkin enligt PDL:
  - custodian (yttre Sparr) — den juridiskt ansvariga vårdgivaren
  - author (inre Sparr) — den informationsägande vårdenheten

  Agenterna skiljs åt på `agent.type` (diskriminator av typen pattern på `type`),
  som ska innehålla kodningen `provenance-participant-type#custodian` respektive
  `provenance-participant-type#author`. En validator kan därmed avgöra vilken agent
  som är vilken. Båda agenterna anges som logisk referens med HSA-id i
  `who.identifier`. Se GENERAL-003.

  OBS: Om den FHIR-server som tillhandahåller data själv hanterar åtkomstfiltrering
  baserat på anropande vårdpersonals kontext eller patientens e-hälsotjänst, behöver
  Provenance-agenterna för spärr och `meta.security` för `approvedForPatient` inte
  inkluderas i svaret — filtreringen sker då redan på servernivå.
"""

* target 1..* MS
* target ^short = "Referens till resursen som Provenance gäller"

* recorded 1..1 MS
* recorded ^short = "Tidpunkt för dokumentation (documentTime från RIVTA, tolkad som Europe/Stockholm och angiven med offset, se GENERAL-001). OBS: för TK:er där documentTime har kardinalitet 0..0 (t.ex. GetDiagnosis) används istället accountableHealthcareProfessional.authorTime; för GetCareDocumentation (JoL-header) används header.author.timestamp med fallback header.record.timestamp (DOC-002) – se tjänstekontraktets mappningssida"

// Diskriminatorn pekar på det element som har det fasta mönstret (agent.type,
// patternCodeableConcept). Mönstret kräver att type innehåller en kodning med
// angivet system och kod, och andra kodningar får förekomma.
* agent 2..* MS
* agent ^slicing.discriminator.type = #pattern
* agent ^slicing.discriminator.path = "type"
* agent ^slicing.rules = #open
* agent ^slicing.ordered = false
* agent ^slicing.description = "Agenterna skiljs åt på agent.type: custodian (vårdgivare, yttre Sparr) och author (vårdenhet, inre Sparr)."

* agent contains
    custodian 1..1 MS and
    author 1..1 MS

* agent[custodian] ^short = "Juridiskt ansvarig vårdgivare – yttre Sparr"
* agent[custodian].type 1..1 MS
* agent[custodian].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#custodian
* agent[custodian].who 1..1 MS
* agent[custodian].who only Reference(SEEHDSOrganization)
* agent[custodian].who ^short = "Vårdgivare (careProviderHSAId / accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId) – yttre Sparr"
* agent[custodian].who.identifier 1..1 MS
* agent[custodian].who.identifier.system 1..1 MS
* agent[custodian].who.identifier.system = $hsaid-se
* agent[custodian].who.identifier.value 1..1 MS
* agent[custodian].who.identifier ^short = "Vårdgivarens HSA-id"

* agent[author] ^short = "Informationsägande vårdenhet – inre Sparr"
* agent[author].type 1..1 MS
* agent[author].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author
* agent[author].who 1..1 MS
* agent[author].who only Reference(SEEHDSOrganization)
* agent[author].who ^short = "Vårdenhet (careUnitHSAId / accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId) – inre Sparr"
* agent[author].who.identifier 1..1 MS
* agent[author].who.identifier.system 1..1 MS
* agent[author].who.identifier.system = $hsaid-se
* agent[author].who.identifier.value 1..1 MS
* agent[author].who.identifier ^short = "Vårdenhetens HSA-id"


Instance: SEEHDSProvenanceExample
InstanceOf: SEEHDSProvenance
Usage: #example
Title: "Exempel: Provenance med custodian och author"
Description: "Visar hur de två agenterna anges så att validering kan avgöra vilken agent som är vilken."
* target.identifier.system = "urn:ietf:rfc:3986"
* target.identifier.value = "urn:uuid:6f1e4c2a-3b7d-4e8f-9a01-2c3d4e5f6a7b"
* recorded = "2023-06-01T12:00:00+02:00"
* agent[custodian].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#custodian "Custodian"
* agent[custodian].who.identifier.system = $hsaid-se
* agent[custodian].who.identifier.value = "SE2321000016-15CQ"
* agent[custodian].who.display = "Exempelregionen"
* agent[author].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author "Author"
* agent[author].who.identifier.system = $hsaid-se
* agent[author].who.identifier.value = "SE2321000016-15D1"
* agent[author].who.display = "Exempelvårdcentralen"
