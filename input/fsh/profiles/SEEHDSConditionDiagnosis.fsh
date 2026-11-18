Profile: SEEHDSConditionDiagnosis
Parent: $ConditionEuCore
Id: SEEHDSConditionDiagnosis
Title: "SE EHDS Condition – Diagnos (GetDiagnosis)"
Description: "Profil för diagnos/problem mappat från RIVTA-tjänstekontraktet GetDiagnosis (clinicalprocess:healthcond:description v2.0). Ärver HL7 Europe Core Condition (EURIDICE). Täcker NPÖ 2.0 och 1177 Journal 2.0."

// assertedDate ärvs från EU Core (condition-eu-core)
* extension[assertedDate] MS
* extension contains
    http://hl7.org/fhir/StructureDefinition/condition-related named relatedCondition 0..* MS
* extension[relatedCondition] ^short = "Relaterad diagnos (diagnosisBody.relatedDiagnosis.documentId) – logisk referens via identifier, se DIAG-002"
* extension[relatedCondition].valueReference.identifier 1..1 MS
* extension[relatedCondition].valueReference.identifier ^short = "Den relaterade diagnosens dokumentid (relatedDiagnosis.documentId) – motsvarar Condition.identifier på den relaterade diagnosen"

* subject only Reference(SEEHDSPatient)
* subject MS
* subject ^short = "Patient (diagnosisHeader.patientId) – OID→URI för personnummer/samordningsnummer"

* meta.source MS
* meta.source ^short = "Källsystem HSA-id (diagnosisHeader.sourceSystemHSAId) – https://tjanstekatalogen.inera.se/Endpoint/{hsaId} (GENERAL-005)"

// PDL-001: approvedForPatient = false → meta.security v3-ActCode#NOPAT
* insert PdlNoPat

* recorder only Reference(SEEHDSPractitionerRole)
* recorder MS
* recorder ^short = "Ansvarig personal (diagnosisHeader.accountableHealthcareProfessional) – logisk referens via HSA-id"

* asserter only Reference(SEEHDSPractitionerRole)
* asserter MS
* asserter ^short = "Rättslig äkthetsintygsgivare (diagnosisHeader.legalAuthenticator) – logisk referens via HSA-id"

* recordedDate MS
* recordedDate ^short = "Registreringstidpunkt (diagnosisHeader.accountableHealthcareProfessional.authorTime) – YYYYMMDDHHMMSS → ISO 8601"


* verificationStatus MS
* verificationStatus ^short = "Alltid confirmed (RIVTA-svar representerar bekräftade journaluppgifter)"

// Condition.category har en extensible bindning till FHIR:s condition-category.
// Varje category-element valideras för sig mot bindningen. Därför ligger den lokala koden
// som en extra coding i samma CodeableConcept som standardkoden, inte i ett eget element
// (DIAG-003). Då innehåller varje category en kod från condition-category.
* category 1..1 MS
* category ^short = "Kontaktdiagnos: encounter-diagnosis (FHIR condition-category) och HD/BY (kv_diagnostyp) i samma CodeableConcept, se DIAG-003"
* category.coding 2..* MS
* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "system"
* category.coding ^slicing.rules = #open
* category.coding contains
    condition-category 1..1 MS and
    diagnostyp 1..1 MS
* category.coding[condition-category] = $condition-category#encounter-diagnosis
* category.coding[condition-category] ^short = "Alltid encounter-diagnosis (FHIR condition-category)"
* category.coding[diagnostyp].system 1..1 MS
* category.coding[diagnostyp].system = "https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_diagnostyp"
* category.coding[diagnostyp].code 1..1 MS
* category.coding[diagnostyp] from DiagnosisTypeVS (required)
* category.coding[diagnostyp] ^short = "Diagnostyp (diagnosisBody.typeOfDiagnosis) – HD (Huvuddiagnos) eller BY (Bidiagnos) från kv_diagnostyp, en preciserad kontaktdiagnos"

* code 1..1 MS
* code ^short = "Diagnoskod (diagnosisBody.diagnosisCode)"
* code.coding MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains ICD10SE 0..1 MS
* code.coding[ICD10SE].system = $ICD10SE
* code.coding[ICD10SE].code MS
* code.coding[ICD10SE].code ^short = "ICD-10-SE kod (diagnosisBody.diagnosisCode.code)"
* code.coding[ICD10SE].display MS
* code.coding[ICD10SE].display ^short = "Kodbenämning (diagnosisBody.diagnosisCode.displayName)"
* code.text MS
* code.text ^short = "Fritext (diagnosisBody.diagnosisCode.originalText) – fallback: displayName"

// DIAG-001: kronisk diagnos uttrycks med SNOMED CT i Condition.stage i stället för en lokal extension.
* stage ^slicing.discriminator.type = #pattern
* stage ^slicing.discriminator.path = "type"
* stage ^slicing.rules = #open
* stage ^slicing.description = "Kliniskt förlopp (SNOMED CT 263502005)"
* stage contains klinisktForlopp 0..1 MS
* stage[klinisktForlopp] ^short = "Kronisk diagnos (diagnosisBody.chronicDiagnosis = true) – se DIAG-001"
* stage[klinisktForlopp].type 1..1 MS
* stage[klinisktForlopp].type = $SCT#263502005 "Clinical course (attribute)"
* stage[klinisktForlopp].summary 1..1 MS
* stage[klinisktForlopp].summary = $SCT#90734009 "Chronic (qualifier value)"
* stage[klinisktForlopp].summary ^short = "Alltid 90734009 |Chronic (qualifier value)|; slicen utelämnas när chronicDiagnosis är false eller saknas"

* onsetDateTime MS
* onsetDateTime ^short = "Bedömningstidpunkt (diagnosisBody.diagnosisTime) – YYYYMMDDHHMMSS → ISO 8601"

Instance: SEEHDSConditionDiagnosisExample
InstanceOf: SEEHDSConditionDiagnosis
Usage: #example
Title: "Exempel: kronisk huvuddiagnos från GetDiagnosis"
Description: "Kontaktdiagnos med HD som extra coding i samma category som encounter-diagnosis (DIAG-003), kronisk diagnos i stage (DIAG-001) och utan clinicalStatus, eftersom statusen är okänd (CLINSTAT-001)."
* identifier.value = "doc-12345"
* meta.source = "https://tjanstekatalogen.inera.se/Endpoint/SE2321000016-4HK5"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category.coding[condition-category] = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* category.coding[diagnostyp] = https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_diagnostyp#HD "Huvuddiagnos"
* code.coding[ICD10SE] = $ICD10SE#E11.9 "Diabetes mellitus typ 2 utan komplikationer"
* stage[klinisktForlopp].type = $SCT#263502005 "Clinical course (attribute)"
* stage[klinisktForlopp].summary = $SCT#90734009 "Chronic (qualifier value)"
* subject.reference = "Patient/SEEHDSPatientExample"
* subject.identifier.system = $personnummer
* subject.identifier.value = "191212121212"
* onsetDateTime = "2023-06-01T12:00:00+02:00"
* recordedDate = "2023-06-01T12:00:00+02:00"
