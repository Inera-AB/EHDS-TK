Profile: SEEHDSConditionFunctional
Parent: $ConditionEuCore
Id: SEEHDSConditionFunctional
Title: "SE EHDS Condition – Funktionstillstånd och ADL (GetFunctionalStatus)"
Description: """
  Profil för funktionstillstånd och ADL-bedömningar mappat från RIVTA-tjänstekontraktet
  GetFunctionalStatus (clinicalprocess:healthcond:description v2.0).
  Täcker NPÖ 2.0 och 1177 Journal 2.0.

  TKBn har två bedömningskategorier: 'pad-pad' (PADL-bedömning) och 'fun-fun'
  (funktionsnedsättningsbedömning med ICF-kod). Condition.code mappas mot
  assessmentCategory (för PADL) eller disability.disabilityAssessment (ICF-kod).
  Inget statusfält, tidperiod eller svårighetsgradfält finns i TKBn – dessa är härleddda.
"""

* subject only Reference(SEEHDSPatient)
* subject MS
* subject ^short = "Patient (functionalStatusAssessmentHeader.patientId)"

* meta.source MS
* meta.source ^short = "Källsystem HSA-id (functionalStatusAssessmentHeader.sourceSystemHSAId) – https://tjanstekatalogen.inera.se/Endpoint/{hsaId} (GENERAL-005)"

// PDL-001: approvedForPatient = false → meta.security v3-ActCode#NOPAT
* insert PdlNoPat

* recorder only Reference(SEEHDSPractitionerRole)
* recorder MS
* recorder ^short = "Ansvarig hälso- och sjukvårdspersonal (functionalStatusAssessmentHeader.accountableHealthcareProfessional)"

* asserter only Reference(SEEHDSPractitionerRole)
* asserter MS
* asserter ^short = "Rättslig äkthetsintygsgivare (functionalStatusAssessmentHeader.legalAuthenticator)"

* recordedDate MS
* recordedDate ^short = "Bedömningstidpunkt (functionalStatusAssessmentHeader.documentTime)"

* code 1..1 MS
* code ^short = "Bedömningskod: assessmentCategory (pad-pad/fun-fun) eller disability.disabilityAssessment (ICF) – se FUNC-001"

// Condition.category har en extensible bindning till FHIR:s condition-category.
// Varje category-element valideras för sig mot bindningen. Därför ligger den lokala koden
// som en extra coding i samma CodeableConcept som standardkoden, inte i ett eget element
// (FUNC-002). Då innehåller varje category en kod från condition-category.
* category 1..1 MS
* category ^short = "problem-list-item (FHIR condition-category) och pad-pad/fun-fun (AssessmentCategoryCS) i samma CodeableConcept, se FUNC-002"
* category.coding 2..* MS
* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "system"
* category.coding ^slicing.rules = #open
* category.coding contains
    condition-category 1..1 MS and
    bedomningskategori 1..1 MS
* category.coding[condition-category].system 1..1 MS
* category.coding[condition-category].system = $condition-category
* category.coding[condition-category].code 1..1 MS
* category.coding[condition-category].code = #problem-list-item
* category.coding[condition-category] ^short = "Alltid problem-list-item (FHIR condition-category)"
* category.coding[bedomningskategori].system 1..1 MS
* category.coding[bedomningskategori].system = "https://fhir.inera.se/clinicalprocess-healthcond-description/CodeSystem/assessmentcategory-cs"
* category.coding[bedomningskategori].code 1..1 MS
* category.coding[bedomningskategori] from AssessmentCategoryVS (required)
* category.coding[bedomningskategori] ^short = "Bedömningskategori (functionalStatusAssessmentBody.assessmentCategory) – pad-pad eller fun-fun"

// CLINSTAT-001: inget status- eller slutdatumfält i TKB:n, så klinisk status är okänd och
// clinicalStatus utelämnas. condition-clinical saknar koden "unknown", och bindningen är required,
// så data-absent-reason utan kod är inte giltigt. Utelämnat ger bara best practice-varningen con-3.
* clinicalStatus ^short = "Utelämnas: klinisk status är okänd (TKB:n saknar status och slutdatum) – se CLINSTAT-001"

* verificationStatus MS
* verificationStatus ^short = "Alltid 'confirmed' – härledd (journaluppgifter anses bekräftade)"

* note MS
* note ^short = """
    Fritext och PADL-poster (FUNC-001):
    note[0].text ← functionalStatusAssessmentBody.comment (helbedömningskommentar)
    note[n].text ← varje padl-post formaterad som '[typeOfAssessment]: assessment'
    Alternativ (ej valt): separata Observation-resurser per PADL-post med
    Observation.code = typeOfAssessment och Observation.valueString = assessment.
  """

// FUNC-001: PADL-poster kodas som Condition.note med prefixformat '[typeOfAssessment]: assessment'.
// Alternativet med separata Observation-resurser per PADL-post ger bättre strukturerbarhet men
// ökar resurskomplexiteten. Beslutet kan omprövas vid behov av strukturerad sökning på PADL.

Instance: SEEHDSConditionFunctionalExample
InstanceOf: SEEHDSConditionFunctional
Usage: #example
Title: "Exempel: PADL-bedömning från GetFunctionalStatus"
Description: "Funktionstillstånd med pad-pad som extra coding i samma category som problem-list-item (FUNC-002), utan clinicalStatus, eftersom statusen är okänd (CLINSTAT-001)."
* identifier.value = "func-6789"
* meta.source = "https://tjanstekatalogen.inera.se/Endpoint/SE2321000016-4HK5"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category.coding[condition-category] = $condition-category#problem-list-item "Problem List Item"
* category.coding[bedomningskategori] = https://fhir.inera.se/clinicalprocess-healthcond-description/CodeSystem/assessmentcategory-cs#pad-pad "pad-pad"
* code = https://fhir.inera.se/clinicalprocess-healthcond-description/CodeSystem/assessmentcategory-cs#pad-pad "pad-pad"
* code.text = "PADL-bedömning"
* subject.reference = "Patient/SEEHDSPatientExample"
* subject.identifier.system = $personnummer
* subject.identifier.value = "191212121212"
* recordedDate = "2023-06-01T12:00:00+02:00"
* note[0].text = "[personlig hygien]: Klarar sig själv"
