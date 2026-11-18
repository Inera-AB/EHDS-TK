Profile: SEEHDSConditionDiagnosis
Parent: $ConditionEuCore
Id: SEEHDSConditionDiagnosis
Title: "SE EHDS Condition – Diagnos (GetDiagnosis)"
Description: "Profil för diagnos/problem mappat från RIVTA-tjänstekontraktet GetDiagnosis (clinicalprocess:healthcond:description v2.0). Ärver HL7 Europe Core Condition (EURIDICE). Täcker NPÖ 2.0 och 1177 Journal 2.0."

// assertedDate ärvs från EU Core (condition-eu-core)
* extension[assertedDate] MS
* extension contains
    ConditionChronicDiagnosis named chronicDiagnosis 0..1 MS and
    http://hl7.org/fhir/StructureDefinition/condition-related named relatedCondition 0..* MS
* extension[chronicDiagnosis] ^short = "Kronisk diagnos (diagnosisBody.chronicDiagnosis) – se DIAG-001"
* extension[relatedCondition] ^short = "Relaterad diagnos (diagnosisBody.relatedDiagnosis.documentId) – logisk referens via identifier, se DIAG-002"
* extension[relatedCondition].valueReference.identifier 1..1 MS
* extension[relatedCondition].valueReference.identifier ^short = "Den relaterade diagnosens dokumentid (relatedDiagnosis.documentId) – motsvarar Condition.identifier på den relaterade diagnosen"

* subject only Reference(SEEHDSPatient)
* subject MS
* subject ^short = "Patient (diagnosisHeader.patientId) – OID→URI för personnummer/samordningsnummer"

* meta.source MS
* meta.source ^short = "Källsystem HSA-id (diagnosisHeader.sourceSystemHSAId) – https://tjanstekatalogen.inera.se/Endpoint/{hsaId} (GENERAL-005)"

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
// Standardkoden används i första hand (DIAG-003). HD/BY från kv_diagnostyp har ingen
// motsvarighet i standardkodverket och ligger kvar som en egen, lokal slice.
* category 2..* MS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category ^slicing.description = "En kategori från FHIR:s condition-category (encounter-diagnosis) och en från kv_diagnostyp (HD/BY)"
* category contains
    condition-category 1..1 MS and
    diagnostyp 1..1 MS
* category[condition-category] = $condition-category#encounter-diagnosis
* category[condition-category] ^short = "Alltid encounter-diagnosis (FHIR condition-category) – diagnosen är satt vid en vårdkontakt, se DIAG-003"
* category[diagnostyp].coding 1..1 MS
* category[diagnostyp].coding.system 1..1 MS
* category[diagnostyp].coding.system = "https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_diagnostyp"
* category[diagnostyp].coding.code 1..1 MS
* category[diagnostyp] from DiagnosisTypeVS (required)
* category[diagnostyp] ^short = "Diagnostyp (diagnosisBody.typeOfDiagnosis) – HD (Huvuddiagnos) eller BY (Bidiagnos) från kv_diagnostyp"

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

* onsetDateTime MS
* onsetDateTime ^short = "Bedömningstidpunkt (diagnosisBody.diagnosisTime) – YYYYMMDDHHMMSS → ISO 8601"

Extension: ConditionChronicDiagnosis
Id: condition-chronic-diagnosis
Title: "Kronisk diagnos"
Description: "Anger om diagnosen är kronisk (true) eller inte kronisk (false) (diagnosisBody.chronicDiagnosis). Se DIAG-001."
* ^context[0].type = #element
* ^context[0].expression = "Condition"
* value[x] only boolean
