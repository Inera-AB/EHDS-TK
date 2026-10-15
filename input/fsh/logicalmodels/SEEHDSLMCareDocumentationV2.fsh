// RIV-TA GetCareDocumentation 2.1 – svarsmeddelandet GetCareDocumentationResponse.
// Struktur, namn, ordning, namnrymder och XSD-kardinaliteter är genererade från
// riv.clinicalprocess.healthcond.description@2.1.19/schemas/interactions/GetCareDocumentationInteraction/GetCareDocumentationResponder_2.1.xsd (bitbucket.org/rivta-domains).
// Kardinaliteter är verifierade mot TKB_clinicalprocess_healthcond_description.docx; texter är sammanslagna från tidigare modell och TKB.

Logical: SEEHDSLMCareDocumentationV2
Id: SEEHDSLMCareDocumentationV2
Title: "GetCareDocumentation 2.1"
Description: """
  Logisk modell för svaret i tjänstekontraktet GetCareDocumentation 2.1
  (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:2), domänversion 2.1.19.
  Äldre majorversion som fortfarande används. Senaste versionen beskrivs i SEEHDSLMCareDocumentation.
"""
* insert RivRoot(GetCareDocumentationResponse, urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:2)
* careDocumentation 0..* BackboneElement "De hälso- och sjukvårdsdokument som matchar begäran" """De hälso- och sjukvårdsdokument som matchar begäran."""
* careDocumentation.careDocumentationHeader 1..1 BackboneElement "Innehåller basinformation om dokumentet"
* insert RivNs(careDocumentation.careDocumentationHeader, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.documentId 1..1 SEEHDSRivString "Dokumentets identitet som är unik inom källsystemet" """
    Dokumentets identitet som är unik inom källsystemet. Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.
  """
* insert RivNs(careDocumentation.careDocumentationHeader.documentId, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.sourceSystemHSAid 1..1 SEEHDSRivString "HSA-id för det system som dokumentet är skapat i" """
    HSA-id för det system som dokumentet är skapat i. Notera att elementnamnet i de andra kontrakten är sourceSystemHSAId (med ett versalt I). Skälet till avvikelsen här är p.g.a. behovet av detta kontrakts bakåtkompatibilitet med kontraktet i version 2.0.
  """
* insert RivNs(careDocumentation.careDocumentationHeader.sourceSystemHSAid, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.documentTitle 0..1 SEEHDSRivString "Titel som beskriver den information som sänds i dokumentet" """Titel som beskriver den information som sänds i dokumentet."""
* insert RivNs(careDocumentation.careDocumentationHeader.documentTitle, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.documentTime 0..1 SEEHDSRivTimeStamp "Händelsetidpunkt" """
    Händelsetidpunkt. Tidsangivelse för den händelse dokumentet gäller.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(careDocumentation.careDocumentationHeader.documentTime, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.patientId 1..1 SEEHDSRivPersonIdTypeHealthcondDescription2 "Identifierare för patient" """Identifierare för patient."""
* insert RivNs(careDocumentation.careDocumentationHeader.patientId, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional 1..1 BackboneElement "Information om den hälso- och sjukvårdsperson som ansvarar för informationen i dokumentet, nedan kallas …" """
    Information om den hälso- och sjukvårdsperson som ansvarar för informationen i dokumentet, nedan kallas författare.
  """
* insert RivNs(careDocumentation.careDocumentationHeader.accountableHealthcareProfessional, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.authorTime 1..1 SEEHDSRivTimeStamp "Tidpunkt då informationen registrerades" """
    Tidpunkt då informationen registrerades.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.authorTime, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId 0..1 SEEHDSRivString "Författarens HSA-id"
* insert RivNs(careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalName 0..1 SEEHDSRivString "Namn på författaren" """Namn på författaren. Om tillgängligt ska detta anges."""
* insert RivNs(careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalName, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode 0..1 SEEHDSRivCVTypeHealthcondDescription2 "Information om personens befattning" """
    Information om personens befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4), [R13].
  """
* insert RivNs(careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit 1..1 BackboneElement "Den organisation som författaren är uppdragstagare på" """
    Den organisation som författaren är uppdragstagare på. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet).
  """
* insert RivNs(careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId 1..1 SEEHDSRivString "HSA-id för organisationsenhet" """
    HSA-id för organisationsenhet. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet).
  """
* insert RivNs(careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName 1..1 SEEHDSRivString "Namnet på den organisation som författaren är uppdragstagare på"
* insert RivNs(careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till organisationsenhet"
* insert RivNs(careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail 0..1 SEEHDSRivString "Epost till enhet"
* insert RivNs(careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress 0..1 SEEHDSRivString "Postadress för den organisation som författaren är uppdragstagare på" """
    Postadress för den organisation som författaren är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis:”Storgatan 12468 91 Lilleby”
  """
* insert RivNs(careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation 0..1 SEEHDSRivString "Text som anger namnet på plats eller ort för organisationens fysiska placering"
* insert RivNs(careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId 0..1 SEEHDSRivString "HSA-id för Vårdenhet(Regel: 1)"
* insert RivNs(careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId 0..1 SEEHDSRivString "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för" """
    HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. (Regel: 1)
  """
* insert RivNs(careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.legalAuthenticator 0..1 BackboneElement "Information om vem som signerat informationen i dokumentet" """Information om vem som signerat informationen i dokumentet."""
* insert RivNs(careDocumentation.careDocumentationHeader.legalAuthenticator, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.legalAuthenticator.signatureTime 1..1 SEEHDSRivTimeStamp "Tidpunkt för signering" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(careDocumentation.careDocumentationHeader.legalAuthenticator.signatureTime, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.legalAuthenticator.legalAuthenticatorHSAId 0..1 SEEHDSRivString "HSA-id för person som signerat dokumentet"
* insert RivNs(careDocumentation.careDocumentationHeader.legalAuthenticator.legalAuthenticatorHSAId, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.legalAuthenticator.legalAuthenticatorName 0..1 SEEHDSRivString "Namnen i klartext för signerande person" """Namnen i klartext för signerande person."""
* insert RivNs(careDocumentation.careDocumentationHeader.legalAuthenticator.legalAuthenticatorName, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.approvedForPatient 1..1 SEEHDSRivBoolean "Anger om information får delas till patient" """
    Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false.
  """
* insert RivNs(careDocumentation.careDocumentationHeader.approvedForPatient, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.careContactId 0..1 SEEHDSRivString "Identitetet för den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet" """
    Identitetet för den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet
  """
* insert RivNs(careDocumentation.careDocumentationHeader.careContactId, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.nullified 0..0 SEEHDSRivBoolean "N/A"
* insert RivNs(careDocumentation.careDocumentationHeader.nullified, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationHeader.nullifiedReason 0..0 SEEHDSRivString "N/A"
* insert RivNs(careDocumentation.careDocumentationHeader.nullifiedReason, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationBody 1..1 BackboneElement "careDocumentationBody"
* insert RivNs(careDocumentation.careDocumentationBody, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationBody.clinicalDocumentNote 1..1 BackboneElement "Dokument/anteckning" """Dokument/anteckning."""
* insert RivNs(careDocumentation.careDocumentationBody.clinicalDocumentNote, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentNoteCode 0..1 SEEHDSRivString "Obligatoriskt om clinicalDocumentTypeCode saknas" """
    Obligatoriskt om clinicalDocumentTypeCode saknas. Får annars inte anges samtidigt med clinicalDocumentTypeCode. Typ av hälso- och sjukvårdsdokument. Kod tas från KV Anteckningstyp (1.2.752.129.2.2.2.11).Tillåtna värden är: utr = Utredning, atb = åtgärd/Behandling, sam = Sammanfattning, sao = Samordning, ins = Inskrivning, slu = Slutanteckning, auf = Anteckning utan fysiskt möte, sva = Slutenvårdsanteckning, bes = Besöksanteckning.
    Tillåtna värden enligt XSD: utr, atb, sam, sao, ins, slu, auf, sva, bes.
  """
* insert RivNs(careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentNoteCode, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentTypeCode 0..0 SEEHDSRivString "Obligatoriskt om clinicalDocumentNoteCode saknas" """
    Obligatoriskt om clinicalDocumentNoteCode saknas. Får annars inte anges samtidigt med clinicalDocumentNoteCode. Epikris = epi Intagninganteckning = int Daganteckning = dag Öppenvårdsanteckning = ova Öppenvårdssammanfattning = ovs Övrigt document = ovr
    Tillåtna värden enligt XSD: epi, int, dag, ova, ovs, ovr.
  """
* insert RivNs(careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentTypeCode, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentNoteTitle 0..1 SEEHDSRivString "Titel på dokument"
* insert RivNs(careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentNoteTitle, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentNoteText 0..1 SEEHDSRivString "Dokumentets innehåll i text" """
    Dokumentets innehåll i text. Texten kan antingen skickas som vanlig text eller formaterat enligt DocBook-standarden, se 7.1.3. Obs Man kan välja att skicka dokumentets innehåll i elementet clinicalDocumentNoteText eller i multimediaEntry enligt respektive elements regler, man får inte skicka med båda elementen. Regeln finns med i constraints.xml (schematron) under katalogen test-suites och kan valideras med testsviten.
  """
* insert RivNs(careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentNoteText, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry 0..1 BackboneElement "Dokumentets innehåll i form av en multimediaobjekt, i form av antingen ett inbäddat objekt eller en länk till …" """
    Dokumentets innehåll i form av en multimediaobjekt, i form av antingen ett inbäddat objekt eller en länk till objektet. Obs Man kan välja att skicka dokumentets innehåll i elementet clinicalDocumentNoteText eller i multimediaEntry enligt respektive elements regler, man får inte skicka med båda elementen. Regeln finns med i constraints.xml(schematron) under katalogen test-suites och kan valideras med testsviten.
  """
* insert RivNs(careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry.mediaType 1..1 SEEHDSRivString "Typ av multimedia (enligt HL7)" """
    Typ av multimedia (enligt HL7).
    Tillåtna värden enligt XSD: application/dicom, application/msword, application/pdf, audio/basic, audio/k32adpcm, audio/mpeg, image/g3fax, image/gif, image/jpeg, image/png, image/tiff, model/vrml, multipart/x-hl7-cda-level1, text/html, text/plain, text/rtf, text/sgml, text/x-hl7-ft, text/xml, video/mpeg, video/x-avi.
  """
* insert RivNs(careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry.mediaType, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry.value 0..1 SEEHDSRivBase64Binary "Value är binärdata som representerar objektet" """
    Value är binärdata som representerar objektet. Ett och endast ett av attributen value och reference ska anges.
  """
* insert RivNs(careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry.value, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry.reference 0..1 SEEHDSRivAnyURI "Referens till extern bild i form av en URL" """
    Referens till extern bild i form av en URL. Ett och endast ett av attributen value och reference ska anges.
  """
* insert RivNs(careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry.reference, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentintOpinion 0..* BackboneElement "dissentintOpinion"
* insert RivNs(careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentintOpinion, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentintOpinion.opinionId 0..1 SEEHDSRivIITypeHealthcondDescription2 "opinionId"
* insert RivNs(careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentintOpinion.opinionId, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentintOpinion.authorTime 1..1 SEEHDSRivTimeStamp "authorTime" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentintOpinion.authorTime, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentintOpinion.opinion 1..1 SEEHDSRivString "opinion"
* insert RivNs(careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentintOpinion.opinion, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentintOpinion.personId 1..1 SEEHDSRivPersonIdTypeHealthcondDescription2 "personId"
* insert RivNs(careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentintOpinion.personId, urn:riv:clinicalprocess:healthcond:description:2)
* careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentintOpinion.personName 1..1 SEEHDSRivString "personName"
* insert RivNs(careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentintOpinion.personName, urn:riv:clinicalprocess:healthcond:description:2)
* result 1..1 BackboneElement "Innehåller information om begäran gick bra eller ej, en P av 2.1 måste skicka med resultType, för …" """
    Innehåller information om begäran gick bra eller ej, en P av 2.1 måste skicka med resultType, för kompabilitet mellan K 2.1 och P 2.0 är den satt till icke obligatorisk i wsdl.
  """
* insert RivNs(result, urn:riv:clinicalprocess:healthcond:description:2.1)
* result.resultCode 1..1 SEEHDSRivString "Kan endast vara OK, INFO eller ERROR" """Tillåtna värden enligt XSD: OK, ERROR, INFO."""
* insert RivNs(result.resultCode, urn:riv:clinicalprocess:healthcond:description:2.1)
* result.errorCode 0..1 SEEHDSRivString "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information." """Tillåtna värden enligt XSD: INVALID_REQUEST."""
* insert RivNs(result.errorCode, urn:riv:clinicalprocess:healthcond:description:2.1)
* result.logId 1..1 SEEHDSRivString "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent" """En UUID som kan användas vid felanmälan för att användas vid felsökning av producent."""
* insert RivNs(result.logId, urn:riv:clinicalprocess:healthcond:description:2.1)
* result.subCode 0..1 SEEHDSRivString "Inga subkoder är specificerade" """Inga subkoder är specificerade."""
* insert RivNs(result.subCode, urn:riv:clinicalprocess:healthcond:description:2.1)
* result.message 0..1 SEEHDSRivString "En beskrivande text som kan visas för användaren" """En beskrivande text som kan visas för användaren."""
* insert RivNs(result.message, urn:riv:clinicalprocess:healthcond:description:2.1)
