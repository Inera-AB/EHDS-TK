Profile: SEEHDSFlag
Parent: Flag
Id: se-ehds-flag
Title: "SE EHDS Flag – Uppmärksamhetsinformation (GetAlertInformation)"
Description: """
  Primär profil för ALL uppmärksamhetsinformation från GetAlertInformation
  (clinicalprocess:healthcond:description v2.0).

  Varje alertInformation-post ger alltid en Flag-resurs.
  Om typeOfAlertInformation anger allergi/överkänslighet (body = hypersensitivity)
  skapas dessutom en SEEHDSAllergyIntolerance-resurs som pekas ut via
  extension[allergyReference].

  Body-strukturen är XOR: exakt en av hypersensitivity, seriousDisease, treatment,
  communicableDisease, restrictionOfCare, unstructuredAlertInformation anges per post.
  Typspecifika kliniska detaljer bärs av extensions definierade i denna profil.

  Täcker NPÖ 2.0 och 1177 Journal 2.0.
"""

// ─── AllergyIntolerance-länk ─────────────────────────────────────────────────
* extension contains AllergyReference named allergyReference 0..1 MS

// ─── Länk till Observation med klinisk detaljinformation (UMI-mönster) ──────
* extension contains
    http://hl7.org/fhir/StructureDefinition/flag-detail named flagDetail 0..* MS

// ─── Gemensamma body-extensions ──────────────────────────────────────────────
* extension contains AlertInformationComment named alertInformationComment 0..1 MS
* extension contains AlertObsoleteTime named alertObsoleteTime 0..1 MS
* extension contains AlertObsoleteComment named alertObsoleteComment 0..1 MS
* extension contains AlertAscertainedDate named alertAscertainedDate 0..1 MS
* extension contains AlertVerifiedTime named alertVerifiedTime 0..1 MS
* extension contains AlertAssertedDate named alertAssertedDate 0..1 MS
* extension contains AlertAsserter named alertAsserter 0..1 MS
* extension contains RelatedAlertInformation named relatedAlertInformation 0..* MS

// ─── XOR body: hypersensitivity ──────────────────────────────────────────────
* extension contains AlertTypeOfHypersensitivity named typeOfHypersensitivity 0..1 MS
* extension contains AlertDegreeOfSeverity named degreeOfSeverity 0..1 MS
* extension contains AlertDegreeOfCertainty named degreeOfCertainty 0..1 MS
* extension contains AlertPharmaceuticalHypersensitivity named pharmaceuticalHypersensitivity 0..1 MS
* extension contains AlertOtherHypersensitivity named otherHypersensitivity 0..1 MS

// ─── XOR body: seriousDisease ────────────────────────────────────────────────
* extension contains AlertSeriousDiseaseCode named seriousDiseaseCode 0..1 MS

// ─── XOR body: treatment ─────────────────────────────────────────────────────
* extension contains AlertTreatmentDescription named treatmentDescription 0..1 MS
* extension contains AlertTreatmentCode named treatmentCode 0..1 MS
* extension contains AlertPharmaceuticalTreatment named pharmaceuticalTreatment 0..* MS

// ─── XOR body: communicableDisease ───────────────────────────────────────────
* extension contains AlertCommunicableDiseaseCode named communicableDiseaseCode 0..1 MS
* extension contains AlertRouteOfTransmission named routeOfTransmission 0..1 MS

// ─── XOR body: restrictionOfCare ─────────────────────────────────────────────
* extension contains AlertRestrictionOfCareComment named restrictionOfCareComment 0..1 MS

// ─── XOR body: unstructuredAlertInformation ──────────────────────────────────
* extension contains AlertUnstructuredAlertInformation named unstructuredAlertInformation 0..1 MS

// ─── Header-fält ─────────────────────────────────────────────────────────────

* identifier MS
* identifier ^short = "Dokumentidentifierare (alertInformationHeader.documentId)"

* subject only Reference(SEEHDSPatient)
* subject 1..1 MS
* subject ^short = "Patient (alertInformationHeader.patientId)"

* meta.source MS
* meta.source ^short = "Källsystem HSA-id (alertInformationHeader.sourceSystemHSAId)"

* meta.security MS
* meta.security ^short = "PDL-kontroll (alertInformationHeader.approvedForPatient) – se PDL-001"

* status 1..1 MS
* status ^short = "Alltid 'active' – inget statusfält i TKBn; returnerade poster är per definition aktiva"

// ─── Body-fält ────────────────────────────────────────────────────────────────

* category 1..* MS
* category ^short = "Uppmärksamhetstyp (alertInformationBody.typeOfAlertInformation)"

* code 1..1 MS
* code ^short = "Uppmärksamhetskod (alertInformationBody.typeOfAlertInformation – samma värde som category)"

* period MS
* period.start 1..1 MS
* period.start ^short = "Giltighet från (alertInformationBody.validityTimePeriod.start)"
* period.end MS
* period.end ^short = "Giltighet till (alertInformationBody.validityTimePeriod.end)"

* author only Reference(PractitionerRole)
* author MS
* author ^short = "Ansvarig hälso- och sjukvårdspersonal (alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId)"

* encounter MS
* encounter ^short = "Kopplad vårdkontakt (alertInformationHeader.careContactId)"

// ─── Extension-definitioner ───────────────────────────────────────────────────

Extension: AllergyReference
Id: allergy-reference
Title: "Referens till AllergyIntolerance"
Description: "Pekar ut den SEEHDSAllergyIntolerance-resurs som skapats för samma alertInformation-post när typeOfAlertInformation anger allergi/överkänslighet."
* value[x] only Reference(SEEHDSAllergyIntolerance)

Extension: AlertInformationComment
Id: alert-information-comment
Title: "Kommentar till uppmärksamhetssignal"
Description: "Kommentar av ansvarig hälso- och sjukvårdspersonal angående uppmärksamhetssignalen (alertInformationBody.alertInformationComment)."
* value[x] only string

Extension: AlertObsoleteTime
Id: alert-obsolete-time
Title: "Tidpunkt för inaktivering"
Description: "Tidpunkt då uppmärksamhetssignalen registrerades som inaktuell i det lokala systemet (alertInformationBody.obsoleteTime)."
* value[x] only dateTime

Extension: AlertObsoleteComment
Id: alert-obsolete-comment
Title: "Kommentar till inaktivering"
Description: "Information om varför uppmärksamhetssignalen gjorts inaktuell (alertInformationBody.obsoleteComment)."
* value[x] only string

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

Extension: AlertTypeOfHypersensitivity
Id: alert-type-of-hypersensitivity
Title: "Typ av överkänslighet"
Description: "Precisering av överkänslighetstyp (alertInformationBody.hypersensitivity.typeOfHypersensitivity)."
* value[x] only CodeableConcept

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

Extension: AlertPharmaceuticalHypersensitivity
Id: alert-pharmaceutical-hypersensitivity
Title: "Läkemedelsöverkänslighet"
Description: "Detaljerad information om läkemedelsöverkänslighet (alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity)."
* extension contains
    atcSubstance 0..1 and
    nonATCSubstance 0..1 and
    nonATCSubstanceComment 0..1 and
    pharmaceuticalProductId 0..*
* extension[atcSubstance].value[x] only CodeableConcept
* extension[atcSubstance] ^short = "ATC-substans (pharmaceuticalHypersensitivity.atcSubstance)"
* extension[nonATCSubstance].value[x] only string
* extension[nonATCSubstance] ^short = "Substans utan ATC-kod (pharmaceuticalHypersensitivity.nonATCSubstance)"
* extension[nonATCSubstanceComment].value[x] only string
* extension[nonATCSubstanceComment] ^short = "Kommentar avsaknad ATC-kod (pharmaceuticalHypersensitivity.nonATCSubstanceComment)"
* extension[pharmaceuticalProductId].value[x] only CodeableConcept
* extension[pharmaceuticalProductId] ^short = "Läkemedelsprodukt-id/NPL-id (pharmaceuticalHypersensitivity.pharmaceuticalProductId)"

Extension: AlertOtherHypersensitivity
Id: alert-other-hypersensitivity
Title: "Annan överkänslighet"
Description: "Detaljerad information om överkänslighet som ej är läkemedelsöverkänslighet (alertInformationBody.hypersensitivity.otherHypersensitivity)."
* extension contains
    hypersensitivityAgent 0..1 and
    hypersensitivityAgentCode 0..1
* extension[hypersensitivityAgent].value[x] only string
* extension[hypersensitivityAgent] ^short = "Agens i klartext (otherHypersensitivity.hypersensitivityAgent)"
* extension[hypersensitivityAgentCode].value[x] only CodeableConcept
* extension[hypersensitivityAgentCode] ^short = "Agenskod (otherHypersensitivity.hypersensitivityAgentCode)"

Extension: AlertSeriousDiseaseCode
Id: alert-serious-disease-code
Title: "Allvarlig sjukdomskod"
Description: "Kod för allvarlig sjukdom som patienten har (alertInformationBody.seriousDisease.disease). ICD10/SNOMED rekommenderas."
* value[x] only CodeableConcept

Extension: AlertTreatmentDescription
Id: alert-treatment-description
Title: "Behandlingsbeskrivning"
Description: "Beskrivning av allvarlig behandling som patienten genomgår (alertInformationBody.treatment.treatmentDescription)."
* value[x] only string

Extension: AlertTreatmentCode
Id: alert-treatment-code
Title: "Behandlingskod"
Description: "Preciserad uppgift om behandlingen i KVÅ-kod (alertInformationBody.treatment.treatmentCode)."
* value[x] only CodeableConcept

Extension: AlertPharmaceuticalTreatment
Id: alert-pharmaceutical-treatment
Title: "Läkemedel vid behandling"
Description: "Läkemedel som används vid uppmärksammad behandling, ATC-kod rekommenderas (alertInformationBody.treatment.pharmaceuticalTreatment)."
* value[x] only CodeableConcept

Extension: AlertCommunicableDiseaseCode
Id: alert-communicable-disease-code
Title: "Smittsam sjukdomskod"
Description: "Kod för smittsam sjukdom (alertInformationBody.communicableDisease.communicableDiseaseCode). ICD10 rekommenderas."
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

Extension: AlertUnstructuredAlertInformation
Id: alert-unstructured-alert-information
Title: "Historisk varning"
Description: "Rubrik och innehåll för historisk varning som inte följer NPÖ-strukturen (alertInformationBody.unstructuredAlertInformation)."
* extension contains
    heading 1..1 and
    content 1..1
* extension[heading].value[x] only string
* extension[heading] ^short = "Rubrik för historisk varning (unstructuredAlertInformation.unstructuredAlertInformationHeading)"
* extension[content].value[x] only string
* extension[content] ^short = "Innehåll för historisk varning (unstructuredAlertInformation.unstructuredAlertInformationContent)"
