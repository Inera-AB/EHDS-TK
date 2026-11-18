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
// Standardkoden problem-list-item används i första hand (FUNC-002). pad-pad/fun-fun har
// ingen motsvarighet i standardkodverket och ligger kvar som en egen, lokal slice.
* category 2..* MS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category ^slicing.description = "En kategori från FHIR:s condition-category (problem-list-item) och en från AssessmentCategoryCS (pad-pad/fun-fun)"
* category contains
    condition-category 1..1 MS and
    bedomningskategori 1..1 MS
* category[condition-category] = $condition-category#problem-list-item
* category[condition-category] ^short = "Alltid problem-list-item (FHIR condition-category) – funktionstillståndet beskriver patientens tillstånd över tid, se FUNC-002"
* category[bedomningskategori].coding 1..1 MS
* category[bedomningskategori].coding.system 1..1 MS
* category[bedomningskategori].coding.system = "https://fhir.inera.se/clinicalprocess-healthcond-description/CodeSystem/assessmentcategory-cs"
* category[bedomningskategori].coding.code 1..1 MS
* category[bedomningskategori] from AssessmentCategoryVS (required)
* category[bedomningskategori] ^short = "Bedömningskategori (functionalStatusAssessmentBody.assessmentCategory) – pad-pad eller fun-fun"

* clinicalStatus MS
* clinicalStatus ^short = "Alltid 'active' – härledd (inget statusfält i TKBn)"

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
