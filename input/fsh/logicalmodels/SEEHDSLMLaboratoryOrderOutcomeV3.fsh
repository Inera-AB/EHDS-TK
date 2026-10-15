// RIV-TA GetLaboratoryOrderOutcome 3.1 – svarsmeddelandet GetLaboratoryOrderOutcomeResponse.
// Struktur, namn, ordning, namnrymder och XSD-kardinaliteter är genererade från
// riv.clinicalprocess.healthcond.actoutcome@3.1.10/schemas/interactions/GetLaboratoryOrderOutcomeInteraction/GetLaboratoryOrderOutcomeResponder_3.1.xsd (bitbucket.org/rivta-domains).
// Kardinaliteter är verifierade mot TKB_clinicalprocess_healthcond_actoutcome.docx; texter är sammanslagna från tidigare modell och TKB.

Logical: SEEHDSLMLaboratoryOrderOutcomeV3
Id: SEEHDSLMLaboratoryOrderOutcomeV3
Title: "GetLaboratoryOrderOutcome 3.1"
Description: """
  Logisk modell för svaret i tjänstekontraktet GetLaboratoryOrderOutcome 3.1
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcomeResponder:3), domänversion 3.1.10.
  Äldre majorversion som fortfarande används. Senaste versionen beskrivs i SEEHDSLMLaboratoryOrderOutcome.
"""
* insert RivRoot(GetLaboratoryOrderOutcomeResponse, urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcomeResponder:3)
* laboratoryOrderOutcome 0..* BackboneElement "Returnerar en patients laboratoriesvar" """Returnerar en patients laboratoriesvar."""
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader 1..1 BackboneElement "Innehåller basinformation om dokumentet"
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentId 1..1 SEEHDSRivString "Unik identifierare för undersökningsresultatet" """
    Unik identifierare för undersökningsresultatet. Identitet ska vara unik inom källsystemet Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.sourceSystemHSAId 1..1 SEEHDSRivString "HSAid för det system som dokumentet är skapat i" """HSAid för det system som dokumentet är skapat i."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.sourceSystemHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentTitle 0..0 SEEHDSRivString "Ska ej anges" """Ska ej anges."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentTitle, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentTime 1..1 SEEHDSRivTimeStamp "Tidpunkten då laboratoriesvaret inkom till beställarens vårdinformationssystem" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentTime, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.patientId 1..1 SEEHDSRivPersonIdTypeHealthcondActoutcome3 "Id för patienten" """Id för patienten."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.patientId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional 1..1 BackboneElement "Information om den hälso- och sjukvårdsperson som framställt vårdbegäran som ligger till grund för svaret, …" """
    Information om den hälso- och sjukvårdsperson som framställt vårdbegäran som ligger till grund för svaret, nedan kallad författare.
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.authorTime 1..1 SEEHDSRivTimeStamp "Tidpunkt vid vilken laboratoriesvaret skapades eller senast uppdaterades i laboratoriesystemet" """
    Tidpunkt vid vilken laboratoriesvaret skapades eller senast uppdaterades i laboratoriesystemet.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.authorTime, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId 0..1 SEEHDSRivString "Författarens HSA-id"
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalName 0..1 SEEHDSRivString "Namn på författaren" """Namn på författaren. Om tillgängligt ska detta anges."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalName, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode 0..1 SEEHDSRivCVTypeHealthcondActoutcome3 "Information om personens befattning" """
    Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. Om kodverk saknas anges befattning i originalText.
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit 1..1 BackboneElement "Den organisation som författaren är uppdragstagare på" """
    Information om en organisationsenhet orgUnitHsaId: HSA-id för organisationsenhet orgUnitName Namn på organisationsenhet orgUnitTelecom: Telefon till organisationsenhet orgUnitEmail: Epost till enhet orgUnitAddress: Postadress till enhet orgUnitLocation: Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId 1..1 SEEHDSRivString "HSA-id för organisationsenhet" """HSA-id för organisationsenhet."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName 1..1 SEEHDSRivString "Namnet på den organisation som författaren är uppdragstagare på"
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till organisationsenhet"
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail 0..1 SEEHDSRivString "Epost till enhet"
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress 0..1 SEEHDSRivString "Postadress för den organisation som författaren är uppdragstagare på" """
    Postadress för den organisation som författaren är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis:”Storgatan 12468 91 Lilleby”
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation 0..1 SEEHDSRivString "Text som anger namnet påplats eller ort för organisationens fysiska placering"
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId 0..1 SEEHDSRivString "HSA-id för Vårdenhet" """HSA-id för Vårdenhet. Ska anges om tillgänglig. [Regel 1]"""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId 0..1 SEEHDSRivString "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för" """
    HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. Ska anges om tillgänglig. [Regel 1]
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator 0..1 BackboneElement "Information om vem som signerat informationen i dokumentet" """
    Information om vem som signerat informationen i dokumentet. Det är normalt laboratorieläkeren som signerar laboratoriesvar. Signering = signering av remissvar. Vidimering anges i attributet attested i bodyn.
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator.signatureTime 1..1 SEEHDSRivTimeStamp "Tidpunkt för signering av svaret" """
    Tidpunkt för signering av svaret.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator.signatureTime, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator.legalAuthenticatorHSAId 0..1 SEEHDSRivString "HSA-id för person som signerat dokumentet"
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator.legalAuthenticatorHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator.legalAuthenticatorName 0..1 SEEHDSRivString "Namnen i klartext för signerande person" """Namnen i klartext för signerande person."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator.legalAuthenticatorName, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator.legalAuthenticatorRoleCode 0..0 SEEHDSRivCVTypeHealthcondActoutcome3 "Ska ej anges" """Ska ej anges."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator.legalAuthenticatorRoleCode, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.approvedForPatient 1..1 SEEHDSRivBoolean "Anger om information får delas till patient" """
    Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false.
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.approvedForPatient, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.careContactId 0..1 SEEHDSRivString "Identitetet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet" """
    Identitetet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet.
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.careContactId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.nullified 0..0 SEEHDSRivBoolean "Ska ej anges" """Ska ej anges."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.nullified, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.nullifiedReason 0..0 SEEHDSRivString "Ska ej anges" """Ska ej anges."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.nullifiedReason, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody 1..1 BackboneElement "laboratoryOrderOutcomeBody"
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultType 1..1 SEEHDSRivString "Text som anger vilken typ av svar som avses" """
    Text som anger vilken typ av svar som avses. DEF = Definitivsvar TILL = Tilläggssvar Den senaste statusen är den som ska skickas med.
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultType, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.registrationTime 1..1 SEEHDSRivTimeStamp "Tidpunkt då informationen om undersökningsresultatet lagrades i källsystemet.Det är den senaste tidpunkten då …" """
    Tidpunkt då informationen om undersökningsresultatet lagrades i källsystemet.Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.registrationTime, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.discipline 1..1 SEEHDSRivString "Text som anger vilken typ av labenhet som undersökningsresultatet härrör från" """
    Text som anger vilken typ av labenhet som undersökningsresultatet härrör från. Tillåtet värde är "Klinisk kemi"
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.discipline, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultReport 0..1 SEEHDSRivString "Text som beskriver det sammanfattande utlåtandet kring undersökningsresultatet"
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultReport, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultComment 0..1 SEEHDSRivString "Text som innehåller en kommentar avseende hela det lämnade svaret"
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultComment, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional 0..1 BackboneElement "Information om den hälso-och sjukvårdspersonal som är ansvarig (”ansvarig labbläkare”) för …" """
    Information om den hälso-och sjukvårdspersonal som är ansvarig (”ansvarig labbläkare”) för undersökningsresultatet (svaret).
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.authorTime 1..1 SEEHDSRivTimeStamp "Tidpunkt då svaret skickas från laboratoriesystemet" """
    Tidpunkt då svaret skickas från laboratoriesystemet.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.authorTime, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalHSAId 0..1 SEEHDSRivString "hälso-och sjukvårdspersonens HSA-id"
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalName 0..1 SEEHDSRivString "Namn på ansvarig hälso-och sjukvårdsperson" """Namn på ansvarig hälso-och sjukvårdsperson. Om tillgängligt ska detta anges."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalName, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalRoleCode 0..1 SEEHDSRivCVTypeHealthcondActoutcome3 "Information om personens befattning" """
    Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. Om kodverk saknas anges befattning i originalText.
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalRoleCode, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit 1..1 BackboneElement "Den enhet som hälso-och sjukvårdspersonen är uppdragstagare på" """
    Information om en organisationsenhet orgUnitHsaId: HSA-id för organisationsenhet orgUnitName Namn på organisationsenhet orgUnitTelecom: Telefon till organisationsenhet orgUnitEmail: Epost till enhet orgUnitAddress: Postadress till enhet orgUnitLocation: Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId 1..1 SEEHDSRivString "HSA-id för organisationsenhet" """HSA-id för organisationsenhet."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName 1..1 SEEHDSRivString "Namnet på den organisation som författaren är uppdragstagare på"
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till organisationsenhet"
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail 0..1 SEEHDSRivString "Epost till enhet"
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress 0..1 SEEHDSRivString "Postadress för den organisation som författaren är uppdragstagare på"
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation 0..1 SEEHDSRivString "Text som anger namnet på plats eller ort för organisationens fysiska placering"
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId 0..0 SEEHDSRivString "Ska ej anges" """Ska ej anges."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId 0..0 SEEHDSRivString "Ska ej anges" """Ska ej anges."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis 0..* BackboneElement "Information om analystjänster som ligger till grund för ett undersökningsresultat"
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisId 1..1 SEEHDSRivIITypeHealthcondActoutcome3 "Unik identifierare för analystjänsten"
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisTime 0..1 SEEHDSRivTimePeriodTypeHealthcondActoutcome3 "Tidsangivelse för åtgärdens utförande" """
    Tidsangivelse för åtgärdens utförande. Här anges tiden för provtagningen. Om start eller end saknas, ska det vid tidsurval tolkas som att båda är satta till samma tidpunkt.
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisTime, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisCode 0..1 SEEHDSRivCVTypeHealthcondActoutcome3 "Kod och klartext som anger vilken åtgärd som avses, enligt kodverket NPU" """
    Kod och klartext som anger vilken åtgärd som avses, enligt kodverket NPU. Ett av attributen analysisCode och analysisText ska anges.
    Enligt TKB i detta sammanhang: code 1..1, codeSystem 1..1, displayName 1..1.
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisCode, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisText 0..1 SEEHDSRivString "Text som anger vilken åtgärd som avses, om analysen ej finns kodad enligt NPU" """
    Text som anger vilken åtgärd som avses, om analysen ej finns kodad enligt NPU. Attributet åtgärdskod text används endast för svar som ej kan kodas enligt NPU. I åtgärdskod text anges endast analysens namn i klartext, dvs inga lokala koder. Ett av attributen analysisCode och analysisText ska anges.
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisText, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisStatus 0..1 SEEHDSRivString "Text som anger åtgärdens status" """
    Text som anger åtgärdens status. Då det är möjligt ska KV åtgärdsstatus följas. Exempel från KV åtgärdsstatus: Planerad, Pågående, Avklarad
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisStatus, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisComment 0..1 SEEHDSRivString "Text som innehåller en kommentar som avser den utförda analysen" """Text som innehåller en kommentar som avser den utförda analysen."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisComment, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.specimen 0..1 SEEHDSRivString "Text som beskriver vilket typ av material som användes vid analysen" """
    Text som beskriver vilket typ av material som användes vid analysen. Ange provmaterial i klartext. Exempel: Plasma Både provmaterial och lokalisation bör anges i klartext när så är lämpligt för aktuell undersökning. Exempel: Var höger fot".
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.specimen, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.method 0..1 SEEHDSRivString "Text som beskriver den metod som använts i analystjänsten" """Text som beskriver den metod som använts i analystjänsten."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.method, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.relationToAnalysis 0..* BackboneElement "Anger samband med annan utförd analystjänst" """Anger samband med annan utförd analystjänst."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.relationToAnalysis, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.relationToAnalysis.analysisId 1..1 SEEHDSRivIITypeHealthcondActoutcome3 "Unik identifierare för analystjänsten" """Unik identifierare för analystjänsten."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.relationToAnalysis.analysisId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome 0..1 BackboneElement "Information om ett resultatet/utfallet av en analystjänst" """Information om ett resultatet/utfallet av en analystjänst."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeValue 1..1 SEEHDSRivString "Det specifika värdet för resultatet/utfallet" """Det specifika värdet för resultatet/utfallet."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeValue, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeUnit 0..1 SEEHDSRivString "Text som anger i förekommande fall enheten för det angivna värdet"
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeUnit, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.observationTime 0..1 SEEHDSRivTimeStamp "Tidpunkt då iakttagelsen av resultatet gjordes" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.observationTime, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.pathologicalFlag 1..1 SEEHDSRivBoolean "Kod som anger om resultatet ligger utanför referensintervall" """
    Kod som anger om resultatet ligger utanför referensintervall. Sant = Ja, resultatet ligger utanför referens-intervall Falskt = Nej, resultatet ligger inte utanför referens-intervall.
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.pathologicalFlag, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeDescription 0..1 SEEHDSRivString "Text som innehåller en kommentar avseende resultatet/utfallet" """Text som innehåller en kommentar avseende resultatet/utfallet."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeDescription, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.referenceInterval 0..1 SEEHDSRivString "Text som innehåller det referensintervall som använts i analysen" """Text som innehåller det referensintervall som använts i analysen."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.referenceInterval, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.referencePopulation 0..1 SEEHDSRivString "Text som beskriver den population som referensintervallet gäller för" """Text som beskriver den population som referensintervallet gäller för."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.referencePopulation, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested 0..1 BackboneElement "Information om vidimering av enskild analys med tillhörande resultat" """
    Information om vidimering av enskild analys med tillhörande resultat. Finns attested är analysen vidimerad. Med vidimerad menas att information om analysen har lästs och den som läst har tagit ansvar.
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested, urn:riv:clinicalprocess:healthcond:actoutcome:3.1)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attestedTime 1..1 SEEHDSRivTimeStamp "Tidpunkten för vidimering" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attestedTime, urn:riv:clinicalprocess:healthcond:actoutcome:3.1)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attesterHSAId 0..1 SEEHDSRivString "HSA-id för person som vidimerat"
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attesterHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3.1)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attesterName 0..1 SEEHDSRivString "Namn på person som vidimerat"
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attesterName, urn:riv:clinicalprocess:healthcond:actoutcome:3.1)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order 1..1 BackboneElement "Information om en vårdbegäran som ligger till grund för svaret"
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order.orderId 1..1 SEEHDSRivString "Unik identifierare för laboratorieremiss" """
    Unik identifierare för laboratorieremiss. Om laboratorieremiss (och således även unik identifierare) saknas, exempelvis då analys utförts på vårdavdelning anges en tom sträng.
  """
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order.orderId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order.orderReason 0..1 SEEHDSRivString "Text som anger aktuell frågeställning" """Text som anger aktuell frågeställning."""
* insert RivNs(laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order.orderReason, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* result 1..1 BackboneElement "Innehåller information om begäran gick bra eller ej" """Innehåller information om begäran gick bra eller ej."""
* result.resultCode 1..1 SEEHDSRivString "Kan endast vara OK, INFO eller ERROR" """Tillåtna värden enligt XSD: OK, ERROR, INFO."""
* insert RivNs(result.resultCode, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* result.errorCode 0..1 SEEHDSRivString "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information." """Tillåtna värden enligt XSD: INVALID_REQUEST."""
* insert RivNs(result.errorCode, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* result.logId 1..1 SEEHDSRivString "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent" """En UUID som kan användas vid felanmälan för att användas vid felsökning av producent."""
* insert RivNs(result.logId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* result.subCode 0..1 SEEHDSRivString "Inga subkoder är specificerade" """Inga subkoder är specificerade."""
* insert RivNs(result.subCode, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* result.message 0..1 SEEHDSRivString "En beskrivande text som kan visas för användaren" """En beskrivande text som kan visas för användaren."""
* insert RivNs(result.message, urn:riv:clinicalprocess:healthcond:actoutcome:3)
