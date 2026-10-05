Profile: SEEHDSPatient
Parent: $PatientEuCore
Id: SEEHDSPatient
Title: "SE EHDS Patient"
Description: """
  Patientprofil för EHDS-TK. Ärver HL7 Europe Core Patient (EURIDICE) och följer svenska basprofilernas
  identifierarkonvention (SEBasePatient: slicarna personnummer, samordningsnummer, nationelltReservnummer).
  Skapas av API:et utifrån patientId i RIVTA-svaret, eftersom EU Core kräver subject.reference (GENERAL-006).
"""

* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^short = "Patientidentifierare (patientId från RIVTA)"

* identifier contains
    personnummer 0..1 MS and
    samordningsnummer 0..1 MS and
    nationelltReservnummer 0..1 MS

* identifier[personnummer].system 1..1 MS
* identifier[personnummer].system = $personnummer
* identifier[personnummer].value 1..1 MS
* identifier[personnummer] ^short = "Personnummer"

* identifier[samordningsnummer].system 1..1 MS
* identifier[samordningsnummer].system = $samordningsnummer
* identifier[samordningsnummer].value 1..1 MS
* identifier[samordningsnummer] ^short = "Samordningsnummer"

* identifier[nationelltReservnummer].system 1..1 MS
* identifier[nationelltReservnummer].system = $nationelltReservnummer
* identifier[nationelltReservnummer].value 1..1 MS
* identifier[nationelltReservnummer] ^short = "Nationellt reservnummer"

* name MS
* name ^short = "Patientens namn om det är känt; annars HumanName med data-absent-reason (eu-pat-1) – TKB:erna bär normalt inte namn"
* gender MS
* birthDate MS
* birthDate ^short = "Härleds ur personnummer/samordningsnummer (samordningsnummer: dag − 60); annars data-absent-reason"
