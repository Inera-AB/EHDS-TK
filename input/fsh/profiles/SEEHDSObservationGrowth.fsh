Profile: SEEHDSObservationGrowth
Parent: $Observation-results-uv-ips
Id: se-ehds-observation-growth
Title: "SE EHDS Observation – Tillväxtkurva (GetObservations)"
Description: "Profil för tillväxtobservationer för barn och ungdom mappat från RIVTA-tjänstekontraktet GetObservations (clinicalprocess:healthcond:basic v2.0). Täcker NPÖ 2.0 och 1177 Journal 2.0."

* subject only Reference(SEEHDSPatient)
* subject MS
* subject ^short = "Patient (observationBody.patient.person.personId)"

* meta.source MS
* meta.source ^short = "Källsystem HSA-id (header)"

* performer MS
* performer ^short = "Utförare (observationBody.participation.healthcareProfessional)"

* issued MS
* issued ^short = "Dokumentationstidpunkt (observationBody.registrationTime)"

* status 1..1 MS
* status ^short = "Observationsstatus (observationBody.observationStatus – Snomed CT urval 56431000052106)"

* category 1..* MS
* category ^short = "Observationskategori (vital-signs)"

* code 1..1 MS
* code ^short = "Observationstyp (observationBody.observationType)"
* code.coding MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains loinc 0..1 MS
* code.coding[loinc].system = $LOINC
* code.coding[loinc] ^short = "LOINC-kod för tillväxtparameter (vikt, längd, huvudomfång)"

* effective[x] 1..1 MS
* effective[x] ^short = "Observationstidpunkt/-period (observationBody.time)"

* value[x] 1..1 MS
* value[x] ^short = "Observationsvärde (observationBody.observationValue – CV/PQ/IVL_PQ/TS/ST/INT, se OBS-001)"

* note MS
* note ^short = "Textuell beskrivning (observationBody.description)"
