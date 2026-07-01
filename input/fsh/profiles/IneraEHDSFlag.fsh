Profile: IneraEHDSFlag
Parent: Flag
Id: inera-ehds-flag
Title: "SE EHDS Flag – Uppmärksamhetsinformation (GetAlertInformation)"
Description: """
  Primär profil för ALL uppmärksamhetsinformation från GetAlertInformation
  (clinicalprocess:healthcond:description v2.0).

  Varje alertInformation-post ger alltid en Flag-resurs.
  Om typeOfAlertInformation anger allergi/överkänslighet (body = hypersensitivity)
  skapas dessutom en IneraEHDSAllergyIntolerance-resurs som pekas ut via
  extension[flag-detail] (standard R4-extension; kallas supportingInfo i R5).

  Body-strukturen är XOR: exakt en av hypersensitivity, seriousDisease, treatment,
  communicableDisease, restrictionOfCare, unstructuredAlertInformation anges per post.

  Flag.category[alertType]           = typeOfAlertInformation (obligatorisk).
  Flag.category[hypersensitivityType] = typeOfHypersensitivity (när body = hypersensitivity).
  Flag.code                           = den kliniska koden specifik för body-typen.
  Flag.status                        = active/inactive härledd av obsoleteTime (se ALERT-006/status-fältet).

  Vid hypersensitivity görs Flag självförsörjande (oberoende av AllergyIntolerance) genom att
  FHIR-mappade extensions för allvarlighetsgrad (criticalityLevel) och visshetsgrad
  (verificationStatus) sätts direkt på Flag, utöver de råa källkoderna (degreeOfSeverity/
  degreeOfCertainty) – i linje med HL7 Sweden UMI-FHIR-arbetsgruppens mönster.

  Täcker NPÖ 2.0 och 1177 Journal 2.0.
"""

// ─── AllergyIntolerance-länk (standard R4-extension; R5: supportingInfo) ─────
* extension contains
    http://hl7.org/fhir/StructureDefinition/flag-detail named flagDetail 0..* MS
* extension[flagDetail] ^short = "Referens till AllergyIntolerance när body = hypersensitivity (R4: flag-detail; R5: supportingInfo)"

// ─── Gemensamma body-extensions ──────────────────────────────────────────────
* extension contains
    http://hl7.org/fhir/StructureDefinition/note named alertInformationComment 0..1 MS
* extension[alertInformationComment] ^short = """
    Kommentar till uppmärksamhetssignalen (alertInformationBody.alertInformationComment).
    Standard `note`-extension (hl7.fhir.uv.extensions) används istället för en lokal
    extension, i linje med Socialstyrelsens/HL7 Sweden UMI-FHIR-arbetsgruppens mönster
    för Flag – se ALERT-005 (stängd).
    Om obsoleteComment är angivet konkateneras det med prefix 'Inaktiveringskommentar: {obsoleteComment}'.
    För body = unstructuredAlertInformation: unstructuredAlertInformationContent läggs här.
  """
* extension contains AlertAscertainedDate named alertAscertainedDate 0..1 MS
* extension contains AlertVerifiedTime named alertVerifiedTime 0..1 MS
* extension contains AlertAssertedDate named alertAssertedDate 0..1 MS
* extension contains AlertAsserter named alertAsserter 0..1 MS
* extension contains RelatedAlertInformation named relatedAlertInformation 0..* MS

// ─── XOR body: hypersensitivity ──────────────────────────────────────────────
* extension contains AlertDegreeOfSeverity named degreeOfSeverity 0..1 MS
* extension contains AlertDegreeOfCertainty named degreeOfCertainty 0..1 MS
* extension contains AlertPharmaceuticalHypersensitivity named pharmaceuticalHypersensitivity 0..1 MS
* extension contains AlertCriticalityLevel named criticalityLevel 0..1 MS
* extension contains AlertVerificationStatus named verificationStatus 0..1 MS
* extension[criticalityLevel] ^short = """
    FHIR-mappad allvarlighetsgrad (tregradig skala), härledd från degreeOfSeverity via
    ConceptMap AlertCriticalityMap – se ALERT-004. Sätts direkt på Flag (utöver den råa
    degreeOfSeverity-koden) så att Flag är självförsörjande utan AllergyIntolerance, i linje
    med HL7 Sweden UMI-FHIR-arbetsgruppens criticalityLevel-mönster.
  """
* extension[verificationStatus] ^short = """
    FHIR-mappad visshetsgrad (som AllergyIntolerance.verificationStatus), härledd från
    degreeOfCertainty via ConceptMap AlertVerificationStatusMap – se ALERT-004. Sätts direkt
    på Flag (utöver den råa degreeOfCertainty-koden) så att Flag är självförsörjande utan
    AllergyIntolerance, i linje med HL7 Sweden UMI-FHIR-arbetsgruppens verificationStatus-mönster.
  """

// ─── XOR body: treatment ─────────────────────────────────────────────────────
* extension contains AlertTreatmentDescription named treatmentDescription 0..1 MS
* extension contains AlertPharmaceuticalTreatment named pharmaceuticalTreatment 0..* MS

// ─── XOR body: communicableDisease ───────────────────────────────────────────
* extension contains AlertRouteOfTransmission named routeOfTransmission 0..1 MS

// ─── XOR body: restrictionOfCare ─────────────────────────────────────────────
* extension contains AlertRestrictionOfCareComment named restrictionOfCareComment 0..1 MS

// ─── Header-fält ─────────────────────────────────────────────────────────────

* identifier MS
* identifier ^short = "Dokumentidentifierare (alertInformationHeader.documentId)"

* subject only Reference(IneraEHDSPatient)
* subject 1..1 MS
* subject ^short = "Patient (alertInformationHeader.patientId)"

* meta.source MS
* meta.source ^short = "Källsystem HSA-id (alertInformationHeader.sourceSystemHSAId)"

* meta.security MS
* meta.security ^short = "PDL-kontroll (alertInformationHeader.approvedForPatient) – se PDL-001"

* status 1..1 MS
* status ^short = """
    active om alertInformationBody.obsoleteTime saknas; inactive om obsoleteTime är satt.
    Motsvarar Socialstyrelsens UMI-regel (observerad förekomst & negation=falskt → active,
    negation=sant → inactive): denna TKB saknar ett explicit negation-fält, så obsoleteTime
    (faktisk inaktivering, se ALERT-006) används som närmast tillgängliga signal tills en
    källa med explicit negation-fält (UMI-modellerad) konsumeras. entered-in-error används inte.
  """

// ─── Body-fält ────────────────────────────────────────────────────────────────

* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains
    alertType 1..1 MS and
    hypersensitivityType 0..1 MS
* category[alertType] ^short = "Uppmärksamhetstyp (alertInformationBody.typeOfAlertInformation)"
* category[hypersensitivityType] ^short = "Precisering av överkänslighetstyp (alertInformationBody.hypersensitivity.typeOfHypersensitivity)"

* code 1..1 MS
* code ^short = """
    Klinisk kod per body-typ (XOR):
    hypersensitivity: atcSubstance (code.coding) eller hypersensitivityAgentCode (code.coding);
      fritext i code.text (nonATCSubstance / hypersensitivityAgent)
    seriousDisease: seriousDisease.disease. ICD10/SNOMED rekommenderas av TKBn; SNOMED CT från
      Socialstyrelsens kodverkslista för uppmärksamhetsinformation, urvalet "Annat medicinskt
      tillstånd" (OID 1.2.752.116.3.1.16.1.1), kan/bör användas som primärt kodverk – se ALERT-002.
    treatment: treatment.treatmentCode. KVÅ (1.2.752.116.1.3.2.1.4) rekommenderas av TKBn; SNOMED CT
      från Socialstyrelsens kodverkslista, urvalet "Behandling" (OID 1.2.752.116.3.1.16.1.2), kan/bör
      användas som alternativ/komplement – se ALERT-002. Tomt CodeableConcept om enbart
      treatmentDescription anges.
    communicableDisease: communicableDiseaseCode. ICD10 rekommenderas av TKBn; SNOMED CT från
      Socialstyrelsens kodverkslista för uppmärksamhetsinformation (urvalen "Förekomst av smittämne"/
      "Förekomst av smittsam sjukdom") kan anges som alternativ/komplement – exakt OID för dessa två
      urval är ej bekräftat i denna IG, se ALERT-002.
    unstructuredAlertInformation: unstructuredAlertInformationHeading som code.text
    restrictionOfCare: ingen strukturerad kod; tomt CodeableConcept
  """

* period MS
* period.start 1..1 MS
* period.start ^short = "Giltighet från (alertInformationBody.validityTimePeriod.start)"
* period.end MS
* period.end ^short = "Giltighet till: validityTimePeriod.end (planerat slut) eller obsoleteTime (faktisk inaktivering) – det minsta av dessa"

* author only Reference(PractitionerRole)
* author MS
* author ^short = "Ansvarig hälso- och sjukvårdspersonal (alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId)"

* encounter MS
* encounter ^short = "Kopplad vårdkontakt (alertInformationHeader.careContactId)"

// ─── Extension-definitioner ───────────────────────────────────────────────────
// OBS: kommentarextensionen (alertInformationComment) använder standard `note`-extensionen
// (http://hl7.org/fhir/StructureDefinition/note, hl7.fhir.uv.extensions) via slicingen ovan –
// se ALERT-005. Ingen lokal extension definieras längre för detta ändamål.

Extension: AlertAscertainedDate
Id: alert-ascertained-date
Title: "Datum för konstaterande"
Description: "Datum då förhållandet som föranledde uppmärksamhetssignalen konstaterades (alertInformationBody.ascertainedDate)."
* value[x] only date

Extension: AlertVerifiedTime
Id: alert-verified-time
Title: "Tidpunkt för verifiering"
Description: "Tidpunkt då uppmärksamhetssignalen verifierades i det lokala systemet (alertInformationBody.verifiedTime)."
* value[x] only dateTime

Extension: AlertAssertedDate
Id: alert-asserted-date
Title: "Signeringstidpunkt för uppmärksamhetssignal"
Description: "Tidpunkt för signering av uppmärksamhetsinformation (alertInformationHeader.legalAuthenticator.signatureTime)."
* value[x] only dateTime

Extension: AlertAsserter
Id: alert-asserter
Title: "Juridisk äkthetsintygsgivare för uppmärksamhetssignal"
Description: "HSA-id för juridisk äkthetsintygsgivare (alertInformationHeader.legalAuthenticator.legalAuthenticatorHSAId)."
* value[x] only Reference(PractitionerRole)

Extension: RelatedAlertInformation
Id: related-alert-information
Title: "Relaterad uppmärksamhetssignal"
Description: "Information om samband med andra uppmärksamhetssignaler (alertInformationBody.relatedAlertInformation)."
* extension contains
    typeOfRelationship 1..1 and
    relationComment 0..1 and
    documentId 1..*
* extension[typeOfRelationship].value[x] only CodeableConcept
* extension[typeOfRelationship] ^short = "Typ av samband (relatedAlertInformation.typeOfAlertInformationRelationship)"
* extension[relationComment].value[x] only string
* extension[relationComment] ^short = "Kommentar till samband (relatedAlertInformation.relationComment)"
* extension[documentId].value[x] only string
* extension[documentId] ^short = "Relaterat dokumentid (relatedAlertInformation.documentId)"

Extension: AlertDegreeOfSeverity
Id: alert-degree-of-severity
Title: "Allvarlighetsgrad för överkänslighet"
Description: "Bedömning av överkänslighetens allvarlighetsgrad (alertInformationBody.hypersensitivity.degreeOfSeverity). KV Allvarlighetsgrad 1.2.752.129.2.2.3.3."
* value[x] only CodeableConcept

Extension: AlertDegreeOfCertainty
Id: alert-degree-of-certainty
Title: "Visshet för överkänslighet"
Description: "Visshetsgrad för överkänsligheten (alertInformationBody.hypersensitivity.degreeOfCertainty). KV Visshetsgrad 1.2.752.129.2.2.3.11."
* value[x] only CodeableConcept

Extension: AlertCriticalityLevel
Id: alert-criticality-level
Title: "Allvarlighetsgrad (FHIR-mappad, tregradig skala)"
Description: """
  FHIR-mappad allvarlighetsgrad för överkänslighet, satt direkt på `Flag` så att `Flag` är
  självförsörjande även när ingen `AllergyIntolerance`-resurs skapas – i linje med HL7 Sweden
  UMI-FHIR-arbetsgruppens `criticalityLevel`-mönster.

  Härleds från alertInformationBody.hypersensitivity.degreeOfSeverity (KV Allvarlighetsgrad,
  1.2.752.129.2.2.3.3) via ConceptMap AlertCriticalityMap (se ALERT-004):
  livshotande → life-threatening, skadlig → harmful, besvärande → discomforting.

  Samma ConceptMap reducerar värdet vidare till en tvågradig skala
  (life-threatening/harmful → high, discomforting → low) för `AllergyIntolerance.criticality`.
"""
* value[x] only CodeableConcept
* value[x] from AlertCriticalityLevelVS (required)

Extension: AlertVerificationStatus
Id: alert-verification-status
Title: "Visshetsgrad (FHIR-mappad, som AllergyIntolerance.verificationStatus)"
Description: """
  FHIR-mappad visshetsgrad, satt direkt på `Flag` så att `Flag` är självförsörjande även när
  ingen `AllergyIntolerance`-resurs skapas – i linje med HL7 Sweden UMI-FHIR-arbetsgruppens
  `verificationStatus`-mönster på Flag.

  Härleds från alertInformationBody.hypersensitivity.degreeOfCertainty (KV Visshetsgrad,
  1.2.752.129.2.2.3.11) via ConceptMap AlertVerificationStatusMap (se ALERT-004):
  misstänkt → presumed. Om degreeOfCertainty saknas antas observationen fastställd → confirmed.
  entered-in-error används inte.
"""
* value[x] only code
* value[x] from http://hl7.org/fhir/ValueSet/allergyintolerance-verification (required)

Extension: AlertPharmaceuticalHypersensitivity
Id: alert-pharmaceutical-hypersensitivity
Title: "Läkemedelsöverkänslighet – substansdetaljer"
Description: """
  Kompletterande substansdetaljer för läkemedelsöverkänslighet
  (alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity).
  Primär substans: atcSubstance → Flag.code.coding; nonATCSubstance → Flag.code.text.
  Denna extension bär kvarvarande detaljer: nonATCSubstanceComment och pharmaceuticalProductId.
"""
* extension contains
    nonATCSubstanceComment 0..1 and
    pharmaceuticalProductId 0..*
* extension[nonATCSubstanceComment].value[x] only string
* extension[nonATCSubstanceComment] ^short = "Förklaring till avsaknad ATC-kod (pharmaceuticalHypersensitivity.nonATCSubstanceComment)"
* extension[pharmaceuticalProductId].value[x] only CodeableConcept
* extension[pharmaceuticalProductId] ^short = "Läkemedelsprodukt-id/NPL-id (pharmaceuticalHypersensitivity.pharmaceuticalProductId)"

Extension: AlertTreatmentDescription
Id: alert-treatment-description
Title: "Behandlingsbeskrivning"
Description: "Beskrivning av allvarlig behandling som patienten genomgår (alertInformationBody.treatment.treatmentDescription). Behandlingskod läggs i Flag.code."
* value[x] only string

Extension: AlertPharmaceuticalTreatment
Id: alert-pharmaceutical-treatment
Title: "Läkemedel vid behandling"
Description: "Läkemedel som används vid uppmärksammad behandling, ATC-kod rekommenderas (alertInformationBody.treatment.pharmaceuticalTreatment). Lista med 0..* – ryms ej i Flag.code (1..1)."
* value[x] only CodeableConcept

Extension: AlertRouteOfTransmission
Id: alert-route-of-transmission
Title: "Smittväg"
Description: "Kod för hur sjukdomen smittar (alertInformationBody.communicableDisease.routeOfTransmission). KV Smittväg."
* value[x] only CodeableConcept

Extension: AlertRestrictionOfCareComment
Id: alert-restriction-of-care-comment
Title: "Kommentar om vårdbegränsning"
Description: "Information om uppmärksammat förhållande som inte avser överkänslighet, sjukdom eller behandling (alertInformationBody.restrictionOfCare.restrictionOfCareComment)."
* value[x] only string
