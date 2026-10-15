// RIV-TA GetReferralOutcome 3.1 – svarsmeddelandet GetReferralOutcomeResponse.
// Struktur, namn, ordning, namnrymder och XSD-kardinaliteter är genererade från
// riv.clinicalprocess.healthcond.actoutcome/schemas/interactions/GetReferralOutcomeInteraction/GetReferralOutcomeResponder_3.1.xsd @ 4.2 (bitbucket.org/rivta-domains).
// Kardinaliteter är verifierade mot TKB_clinicalprocess_healthcond_actoutcome.docx; texter är sammanslagna från tidigare modell och TKB.

Logical: SEEHDSLMReferralOutcomeV31
Id: SEEHDSLMReferralOutcomeV31
Title: "GetReferralOutcome 3.1"
Description: """
  Logisk modell för version 3.1 av tjänstekontraktet GetReferralOutcome
  (urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcomeResponder:3).
  Mappningen utgår från versionen i SEEHDSLMReferralOutcome. Skillnaderna mot den och hur de
  påverkar mappningen beskrivs på tjänstekontraktets mappningssida.
"""
* insert RivRoot(GetReferralOutcomeResponse, urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcomeResponder:3)
* referralOutcome 0..* BackboneElement "Returnerar en patients konsultationsremissvar" """Returnerar en patients konsultationsremissvar."""
* referralOutcome.referralOutcomeHeader 1..1 BackboneElement "Innehåller basinformation om dokumentet"
* insert RivNs(referralOutcome.referralOutcomeHeader, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.documentId 1..1 SEEHDSRivString "Dokumentets identitet som är unik inom källsystemet Identifieraren ska vara konsistent och beständigt mellan …" """
    Dokumentets identitet som är unik inom källsystemet Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.
  """
* insert RivNs(referralOutcome.referralOutcomeHeader.documentId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.sourceSystemHSAId 1..1 SEEHDSRivString "HSAid för det system som dokumentet är skapat i" """HSAid för det system som dokumentet är skapat i."""
* insert RivNs(referralOutcome.referralOutcomeHeader.sourceSystemHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.documentTitle 0..1 SEEHDSRivString "Titel som beskriver den information som sänds i dokumentet" """Titel som beskriver den information som sänds i dokumentet."""
* insert RivNs(referralOutcome.referralOutcomeHeader.documentTitle, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.documentTime 1..1 SEEHDSRivTimeStamp "Tidpunkten då remissvaret inkom till remittentens vårdinformationssystem" """
    Tidpunkten då remissvaret inkom till remittentens vårdinformationssystem.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(referralOutcome.referralOutcomeHeader.documentTime, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.patientId 1..1 SEEHDSRivPersonIdTypeHealthcondActoutcome3 "Identifierare för patient" """Identifierare för patient."""
* insert RivNs(referralOutcome.referralOutcomeHeader.patientId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional 1..1 BackboneElement "Information om den hälso- och sjukvårdsperson som skapat informationen i dokumentet, nedan kallas författare" """
    Information om den hälso- och sjukvårdsperson som skapat informationen i dokumentet, nedan kallas författare. Vid uppdatering av tidigare skapade dokument avses den hälso- och sjukvårdsperson som senast uppdaterade informationen
  """
* insert RivNs(referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.authorTime 1..1 SEEHDSRivTimeStamp "Tidpunkt vid vilken remissvaret skapades eller senast uppdaterades i remissmottagarens vårdinformationssystem" """
    Tidpunkt vid vilken remissvaret skapades eller senast uppdaterades i remissmottagarens vårdinformationssystem.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.authorTime, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId 0..1 SEEHDSRivString "HSA-id hälso-och sjukvårdspersonal" """HSA-id hälso-och sjukvårdspersonal. Ska anges om tillgänglig."""
* insert RivNs(referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalName 0..1 SEEHDSRivString "Namn på författaren" """Namn på författaren. Om tillgängligt ska detta anges."""
* insert RivNs(referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalName, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode 0..1 SEEHDSRivCVTypeHealthcondActoutcome3 "Information om personens befattning" """
    Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas, se referens [R 5]. Om kodverk saknas anges befattning i originalText.
  """
* insert RivNs(referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit 0..1 BackboneElement "Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på" """
    Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges.
  """
* insert RivNs(referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId 0..1 SEEHDSRivString "HSA-id för organisationsenhet" """HSA-id för organisationsenhet. Om tillgängligt ska detta anges."""
* insert RivNs(referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName 0..1 SEEHDSRivString "Namn på organisationsenhet" """Namn på organisationsenhet. Om tillgängligt ska detta anges."""
* insert RivNs(referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till organisationsenhet"
* insert RivNs(referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail 0..1 SEEHDSRivString "Epost till organisationsenhet" """Epost till organisationsenhet."""
* insert RivNs(referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress 0..1 SEEHDSRivString "Postadress till organisationsenhet" """
    Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis: ”Storgatan 12 468 91 Lilleby”
  """
* insert RivNs(referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation 0..1 SEEHDSRivString "Text som anger namnet på plats eller ort för organisationens fysiska placering"
* insert RivNs(referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId 0..1 SEEHDSRivString "HSA-id för Vårdenhet som hälso-och sjukvårdspersonen är uppdragstagare för" """
    HSA-id för Vårdenhet som hälso-och sjukvårdspersonen är uppdragstagare för. Ska anges om tillgänglig.
  """
* insert RivNs(referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId 0..1 SEEHDSRivString "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för" """
    HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. Ska anges om tillgänglig.
  """
* insert RivNs(referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.legalAuthenticator 0..1 BackboneElement "Information om vem som signerat informationen i dokumentet" """
    Information om vem som signerat informationen i dokumentet. Signering = signering av remissvar. Information om vidimering sker i attributet attested i bodyn.
  """
* insert RivNs(referralOutcome.referralOutcomeHeader.legalAuthenticator, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.legalAuthenticator.signatureTime 1..1 SEEHDSRivTimeStamp "Tidpunkt för signering" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(referralOutcome.referralOutcomeHeader.legalAuthenticator.signatureTime, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.legalAuthenticator.legalAuthenticatorHSAId 0..1 SEEHDSRivString "HSA-id för person som signerat dokumentet" """HSA-id för person som signerat dokumentet."""
* insert RivNs(referralOutcome.referralOutcomeHeader.legalAuthenticator.legalAuthenticatorHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.legalAuthenticator.legalAuthenticatorName 0..1 SEEHDSRivString "Namnen i klartext för signerande person"
* insert RivNs(referralOutcome.referralOutcomeHeader.legalAuthenticator.legalAuthenticatorName, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.legalAuthenticator.legalAuthenticatorRoleCode 0..0 SEEHDSRivCVTypeHealthcondActoutcome3 "Ska ej anges" """Ska ej anges."""
* insert RivNs(referralOutcome.referralOutcomeHeader.legalAuthenticator.legalAuthenticatorRoleCode, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.approvedForPatient 1..1 SEEHDSRivBoolean "Anger om information får delas till patient" """
    Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false.
  """
* insert RivNs(referralOutcome.referralOutcomeHeader.approvedForPatient, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.careContactId 0..1 SEEHDSRivString "Identitetet för hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet" """
    Identitetet för hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet.
  """
* insert RivNs(referralOutcome.referralOutcomeHeader.careContactId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.nullified 0..0 SEEHDSRivBoolean "Ska ej anges" """Ska ej anges."""
* insert RivNs(referralOutcome.referralOutcomeHeader.nullified, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeHeader.nullifiedReason 0..0 SEEHDSRivString "Ska ej anges" """Ska ej anges."""
* insert RivNs(referralOutcome.referralOutcomeHeader.nullifiedReason, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody 1..1 BackboneElement "referralOutcomeBody"
* insert RivNs(referralOutcome.referralOutcomeBody, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.referralOutcomeTypeCode 1..1 SEEHDSRivString "Anger typ av svar" """
    Anger typ av svar. Giltiga koder: SR, svar på remissfrågaSS, slutsvar på remissfråga
    Tillåtna värden enligt XSD: SS, SR.
  """
* insert RivNs(referralOutcome.referralOutcomeBody.referralOutcomeTypeCode, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.referralOutcomeTitle 1..1 SEEHDSRivString "Text som beskriver vilken specialitet som utlåtandet gäller" """
    Text som beskriver vilken specialitet som utlåtandet gäller. Typen av specialitet som anlitats anges i text. Exempel: Patologi Klinisk fysik Logopedi
  """
* insert RivNs(referralOutcome.referralOutcomeBody.referralOutcomeTitle, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.referralOutcomeText 1..1 SEEHDSRivString "Text som beskriver det sammanfattande utlåtandet kring undersökningsresultatet" """Text som beskriver det sammanfattande utlåtandet kring undersökningsresultatet."""
* insert RivNs(referralOutcome.referralOutcomeBody.referralOutcomeText, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.clinicalInformation 0..* BackboneElement "Klinisk information för remissvaret" """Klinisk information för remissvaret. Dessa kliniska data är direkt kopplat till svaret."""
* insert RivNs(referralOutcome.referralOutcomeBody.clinicalInformation, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationCode 1..1 BackboneElement "Kod för åtgärd" """Kod för åtgärd. Koden anges i code. Kodverkets OID i codeSystem."""
* insert RivNs(referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationCode, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationCode.code 1..1 SEEHDSRivString "Kod" """Kod."""
* insert RivNs(referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationCode.code, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationCode.codeSystem 1..1 SEEHDSRivString "Kod kan komma från kodverket ICD-10 (1.2.752.116.1.1.1.1.3) men andra kodverk kan förekomma." """Tillåtna värden enligt XSD: 1.2.752.116.1.1.1.1.3."""
* insert RivNs(referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationCode.codeSystem, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationText 1..1 SEEHDSRivString "Beskrivning av klinisk information"
* insert RivNs(referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationText, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.act 0..* BackboneElement "Utförd åtgärd"
* insert RivNs(referralOutcome.referralOutcomeBody.act, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.act.actId 0..1 SEEHDSRivString "Åtgärdens identitet som är unik inom det lokala avsändande systemet"
* insert RivNs(referralOutcome.referralOutcomeBody.act.actId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.act.actCode 0..1 BackboneElement "Kod för åtgärd" """Kod för åtgärd. Koden anges i code. Kodverkets OID anges i codeSystem."""
* insert RivNs(referralOutcome.referralOutcomeBody.act.actCode, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.act.actCode.code 1..1 SEEHDSRivString "Nullvärde är tillåtet om kod ej är tillgänglig, och åtgärdskodstext ska då skrivas i <actText>" """
    Nullvärde är tillåtet om kod ej är tillgänglig, och åtgärdskodstext ska då skrivas i <actText>.
  """
* insert RivNs(referralOutcome.referralOutcomeBody.act.actCode.code, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.act.actCode.codeSystem 1..1 SEEHDSRivString "Lämpliga kodverk kan vara: KVÅ (1.2.752.116.1.3.2.1.4) men andra kodverk kan förekomma."
* insert RivNs(referralOutcome.referralOutcomeBody.act.actCode.codeSystem, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.act.actText 1..1 SEEHDSRivString "Text som anger namnet på den kod som anges i attributet åtgärdskod" """
    Text som anger namnet på den kod som anges i attributet åtgärdskod. Beskrivning av åtgärd anges här om ingen kod har angetts i attributet åtgärdskod.
  """
* insert RivNs(referralOutcome.referralOutcomeBody.act.actText, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.act.actTime 0..1 SEEHDSRivTimeStamp "Tidpunkt då åtgärd genomfördes" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(referralOutcome.referralOutcomeBody.act.actTime, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.act.actResult 0..* BackboneElement "Resultat av åtgärd" """Resultat av åtgärd. Data i form av bifogade bilder eller liknande."""
* insert RivNs(referralOutcome.referralOutcomeBody.act.actResult, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.act.actResult obeys getreferraloutcome-actresult-choice
* referralOutcome.referralOutcomeBody.act.actResult.rivId 0..0 SEEHDSRivString "Ska ej anges" """Ska ej anges."""
* insert RivNs(referralOutcome.referralOutcomeBody.act.actResult.rivId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* insert RivXmlName(referralOutcome.referralOutcomeBody.act.actResult.rivId, id)
* referralOutcome.referralOutcomeBody.act.actResult.mediaType 1..1 SEEHDSRivString "Typ av multimedia" """
    Tillåtna värden enligt XSD: application/dicom, application/msword, application/pdf, audio/basic, audio/k32adpcm, audio/mpeg, image/g3fax, image/gif, image/jpeg, image/png, image/tiff, model/vrml, multipart/x-hl7-cda-level1, text/html, text/plain, text/rtf, text/sgml, text/x-hl7-ft, text/xml, video/mpeg, video/x-avi.
  """
* insert RivNs(referralOutcome.referralOutcomeBody.act.actResult.mediaType, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.act.actResult.value 0..1 SEEHDSRivBase64Binary "Value är binärdata som representerar objektet" """
    Value är binärdata som representerar objektet. Ett och endast ett av value och reference ska anges.
  """
* insert RivNs(referralOutcome.referralOutcomeBody.act.actResult.value, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.act.actResult.reference 0..1 SEEHDSRivAnyURI "Referens till extern bild i form av en URL" """
    Referens till extern bild i form av en URL. Ett och endast ett av value och reference ska anges.
  """
* insert RivNs(referralOutcome.referralOutcomeBody.act.actResult.reference, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.referral 1..1 BackboneElement "Information om den vårdbegäran som ligger till grund för svaret"
* insert RivNs(referralOutcome.referralOutcomeBody.referral, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.referral.referralId 1..1 SEEHDSRivString "Remissens identitet som är unik inom det lokala avsändade systemet"
* insert RivNs(referralOutcome.referralOutcomeBody.referral.referralId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.referral.referralReason 1..1 SEEHDSRivString "Text som anger aktuell frågeställning" """Text som anger aktuell frågeställning."""
* insert RivNs(referralOutcome.referralOutcomeBody.referral.referralReason, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.referral.referralTime 0..1 SEEHDSRivTimeStamp "Tid då vårdbegäran framställdes" """
    Tid då vårdbegäran framställdes.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(referralOutcome.referralOutcomeBody.referral.referralTime, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.referral.referralAuthor 1..1 BackboneElement "Information om den hälso- och sjukvårdsperson som framställt vårdbegäran som ligger till grund för svaret, …" """
    Information om den hälso- och sjukvårdsperson som framställt vårdbegäran som ligger till grund för svaret, nedan kallas författare.
  """
* insert RivNs(referralOutcome.referralOutcomeBody.referral.referralAuthor, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.referral.referralAuthor.authorTime 1..1 SEEHDSRivTimeStamp "Tidpunkt då vårdbegäran registrerades i systemet" """
    Tidpunkt då vårdbegäran registrerades i systemet.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(referralOutcome.referralOutcomeBody.referral.referralAuthor.authorTime, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalHSAId 0..1 SEEHDSRivString "HSA-id för hälso-och sjukvårdspersonal" """HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig."""
* insert RivNs(referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalName 0..1 SEEHDSRivString "Namn på författaren" """Namn på författaren. Om tillgängligt ska detta anges."""
* insert RivNs(referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalName, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalRoleCode 0..1 SEEHDSRivCVTypeHealthcondActoutcome3 "Information om personens befattning" """
    Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas. Se referens [R 5]. Om kodverk saknas anges befattning i originalText.
  """
* insert RivNs(referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalRoleCode, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit 0..1 BackboneElement "Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på" """
    Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges.
  """
* insert RivNs(referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit.orgUnitHSAId 0..1 SEEHDSRivString "HSA-id för organisationsenhet" """HSA-id för organisationsenhet. Om tillgängligt ska detta anges."""
* insert RivNs(referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit.orgUnitHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit.orgUnitName 0..1 SEEHDSRivString "Namn på organisationsenhet" """Namn på organisationsenhet. Om tillgängligt ska detta anges."""
* insert RivNs(referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit.orgUnitName, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till organisationsenhet"
* insert RivNs(referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit.orgUnitTelecom, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit.orgUnitEmail 0..1 SEEHDSRivString "Epost till organisationsenhet" """Epost till organisationsenhet."""
* insert RivNs(referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit.orgUnitEmail, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit.orgUnitAddress 0..1 SEEHDSRivString "Postadress till organisationsenhet" """
    Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis: ”Storgatan 12 468 91 Lilleby”
  """
* insert RivNs(referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit.orgUnitAddress, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit.orgUnitLocation 0..1 SEEHDSRivString "Text som anger namnet på plats eller ort för organisationens fysiska placering"
* insert RivNs(referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit.orgUnitLocation, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalCareUnitHSAId 0..0 SEEHDSRivString "Ska ej anges" """Ska ej anges."""
* insert RivNs(referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalCareUnitHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalCareGiverHSAId 0..0 SEEHDSRivString "Ska ej anges" """Ska ej anges."""
* insert RivNs(referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalCareGiverHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.referral.careContactId 0..1 SEEHDSRivString "Identitet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet" """
    Identitet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. Detta ID kan användas för att genom tjänstekontaktet GetCareContacts (annan tjänstedomän) hämta kompletterandekontaktinformation.
  """
* insert RivNs(referralOutcome.referralOutcomeBody.referral.careContactId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* referralOutcome.referralOutcomeBody.attested 0..1 BackboneElement "Information om vidimering av enskild utförd åtgärd med tillhörande resultat" """
    Information om vidimering av enskild utförd åtgärd med tillhörande resultat. Finns attester är åtgärden vidimerad. Med vidimerat menas att information om åtgärden har lästs och den som läst har tagit ansvar.
  """
* insert RivNs(referralOutcome.referralOutcomeBody.attested, urn:riv:clinicalprocess:healthcond:actoutcome:3.1)
* referralOutcome.referralOutcomeBody.attested.attestedTime 1..1 SEEHDSRivTimeStamp "Tidpunkten för vidimering" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(referralOutcome.referralOutcomeBody.attested.attestedTime, urn:riv:clinicalprocess:healthcond:actoutcome:3.1)
* referralOutcome.referralOutcomeBody.attested.attesterHSAId 0..1 SEEHDSRivString "HSA-id för person som vidimerat"
* insert RivNs(referralOutcome.referralOutcomeBody.attested.attesterHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3.1)
* referralOutcome.referralOutcomeBody.attested.attesterName 0..1 SEEHDSRivString "Namn på person som vidimerat"
* insert RivNs(referralOutcome.referralOutcomeBody.attested.attesterName, urn:riv:clinicalprocess:healthcond:actoutcome:3.1)
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
