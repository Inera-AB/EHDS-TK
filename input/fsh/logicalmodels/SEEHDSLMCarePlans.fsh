// RIV-TA GetCarePlans 2.0 – svarsmeddelandet GetCarePlansResponse.
// Struktur, namn, ordning, namnrymder och XSD-kardinaliteter är genererade från
// riv.clinicalprocess.logistics.logistics/schemas/interactions/GetCarePlansInteraction/GetCarePlansResponder_2.0.xsd (bitbucket.org/rivta-domains).
// Kardinaliteter är verifierade mot TKB_clinicalprocess_logistics_logistics.docx; texter är sammanslagna från tidigare modell och TKB.

Invariant: getcareplans-content-xor
Description: "Antingen value eller reference ska anges i content, inte båda"
Expression: "(value.exists() or reference.exists()) and (value.exists().not() or reference.exists().not())"
Severity: #error

Logical: SEEHDSLMCarePlans
Id: SEEHDSLMCarePlans
Title: "GetCarePlans"
Description: """
  Logisk modell för tjänstekontraktet GetCarePlans
  (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCarePlans:2).
  Representerar responsens informationsstruktur (GetCarePlansResponseType).
  En lista med CarePlanType returneras, var och en med header- och body-element.
"""
* insert RivRoot(GetCarePlansResponse, urn:riv:clinicalprocess:logistics:logistics:GetCarePlansResponder:2)
* carePlan 0..* BackboneElement "Vård- och omsorgsplaner som matchar begäran" """
    Lista med vård- och omsorgsplaner för patienten. Varje post innehåller
    header (basinformation) och body (planspecifik information).
  """
* carePlan.carePlanHeader 1..1 BackboneElement "Innehåller basinformation om dokumentet" """Innehåller basinformation om dokumentet."""
* insert RivNs(carePlan.carePlanHeader, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.documentId 1..1 SEEHDSRivString "Planens identitet, unik inom källsystemet" """
    Vård- och omsorgsplanens identitet som är unik inom källsystemet. Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.
  """
* insert RivNs(carePlan.carePlanHeader.documentId, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.sourceSystemHSAId 1..1 SEEHDSRivString "HSA-id för källsystemet" """HSA-id för det system som dokumentet är skapat i."""
* insert RivNs(carePlan.carePlanHeader.sourceSystemHSAId, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.documentTitle 1..1 SEEHDSRivString "Rubrik för vård- och omsorgsplanen" """
    Text som innehåller en rubrik som beskriver innehållet i vård- och omsorgsplanen. För att underlätta för användaren att orientera sig i gränssnittet är det viktigt att ange en deskriptiv text i attributet rubrik. Inga krav finns dock på struktur för detta. Exempel: Samordnad vårdplanering Rehabiliteringsplan.
  """
* insert RivNs(carePlan.carePlanHeader.documentTitle, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.documentTime 0..1 SEEHDSRivTimeStamp "Tidpunkt då planen upprättades (YYYYMMDDhhmmss)" """
    Tidpunkt då vård- och omsorgsplanen upprättats.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(carePlan.carePlanHeader.documentTime, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.patientId 1..1 SEEHDSRivPersonIdTypeLogisticsLogistics3 "Patientens identifierare (personnummer/samordningsnummer)" """Id för patienten."""
* insert RivNs(carePlan.carePlanHeader.patientId, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.accountableHealthcareProfessional 1..1 BackboneElement "Ansvarig hälso- och sjukvårdspersonal" """Hälso- och sjukvårdspersonal som ansvarar för vård- och omsorgsplanen."""
* insert RivNs(carePlan.carePlanHeader.accountableHealthcareProfessional, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.accountableHealthcareProfessional.authorTime 1..1 SEEHDSRivTimeStamp "Tidpunkt då informationen registrerades (YYYYMMDDhhmmss)" """
    Tidpunkt då informationen registrerades. Regel: Regel 2
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(carePlan.carePlanHeader.accountableHealthcareProfessional.authorTime, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId 0..1 SEEHDSRivString "HSA-id för ansvarig personal" """HSA-id för hälso- och sjukvårdspersonal som ansvar för vårdplanen."""
* insert RivNs(carePlan.carePlanHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.accountableHealthcareProfessional.healthcareProfessionalName 0..1 SEEHDSRivString "Namn på ansvarig personal" """Namn på hälso- och sjukvårdspersonal."""
* insert RivNs(carePlan.carePlanHeader.accountableHealthcareProfessional.healthcareProfessionalName, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode 0..1 SEEHDSRivCVTypeLogisticsLogistics3 "Befattning (KV Befattning OID 1.2.752.129.2.2.1.4)" """
    Information om hälso- och sjukvårdspersonalens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas. Se referens [R6].
  """
* insert RivNs(carePlan.carePlanHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit 0..1 BackboneElement "Organisationsenhet för ansvarig personal" """Den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på. Regel: Regel 4"""
* insert RivNs(carePlan.carePlanHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId 0..1 SEEHDSRivString "HSA-id för org.enhet" """HSA-id för organisationsenhet. Regel: Regel 4"""
* insert RivNs(carePlan.carePlanHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName 0..1 SEEHDSRivString "Namn på org.enhet" """
    Namnet på den organisation som den ansvariga hälso- och sjukvårdspersonalen är uppdragstagare på. Regel: Regel 4
  """
* insert RivNs(carePlan.carePlanHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till org.enhet" """Telefon till organisationsenhet."""
* insert RivNs(carePlan.carePlanHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail 0..1 SEEHDSRivString "E-post till org.enhet" """Epost till enhet."""
* insert RivNs(carePlan.carePlanHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress 0..1 SEEHDSRivString "Postadress för org.enhet" """
    Postadress för den organisation som hälso- och sjukvårdspersonal en är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis: ”Storgatan 12 468 91 Lilleby”
  """
* insert RivNs(carePlan.carePlanHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation 0..1 SEEHDSRivString "Plats för org.enhet" """Text som anger namnet på plats eller ort för organisationens fysiska placering."""
* insert RivNs(carePlan.carePlanHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId 0..1 SEEHDSRivString "HSA-id för vårdenhet (Regel 1: PDL/Sparr)" """HSA-id för vårdenhet. Regel: Regel 1"""
* insert RivNs(carePlan.carePlanHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId 0..1 SEEHDSRivString "HSA-id för vårdgivare (Regel 1: PDL/Sparr)" """
    HSA-id för vårdgivaren, som är vårdgivare för den enhet som hälso- och sjukvårdspersonalalen är uppdragstagare för. Regel: Regel 1
  """
* insert RivNs(carePlan.carePlanHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.legalAuthenticator 0..1 BackboneElement "Signeringsinformation" """Information om vem som signerat informationen i dokumentet."""
* insert RivNs(carePlan.carePlanHeader.legalAuthenticator, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.legalAuthenticator.signatureTime 1..1 SEEHDSRivTimeStamp "Tidpunkt för signering (YYYYMMDDhhmmss)" """
    Tidpunkt för signering
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(carePlan.carePlanHeader.legalAuthenticator.signatureTime, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.legalAuthenticator.legalAuthenticatorHSAId 0..1 SEEHDSRivString "HSA-id för signerare" """HSA-id för person som signerat dokumentet"""
* insert RivNs(carePlan.carePlanHeader.legalAuthenticator.legalAuthenticatorHSAId, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.legalAuthenticator.legalAuthenticatorName 0..1 SEEHDSRivString "Namn på signerare" """Namnen i klartext för signerande person."""
* insert RivNs(carePlan.carePlanHeader.legalAuthenticator.legalAuthenticatorName, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.approvedForPatient 1..1 SEEHDSRivBoolean "Informationen godkänd för patient (Regel 3)" """
    Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. Regel: Regel 3
  """
* insert RivNs(carePlan.carePlanHeader.approvedForPatient, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.nullified 0..0 SEEHDSRivBoolean "Makulerad" """Ska ej anges"""
* insert RivNs(carePlan.carePlanHeader.nullified, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.nullifiedReason 0..0 SEEHDSRivString "Makuleringsorsak" """Ska ej anges"""
* insert RivNs(carePlan.carePlanHeader.nullifiedReason, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanHeader.careContactId 0..1 SEEHDSRivString "Refererad vårdkontakt-id" """
    Identitetet för den vårdkontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet
  """
* insert RivNs(carePlan.carePlanHeader.careContactId, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanBody 1..1 BackboneElement "carePlanBody"
* insert RivNs(carePlan.carePlanBody, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanBody.content 0..* BackboneElement "Innehåll i vård- och omsorgsplanen (MultimediaType)" """MultimediaType-element med planens innehåll. Binärdata max 100 KB per TKB."""
* insert RivNs(carePlan.carePlanBody.content, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanBody.content obeys getcareplans-content-xor
* carePlan.carePlanBody.content.rivId 0..0 SEEHDSRivString "id (ej tillämpligt)" """N/A — content.id är 0..0 per TKB för GetCarePlans."""
* insert RivNs(carePlan.carePlanBody.content.rivId, urn:riv:clinicalprocess:logistics:logistics:3)
* insert RivXmlName(carePlan.carePlanBody.content.rivId, id)
* carePlan.carePlanBody.content.mediaType 1..1 SEEHDSRivString "Mediatyp (MIME-typ): text/plain, text/html, image/jpeg, image/png, image/tiff, application/pdf" """
    Typ av multimedia (enligt HL7). Följande format för mediatype kan tillämpas i denna version: text/plain text/html image/png image/jpeg image/tiff application/pdf
    Tillåtna värden enligt XSD: application/dicom, application/msword, application/pdf, audio/basic, audio/k32adpcm, audio/mpeg, image/g3fax, image/gif, image/jpeg, image/png, image/tiff, model/vrml, multipart/x-hl7-cda-level1, text/html, text/plain, text/rtf, text/sgml, text/x-hl7-ft, text/xml, video/mpeg, video/x-avi.
  """
* insert RivNs(carePlan.carePlanBody.content.mediaType, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanBody.content.value 0..1 SEEHDSRivBase64Binary "Binärdata (base64) – XOR med reference" """
    Value är binärdata som representerar objektet. Ett och endast ett av attributen value och reference ska anges.
  """
* insert RivNs(carePlan.carePlanBody.content.value, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanBody.content.reference 0..1 SEEHDSRivAnyURI "Referens till extern fil (URL) – XOR med value" """
    Referens till extern binär fil i form av en URL. Ett och endast ett av attributen value och reference ska anges.
  """
* insert RivNs(carePlan.carePlanBody.content.reference, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanBody.participatingCareUnitHSAId 0..* SEEHDSRivIITypeLogisticsLogistics3 "Deltagande vårdenheters HSA-id (IIType)" """En Vård- och omsorgsplan har noll eller flera deltagande enheter."""
* insert RivNs(carePlan.carePlanBody.participatingCareUnitHSAId, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanBody.typeOfCarePlanEnum 0..1 SEEHDSRivString "Typ av vård- och omsorgsplan" """Tillåtna värden enligt XSD: SIP, SPLPTLRV, SPU, VP, HP, RP, GP, SVP."""
* insert RivNs(carePlan.carePlanBody.typeOfCarePlanEnum, urn:riv:clinicalprocess:logistics:logistics:3)
* carePlan.carePlanBody.typeOfCarePlanEnum.value from TypeOfCarePlanVS (required)
* result 1..1 BackboneElement "Resultatkod för anropet" """Innehåller information om begäran gick bra eller ej."""
* result.resultCode 1..1 SEEHDSRivString "Resultatkod: OK, INFO eller ERROR" """
    Kan endast vara OK, INFO eller ERROR
    Tillåtna värden enligt XSD: OK, ERROR, INFO.
  """
* insert RivNs(result.resultCode, urn:riv:clinicalprocess:logistics:logistics:3)
* result.errorCode 0..1 SEEHDSRivString "Felkod vid ERROR (INVALID_REQUEST)" """
    Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information.
    Tillåtna värden enligt XSD: INVALID_REQUEST.
  """
* insert RivNs(result.errorCode, urn:riv:clinicalprocess:logistics:logistics:3)
* result.logId 1..1 SEEHDSRivString "UUID för felsökning" """En UUID som kan användas vid felanmälan för att användas vid felsökning av producent."""
* insert RivNs(result.logId, urn:riv:clinicalprocess:logistics:logistics:3)
* result.subCode 0..1 SEEHDSRivString "Subkod" """Inga subkoder är specificerade."""
* insert RivNs(result.subCode, urn:riv:clinicalprocess:logistics:logistics:3)
* result.message 0..1 SEEHDSRivString "Beskrivande meddelande (svenska)" """En beskrivande text som kan visas för användaren."""
* insert RivNs(result.message, urn:riv:clinicalprocess:logistics:logistics:3)
