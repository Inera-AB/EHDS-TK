// RIV-TA GetDiagnosis 2.0 – svarsmeddelandet GetDiagnosisResponse.
// Struktur, namn, ordning, namnrymder och XSD-kardinaliteter är genererade från
// riv.clinicalprocess.healthcond.description/schemas/interactions/GetDiagnosisInteraction/GetDiagnosisResponder_2.0.xsd (bitbucket.org/rivta-domains).
// Kardinaliteter är verifierade mot TKB_clinicalprocess_healthcond_description.docx; texter är sammanslagna från tidigare modell och TKB.

Logical: SEEHDSLMDiagnosis
Id: SEEHDSLMDiagnosis
Title: "GetDiagnosis"
Description: """
  Logisk modell för tjänstekontraktet GetDiagnosis
  (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetDiagnosisResponder:2).
  Representerar responsens informationsstruktur: registrerade diagnoser för en patient
  inklusive diagnoskod per ursprungligt diagnosticeringstillfälle.
"""
* insert RivRoot(GetDiagnosisResponse, urn:riv:clinicalprocess:healthcond:description:GetDiagnosisResponder:2)
* diagnosis 0..* BackboneElement "Diagnos" """De diagnoser som matchar begäran. En instans per diagnos."""
* diagnosis.diagnosisHeader 1..1 BackboneElement "Dokumenthuvud (PatientSummaryHeader)" """Innehåller basinformation om dokumentet (PatientSummaryHeaderType)."""
* insert RivNs(diagnosis.diagnosisHeader, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.documentId 1..1 SEEHDSRivString "Dokumentets identitet" """Dokumentets identitet som är unik inom källsystemet."""
* insert RivNs(diagnosis.diagnosisHeader.documentId, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.sourceSystemHSAId 1..1 SEEHDSRivString "HSA-id för källsystem" """HSA-id för det system som tillgängliggör informationen."""
* insert RivNs(diagnosis.diagnosisHeader.sourceSystemHSAId, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.documentTitle 0..0 SEEHDSRivString "Titel (ej tillämpligt)" """N/A — GetDiagnosis skickar inte documentTitle. Elementet är 0..0 per TKB."""
* insert RivNs(diagnosis.diagnosisHeader.documentTitle, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.documentTime 0..0 SEEHDSRivTimeStamp "Tidpunkt (ej tillämpligt)" """
    N/A — GetDiagnosis skickar inte documentTime. Elementet är 0..0 per TKB.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(diagnosis.diagnosisHeader.documentTime, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.patientId 1..1 SEEHDSRivPersonIdTypeHealthcondDescription2 "Patientidentifierare" """
    Identifierare för patient. id = patientens identifierare (12 tecken).
    type = OID för typ av identifierare. För personnummer: 1.2.752.129.2.1.3.1.
  """
* insert RivNs(diagnosis.diagnosisHeader.patientId, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.accountableHealthcareProfessional 1..1 BackboneElement "Ansvarig hälso- och sjukvårdsperson" """Information om den hälso- och sjukvårdsperson som är ansvarig för informationen."""
* insert RivNs(diagnosis.diagnosisHeader.accountableHealthcareProfessional, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.authorTime 1..1 SEEHDSRivTimeStamp "Tidpunkt för registrering" """
    Tidpunkt då informationen registrerades. Format: YYYYMMDDhhmmss.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(diagnosis.diagnosisHeader.accountableHealthcareProfessional.authorTime, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId 0..1 SEEHDSRivString "Författarens HSA-id" """Författarens HSA-id."""
* insert RivNs(diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalName 0..1 SEEHDSRivString "Namn på hälso- och sjukvårdspersonal" """Namn på hälso- och sjukvårdspersonal. Om tillgängligt ska detta anges."""
* insert RivNs(diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalName, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode 0..1 SEEHDSRivCVTypeHealthcondDescription2 "Befattning" """Information om personens befattning."""
* insert RivNs(diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit 0..1 BackboneElement "Organisationsenhet" """Den organisation som hälso- och sjukvårdspersonalen är uppdragstagare i."""
* insert RivNs(diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId 1..1 SEEHDSRivString "HSA-id för organisationsenhet" """HSA-id för organisationsenhet."""
* insert RivNs(diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName 1..1 SEEHDSRivString "Namn på organisationsenhet" """Namnet på den organisation som hälso- och sjukvårdspersonalen är uppdragstagare i."""
* insert RivNs(diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till organisationsenhet" """Telefon till organisationsenhet."""
* insert RivNs(diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail 0..1 SEEHDSRivString "E-post till organisationsenhet" """Epost till organisationsenhet."""
* insert RivNs(diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress 0..1 SEEHDSRivString "Postadress till organisationsenhet" """Postadress för den organisation som författaren är uppdragstagare på."""
* insert RivNs(diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation 0..1 SEEHDSRivString "Plats för organisationsenhet" """Text som anger namnet på plats eller ort för organisationens fysiska placering."""
* insert RivNs(diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId 0..1 SEEHDSRivString "HSA-id för vårdenhet" """HSA-id för vårdenhet. Se regel 1 i TKB."""
* insert RivNs(diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId 0..1 SEEHDSRivString "HSA-id för vårdgivare" """HSA-id för vårdgivaren, som är vårdgivare för den vårdenhet där personalen verkar."""
* insert RivNs(diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.legalAuthenticator 0..1 BackboneElement "Signerande person" """Information om vem som signerat informationen i dokumentet."""
* insert RivNs(diagnosis.diagnosisHeader.legalAuthenticator, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.legalAuthenticator.signatureTime 1..1 SEEHDSRivTimeStamp "Tidpunkt för signering" """
    Tidpunkt för signering. Format: YYYYMMDDhhmmss.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(diagnosis.diagnosisHeader.legalAuthenticator.signatureTime, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorHSAId 0..1 SEEHDSRivString "HSA-id för signerande person" """HSA-id för person som signerat dokumentet."""
* insert RivNs(diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorHSAId, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorName 0..1 SEEHDSRivString "Namn på signerande person" """Namn i klartext för signerande person."""
* insert RivNs(diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorName, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.approvedForPatient 1..1 SEEHDSRivBoolean "Godkänd för visning till patient" """Anger om information får delas till patient."""
* insert RivNs(diagnosis.diagnosisHeader.approvedForPatient, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.careContactId 0..1 SEEHDSRivString "Vårdkontakts-id" """Identitet för den hälso- och sjukvårdskontakt som diagnosen dokumenterades vid."""
* insert RivNs(diagnosis.diagnosisHeader.careContactId, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.nullified 0..0 SEEHDSRivBoolean "Makulerad" """N/A"""
* insert RivNs(diagnosis.diagnosisHeader.nullified, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisHeader.nullifiedReason 0..0 SEEHDSRivString "Makuleringsorsak" """N/A"""
* insert RivNs(diagnosis.diagnosisHeader.nullifiedReason, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisBody 1..1 BackboneElement "Diagnosens innehåll" """DiagnosisBodyType — diagnosens informationsinnehåll."""
* insert RivNs(diagnosis.diagnosisBody, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisBody.typeOfDiagnosis 1..1 SEEHDSRivString "Typ av diagnos" """
    Anges som HD (huvuddiagnos) eller BY (bidiagnos) från kv_diagnostyp. Se DiagnosisTypeCS/DiagnosisTypeVS.
    Tillåtna värden enligt XSD: Huvuddiagnos, Bidiagnos.
  """
* insert RivNs(diagnosis.diagnosisBody.typeOfDiagnosis, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisBody.typeOfDiagnosis.value from DiagnosisTypeVS (required)
* diagnosis.diagnosisBody.chronicDiagnosis 0..1 SEEHDSRivBoolean "Kronisk diagnos" """Sätts till true om diagnosen är kronisk, false om den inte är kronisk."""
* insert RivNs(diagnosis.diagnosisBody.chronicDiagnosis, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisBody.diagnosisTime 0..1 SEEHDSRivTimeStamp "Tidpunkt för diagnos" """
    Tidpunkt då bedömningen gjordes. Format: YYYYMMDDhhmmss.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(diagnosis.diagnosisBody.diagnosisTime, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisBody.diagnosisCode 0..1 SEEHDSRivCVTypeHealthcondDescription2 "Diagnoskod" """Diagnoskod. Normalt ICD-10-SE (OID okänt — se ASSUME-001 i QUESTIONS.md)."""
* insert RivNs(diagnosis.diagnosisBody.diagnosisCode, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisBody.relatedDiagnosis 0..* BackboneElement "Relaterad diagnos" """
    Relaterad diagnos. Associationen används för att koppla en bidiagnos till sin huvuddiagnos.
  """
* insert RivNs(diagnosis.diagnosisBody.relatedDiagnosis, urn:riv:clinicalprocess:healthcond:description:2)
* diagnosis.diagnosisBody.relatedDiagnosis.documentId 1..1 SEEHDSRivString "Relaterad diagnos dokumentid" """Unik identitet för den relaterade diagnosen."""
* insert RivNs(diagnosis.diagnosisBody.relatedDiagnosis.documentId, urn:riv:clinicalprocess:healthcond:description:2)
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
