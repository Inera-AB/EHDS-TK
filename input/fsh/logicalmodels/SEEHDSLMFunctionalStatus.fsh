// RIV-TA GetFunctionalStatus 2.0 – svarsmeddelandet GetFunctionalStatusResponse.
// Struktur, namn, ordning, namnrymder och XSD-kardinaliteter är genererade från
// riv.clinicalprocess.healthcond.description/schemas/interactions/GetFunctionalStatusInteraction/GetFunctionalStatusResponder_2.0.xsd (bitbucket.org/rivta-domains).
// Kardinaliteter är verifierade mot TKB_clinicalprocess_healthcond_description.docx; texter är sammanslagna från tidigare modell och TKB.

Logical: SEEHDSLMFunctionalStatus
Id: SEEHDSLMFunctionalStatus
Title: "GetFunctionalStatus"
Description: """
  Logisk modell för tjänstekontraktet GetFunctionalStatus
  (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2).
  Representerar responsens informationsstruktur: dokumenterade bedömningar av
  funktionsnedsättningar och/eller aktivitetsförmåga (PADL) för en patient.
  Bedömningskategori styrs av assessmentCategory: 'pad-pad' (PADL) eller 'fun-fun' (funktionsnedsättning).
  En tjänsteproducent måste använda samma värde för categorization i engagemangsindex som
  för assessmentCategory i svaret.
"""
* insert RivRoot(GetFunctionalStatusResponse, urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2)
* functionalStatusAssessment 0..* BackboneElement "Funktionsstatusbedömning" """De funktionsstatusbedömningar som matchar begäran."""
* functionalStatusAssessment.functionalStatusAssessmentHeader 1..1 BackboneElement "Dokumenthuvud (PatientSummaryHeader)" """Innehåller basinformation om dokumentet (PatientSummaryHeaderType)."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.documentId 1..1 SEEHDSRivString "Dokumentets identitet" """Funktionsbedömningens identitet som är unik inom källsystemet."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.documentId, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.sourceSystemHSAId 1..1 SEEHDSRivString "HSA-id för källsystem" """HSA-id för det system som tillgängliggör informationen."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.sourceSystemHSAId, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.documentTitle 0..0 SEEHDSRivString "Titel (ej tillämpligt)" """N/A — GetFunctionalStatus skickar inte documentTitle. Elementet är 0..0 per TKB."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.documentTitle, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.documentTime 1..1 SEEHDSRivTimeStamp "Bedömningstidpunkt" """
    Bedömningstidpunkt/händelsetidpunkt. Format: YYYYMMDDhhmmss.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.documentTime, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.patientId 1..1 SEEHDSRivPersonIdTypeHealthcondDescription2 "Patientidentifierare" """
    Identifierare för patient. id = patientens identifierare (12 tecken).
    type = OID för typ av identifierare.
  """
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.patientId, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional 1..1 BackboneElement "Ansvarig hälso- och sjukvårdsperson" """Information om den hälso- och sjukvårdsperson som är ansvarig för informationen."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.authorTime 1..1 SEEHDSRivTimeStamp "Tidpunkt för registrering" """
    Tidpunkt då informationen registrerades. Format: YYYYMMDDhhmmss.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.authorTime, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId 0..1 SEEHDSRivString "Författarens HSA-id" """Författarens HSA-id."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalName 0..1 SEEHDSRivString "Namn" """Namn på hälso- och sjukvårdspersonal."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalName, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode 0..1 SEEHDSRivCVTypeHealthcondDescription2 "Befattning" """Information om personens befattning."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit 0..1 BackboneElement "Organisationsenhet" """Den organisation som hälso- och sjukvårdspersonalen är uppdragstagare i."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId 1..1 SEEHDSRivString "HSA-id för organisationsenhet" """HSA-id för organisationsenhet."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName 1..1 SEEHDSRivString "Namn på organisationsenhet" """Namn på organisationsenhet."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till organisationsenhet" """Telefon till organisationsenhet."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail 0..1 SEEHDSRivString "E-post till organisationsenhet" """Epost till organisationsenhet."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress 0..1 SEEHDSRivString "Postadress till organisationsenhet" """Postadress för den organisation som författaren är uppdragstagare på."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation 0..1 SEEHDSRivString "Plats för organisationsenhet" """Text som anger namnet på plats eller ort för organisationens fysiska placering."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId 0..1 SEEHDSRivString "HSA-id för vårdenhet" """HSA-id för vårdenhet. Se regel 1 i TKB."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId 0..1 SEEHDSRivString "HSA-id för vårdgivare" """HSA-id för vårdgivaren."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator 0..1 BackboneElement "Signerande person" """Information om vem som signerat informationen i dokumentet."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.signatureTime 1..1 SEEHDSRivTimeStamp "Tidpunkt för signering" """
    Signaturtidpunkt. Format: YYYYMMDDhhmmss.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.signatureTime, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.legalAuthenticatorHSAId 0..1 SEEHDSRivString "HSA-id för signerande" """HSA-id för person som signerat dokumentet."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.legalAuthenticatorHSAId, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.legalAuthenticatorName 0..1 SEEHDSRivString "Namn på signerande person" """Namn i klartext för signerande person."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.legalAuthenticatorName, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.approvedForPatient 1..1 SEEHDSRivBoolean "Godkänd för visning till patient" """Anger om information får delas till patient."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.approvedForPatient, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.careContactId 0..1 SEEHDSRivString "Vårdkontakts-id" """Id för den vårdkontakt vid vilken bedömningen genomfördes."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.careContactId, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.nullified 0..0 SEEHDSRivBoolean "Makulerat (ej tillämpligt)" """N/A — GetFunctionalStatus stödjer inte nullified. Elementet är 0..0 per TKB."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.nullified, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentHeader.nullifiedReason 0..0 SEEHDSRivString "Makuleringsskäl (ej tillämpligt)" """N/A — GetFunctionalStatus stödjer inte nullifiedReason. Elementet är 0..0 per TKB."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentHeader.nullifiedReason, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentBody 1..1 BackboneElement "Bedömningens innehåll" """FunctionalStatusAssessmentBodyType — bedömningens informationsinnehåll."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentBody, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentBody.assessmentCategory 1..1 SEEHDSRivString "Bedömningskategori" """
    Bedömningskategori. 'pad-pad' = PADL-bedömning, 'fun-fun' = funktionsnedsättningsbedömning.
    OBS: tjänsteproducent måste använda samma värde som categorization i engagemangsindex.
    Se AssessmentCategoryCS/AssessmentCategoryVS.
    Tillåtna värden enligt XSD: pad-pad, fun-fun.
  """
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentBody.assessmentCategory, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentBody.assessmentCategory.value from AssessmentCategoryVS (required)
* functionalStatusAssessment.functionalStatusAssessmentBody.comment 0..1 SEEHDSRivString "Kommentar" """
    Kommentar till total bedömning.
    Villkor (Regel): Får ENDAST anges om assessmentCategory = 'pad-pad'.
  """
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentBody.comment, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentBody.padl 0..* BackboneElement "PADL-bedömning" """Beskriver gjorda PADL-bedömningar. Får enbart anges om assessmentCategory = 'pad-pad'."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentBody.padl, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentBody.padl.typeOfAssessment 1..1 SEEHDSRivCVTypeHealthcondDescription2 "Typ av PADL-bedömning" """
    Typ av PADL-bedömning. Kan anges med lämpligt kodsystem för PADL.
    Regel 2 (TKB): Då attributet avser Personlig ADL ska ENBART ett av följande värden anges per post: 'personlig hygien', 'på/avklädning', 'förflyttning', 'toalettbesök', 'födointag'.
  """
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentBody.padl.typeOfAssessment, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentBody.padl.assessment 1..1 SEEHDSRivString "Textuell PADL-bedömning" """Den textuella PADL-bedömning som gjorts i kategorin."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentBody.padl.assessment, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentBody.disability 0..1 BackboneElement "Funktionsnedsättningsbedömning" """
    Beskriver gjord funktionsnedsättningsbedömning.
    Får enbart anges om assessmentCategory = 'fun-fun'.
  """
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentBody.disability, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentBody.disability.disabilityAssessment 1..1 SEEHDSRivCVTypeHealthcondDescription2 "ICF-kod för funktionsnedsättning" """
    Angivelse av kod för den funktion som bedömts nedsatt.
    Kodsystem: ICF, OID 1.2.752.116.1.1.3.
    Exempelkod: b310 = röst- och talfunktioner.
    CVType-begränsningar: codeSystemName och codeSystemVersion är 0..0 (får ej anges) per TKB. Om code anges ska codeSystem och displayName anges, ej originalText. Om originalText anges ska inga andra attribut anges.
    Enligt TKB i detta sammanhang: codeSystemName 0..0, codeSystemVersion 0..0.
  """
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentBody.disability.disabilityAssessment, urn:riv:clinicalprocess:healthcond:description:2)
* functionalStatusAssessment.functionalStatusAssessmentBody.disability.comment 0..1 SEEHDSRivString "Kommentar till funktionsnedsättning" """Kommentar med ytterligare information om funktionsnedsättningen."""
* insert RivNs(functionalStatusAssessment.functionalStatusAssessmentBody.disability.comment, urn:riv:clinicalprocess:healthcond:description:2)
* result 1..1 BackboneElement "Resultat" """Innehåller information om begäran gick bra eller ej."""
* result.resultCode 1..1 SEEHDSRivString "Resultatkod" """
    Kan endast vara OK, INFO eller ERROR.
    Tillåtna värden enligt XSD: OK, ERROR, INFO.
  """
* insert RivNs(result.resultCode, urn:riv:clinicalprocess:healthcond:description:2)
* result.errorCode 0..1 SEEHDSRivString "Felkod" """
    Sätts endast om resultCode är ERROR. Tillåtna värden: INVALID_REQUEST.
    Tillåtna värden enligt XSD: INVALID_REQUEST.
  """
* insert RivNs(result.errorCode, urn:riv:clinicalprocess:healthcond:description:2)
* result.logId 1..1 SEEHDSRivString "Log-id" """En UUID som kan användas vid felanmälan för att spåra felet."""
* insert RivNs(result.logId, urn:riv:clinicalprocess:healthcond:description:2)
* result.subCode 0..1 SEEHDSRivString "Subkod" """Inga subkoder är specificerade."""
* insert RivNs(result.subCode, urn:riv:clinicalprocess:healthcond:description:2)
* result.message 0..1 SEEHDSRivString "Meddelande" """En beskrivande text som kan visas för användaren."""
* insert RivNs(result.message, urn:riv:clinicalprocess:healthcond:description:2)
