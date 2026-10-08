// RIV-TA GetCareContacts 3.0 – svarsmeddelandet GetCareContactsResponse.
// Struktur, namn, ordning, namnrymder och XSD-kardinaliteter är genererade från
// riv.clinicalprocess.logistics.logistics/schemas/interactions/GetCareContactsInteraction/GetCareContactsResponder_3.0.xsd (bitbucket.org/rivta-domains).
// Kardinaliteter är verifierade mot TKB_clinicalprocess_logistics_logistics.docx; texter är sammanslagna från tidigare modell och TKB.

Logical: SEEHDSLMCareContacts
Id: SEEHDSLMCareContacts
Title: "GetCareContacts"
Description: """
  Logisk modell för tjänstekontraktet GetCareContacts
  (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContacts:3).
  Representerar responsens informationsstruktur (GetCareContactsResponseType).
  En lista med CareContactType returneras.
"""
* insert RivRoot(GetCareContactsResponse, urn:riv:clinicalprocess:logistics:logistics:GetCareContactsResponder:3)
* careContact 0..* BackboneElement "Vårdkontakter som matchar begäran" """De vårdkontakter som matchar begäran."""
* careContact.careContactHeader 1..1 BackboneElement "Innehåller basinformation om dokumentet"
* insert RivNs(careContact.careContactHeader, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.documentId 1..1 SEEHDSRivString "Vårdkontaktens identitet, unik inom källsystemet" """
    Vårdkontaktens identitet som är unik inom källsystemet. Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.
  """
* insert RivNs(careContact.careContactHeader.documentId, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.sourceSystemHSAId 1..1 SEEHDSRivString "HSA-id för källsystemet" """HSA-id för det system som dokumentet är skapat i."""
* insert RivNs(careContact.careContactHeader.sourceSystemHSAId, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.documentTitle 0..0 SEEHDSRivString "Titel (ej tillämpligt)" """N/A — GetCareContacts skickar inte documentTitle. Elementet är 0..0 per TKB."""
* insert RivNs(careContact.careContactHeader.documentTitle, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.documentTime 0..0 SEEHDSRivTimeStamp "Tidpunkt (ej tillämpligt)" """
    N/A — GetCareContacts skickar inte documentTime. Elementet är 0..0 per TKB.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(careContact.careContactHeader.documentTime, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.patientId 1..1 SEEHDSRivPersonIdTypeLogisticsLogistics3 "Patientens identifierare (personnummer/samordningsnummer)" """Id för patienten."""
* insert RivNs(careContact.careContactHeader.patientId, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.accountableHealthcareProfessional 1..1 BackboneElement "Ansvarig hälso- och sjukvårdspersonal" """Hälso- och sjukvårdspersonalen som ansvarar för vårdkontakten."""
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.accountableHealthcareProfessional.authorTime 1..1 SEEHDSRivTimeStamp "Tidpunkt då informationen registrerades (YYYYMMDDhhmmss)" """
    Tidpunkt då informationen registrerades. Regel: Regel 2
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.authorTime, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId 0..1 SEEHDSRivString "HSA-id för ansvarig personal" """HSA-id för hälso- och sjukvårdspersonal som ansvar för vårdkontakten."""
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalName 0..1 SEEHDSRivString "Namn på ansvarig personal" """Namn på hälso- och sjukvårdspersonal."""
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalName, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode 0..1 SEEHDSRivCVTypeLogisticsLogistics3 "Befattning (KV Befattning OID 1.2.752.129.2.2.1.4)" """
    Information om hälso- och sjukvårdspersonalens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas. Se referens [R6].
  """
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit 0..1 BackboneElement "Organisationsenhet för ansvarig personal (Regel 4)" """Den organisation som hälso- och sjukvårdspersonen är uppdragstagare på. Regel: Regel 4"""
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId 0..1 SEEHDSRivString "HSA-id för org.enhet" """HSA-id för organisationsenhet. Regel: Regel 4"""
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName 0..1 SEEHDSRivString "Namn på org.enhet" """
    Namnet på den organisation som den ansvariga hälso- och sjukvårdspersonalen är uppdragstagare på. Regel: Regel 4
  """
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till org.enhet" """Telefon till organisationsenhet."""
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail 0..1 SEEHDSRivString "E-post till org.enhet" """Epost till enhet."""
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress 0..1 SEEHDSRivString "Postadress för org.enhet" """
    Postadress för den organisation som hälso- och sjukvårdspersonal en är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis: ”Storgatan 12 468 91 Lilleby”
  """
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation 0..1 SEEHDSRivString "Plats för org.enhet" """Text som anger namnet på plats eller ort för organisationens fysiska placering."""
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId 0..1 SEEHDSRivString "HSA-id för vårdenhet (Regel 1: PDL/Sparr)" """HSA-id för vårdenhet. Regel: Regel 1"""
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId 0..1 SEEHDSRivString "HSA-id för vårdgivare (Regel 1: PDL/Sparr)" """
    HSA-id för vårdgivaren, som är vårdgivare för den enhet som hälso- och sjukvårdspersonalen är uppdragstagare för. Regel :Regel 1
  """
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.legalAuthenticator 0..0 BackboneElement "Signering (ej tillämpligt)" """N/A — GetCareContacts skickar inte legalAuthenticator. Elementet är 0..0 per TKB."""
* insert RivNs(careContact.careContactHeader.legalAuthenticator, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.legalAuthenticator.signatureTime 1..1 SEEHDSRivTimeStamp "signatureTime" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(careContact.careContactHeader.legalAuthenticator.signatureTime, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.legalAuthenticator.legalAuthenticatorHSAId 0..1 SEEHDSRivString "legalAuthenticatorHSAId"
* insert RivNs(careContact.careContactHeader.legalAuthenticator.legalAuthenticatorHSAId, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.legalAuthenticator.legalAuthenticatorName 0..1 SEEHDSRivString "legalAuthenticatorName"
* insert RivNs(careContact.careContactHeader.legalAuthenticator.legalAuthenticatorName, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.approvedForPatient 1..1 SEEHDSRivBoolean "Informationen godkänd för patient (Regel 3)" """
    Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. Regel: Regel 3
  """
* insert RivNs(careContact.careContactHeader.approvedForPatient, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.nullified 0..0 SEEHDSRivBoolean "Makulerat (ej tillämpligt)" """N/A — GetCareContacts stödjer inte nullified. Elementet är 0..0 per TKB."""
* insert RivNs(careContact.careContactHeader.nullified, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.nullifiedReason 0..0 SEEHDSRivString "Makuleringsskäl (ej tillämpligt)" """N/A — GetCareContacts stödjer inte nullifiedReason. Elementet är 0..0 per TKB."""
* insert RivNs(careContact.careContactHeader.nullifiedReason, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactHeader.careContactId 0..0 SEEHDSRivString "Vårdkontakts-id i header (ej tillämpligt)" """N/A — careContactId i PatientSummaryHeader är 0..0 per TKB för GetCareContacts."""
* insert RivNs(careContact.careContactHeader.careContactId, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactBody 1..1 BackboneElement "careContactBody"
* insert RivNs(careContact.careContactBody, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactBody.careContactCode 0..1 SEEHDSRivCVTypeLogisticsLogistics3 "Typ av vårdkontakt (KV Vårdkontakttyp OID 1.2.752.129.2.2.2.x)" """
    Kod som anger på vilket sätt vårdkontakten är planerad att ske, alternativt skedde. KV Vårdkontakttyp (1.2.752.129.2.2.2.25) ska användas. Se referens [R6]. Utelämnat värde betyder att värdet är okänt.
  """
* insert RivNs(careContact.careContactBody.careContactCode, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactBody.careContactReason 0..1 SEEHDSRivString "Orsak till vårdkontakt (fri text från patient/företrädare)" """
    Text som beskriver orsaken till vårdkontakt som patienten själv eller dess företrädare anger.
  """
* insert RivNs(careContact.careContactBody.careContactReason, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactBody.careContactOrgUnit 0..1 BackboneElement "Enhet för vårdkontakten (Regel 5: krävs för NPÖ)" """Den enhet som vårdkontakten utfördes vid eller planeras utföras vid. Regel: Regel 5"""
* insert RivNs(careContact.careContactBody.careContactOrgUnit, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactBody.careContactOrgUnit.orgUnitHSAId 1..1 SEEHDSRivString "HSA-id för kontaktenhet (Regel 4: obligatorisk för NPÖ)" """
    HSA-id för organisationsenhet. Regel: Regel 5
    Kardinaliteten 1..1 kommer från tidigare modell; TKB anger 0..1.
  """
* insert RivNs(careContact.careContactBody.careContactOrgUnit.orgUnitHSAId, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactBody.careContactOrgUnit.orgUnitName 1..1 SEEHDSRivString "Namn på kontaktenhet (Regel 4: obligatorisk för NPÖ)" """
    Namn på organisationsenheten. Regel: Regel 5
    Kardinaliteten 1..1 kommer från tidigare modell; TKB anger 0..1.
  """
* insert RivNs(careContact.careContactBody.careContactOrgUnit.orgUnitName, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactBody.careContactOrgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till kontaktenhet" """Telefon till organisationsenheten."""
* insert RivNs(careContact.careContactBody.careContactOrgUnit.orgUnitTelecom, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactBody.careContactOrgUnit.orgUnitEmail 0..1 SEEHDSRivString "E-post till kontaktenhet" """Epost till organisationsenheten."""
* insert RivNs(careContact.careContactBody.careContactOrgUnit.orgUnitEmail, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactBody.careContactOrgUnit.orgUnitAddress 0..1 SEEHDSRivString "Adress till kontaktenhet" """Postadress till organisationsenheten."""
* insert RivNs(careContact.careContactBody.careContactOrgUnit.orgUnitAddress, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactBody.careContactOrgUnit.orgUnitLocation 0..1 SEEHDSRivString "Plats för kontaktenhet" """
    Text som anger namnet på plats eller ort för organisationsenhetens eller funktionens fysiska placering.
  """
* insert RivNs(careContact.careContactBody.careContactOrgUnit.orgUnitLocation, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactBody.careContactTimePeriod 0..1 SEEHDSRivTimePeriodTypeLogisticsLogistics3 "Tidsintervall för vårdkontakten. Villkor: Minst ett av start och end måste anges." """
    Tidsintervall för vårdkontakt. Vid besök i öppenvård sätts careContactTimePeriod.start och careContactTimePeriod.end till samma tidpunkt (besökets startidpunkt).
  """
* insert RivNs(careContact.careContactBody.careContactTimePeriod, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactBody.careContactStatus 0..1 SEEHDSRivCVTypeLogisticsLogistics3 "Status för vårdkontakten (SNOMED CT SE, OID 1.2.752.116.2.1.1, SCTID 53761000052103)" """
    Kod som anger aktuell status för vårdkontakten. Kodverket är definierat i SNOMED CT-SE med SCTID: 53761000052103 (Snomed CT finns tillgängligt via R11 där man kan se de publicerade koderna som är refererade)
  """
* insert RivNs(careContact.careContactBody.careContactStatus, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactBody.additionalPatientInformation 0..1 BackboneElement "Ytterligare patientinformation" """
    Ytterligare information om patienten som inte går att få tag på via en gemensam PU-slagning.
  """
* insert RivNs(careContact.careContactBody.additionalPatientInformation, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactBody.additionalPatientInformation.dateOfBirth 0..1 SEEHDSRivPartialDateTypeLogisticsLogistics3 "Patientens födelsedatum (YYYY / YYYYMM / YYYYMMDD)" """Patientens födelsedatum."""
* insert RivNs(careContact.careContactBody.additionalPatientInformation.dateOfBirth, urn:riv:clinicalprocess:logistics:logistics:3)
* careContact.careContactBody.additionalPatientInformation.gender 0..1 SEEHDSRivCVTypeLogisticsLogistics3 "Patientens kön (KV Kön OID 1.2.752.129.2.2.1.1)" """
    Patientens kön. KV Kön (1.2.752.129.2.2.1.1) bör användas. Se referens [R6].
    Enligt TKB i detta sammanhang: code 1..1, codeSystem 1..1, displayName 1..1, originalText 0..0.
  """
* insert RivNs(careContact.careContactBody.additionalPatientInformation.gender, urn:riv:clinicalprocess:logistics:logistics:3)
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
