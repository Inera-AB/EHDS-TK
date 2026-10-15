// RIV-TA GetCareContacts 2.0 – svarsmeddelandet GetCareContactsResponse.
// Struktur, namn, ordning, namnrymder och XSD-kardinaliteter är genererade från
// riv.clinicalprocess.logistics.logistics@2.0.7/schemas/interactions/GetCareContactsInteraction/GetCareContactsResponder_2.0.xsd (bitbucket.org/rivta-domains).
// Kardinaliteter är verifierade mot TKB_clinicalprocess_logistics_logistics.docx; texter är sammanslagna från tidigare modell och TKB.

Logical: SEEHDSLMCareContactsV2
Id: SEEHDSLMCareContactsV2
Title: "GetCareContacts 2.0"
Description: """
  Logisk modell för svaret i tjänstekontraktet GetCareContacts 2.0
  (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContactsResponder:2), domänversion 2.0.7.
  Äldre majorversion som fortfarande används. Senaste versionen beskrivs i SEEHDSLMCareContacts.
"""
* insert RivRoot(GetCareContactsResponse, urn:riv:clinicalprocess:logistics:logistics:GetCareContactsResponder:2)
* careContact 0..* BackboneElement "De hälso- och sjukvårdskontakter som matchar begäran" """De hälso- och sjukvårdskontakter som matchar begäran."""
* careContact.careContactHeader 1..1 BackboneElement "Innehåller basinformation om dokumentet" """
    careContactId: Vårdkontaktens identitet som är unik inom källsystemet sourceSystemHSAId: HSAId för det system som dokumentet är skapat i. documentTime: Tid då vård- eller omsorgskontakten registrerades patientId: Patientens ID (enligt PatientIdType). type sätts till OID för typ av identifierare. För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) accountableHealthcareProfessional Hälso- och sjukvårdsperson som ansvarar för vårdkontakten. accountableHealthcareProfessionalOrgUnit Organisationsenhet för vård- och omsorgspersonens uppdrag i samband med vårdkontakten. approvedForPatient: Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false.
  """
* insert RivNs(careContact.careContactHeader, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactHeader.documentId 1..1 SEEHDSRivString "Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt" """
    Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.
  """
* insert RivNs(careContact.careContactHeader.documentId, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactHeader.sourceSystemHSAId 1..1 SEEHDSRivString "HSAid för det system som dokumentet är skapat i" """HSAid för det system som dokumentet är skapat i."""
* insert RivNs(careContact.careContactHeader.sourceSystemHSAId, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactHeader.patientId 1..1 SEEHDSRivPersonIdTypeLogisticsLogistics2 "Id för patienten" """
    Id för patienten. Anges med 12 siffror utan avskiljare.id sätts till patientens identifierare.Type sätts till OID för typ av identifierare. För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3)
  """
* insert RivNs(careContact.careContactHeader.patientId, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactHeader.accountableHealthcareProfessional 1..1 BackboneElement "Ansvarig hälso- och sjukvårdsperson" """Ansvarig hälso- och sjukvårdsperson."""
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactHeader.accountableHealthcareProfessional.authorTime 1..1 SEEHDSRivTimeStamp "Den tidpunkt då dokumentet skapades" """
    Den tidpunkt då dokumentet skapades.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.authorTime, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId 1..1 SEEHDSRivString "HSA-id för hälso- och sjukvårdspersonal" """
    HSA-id för hälso- och sjukvårdspersonal. Ska anges om tillgänglig.
    TKB anger kardinaliteten 0..1, men XSD:n kräver 1..1. Modellen följer XSD:n.
  """
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalName 1..1 SEEHDSRivString "Namn på hälso- och sjukvårdspersonal" """
    Namn på hälso- och sjukvårdspersonal. Om tillgängligt ska detta anges.
    TKB anger kardinaliteten 0..1, men XSD:n kräver 1..1. Modellen följer XSD:n.
  """
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalName, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode 0..1 SEEHDSRivCVTypeLogisticsLogistics2 "Information om personens befattning" """
    Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas.
  """
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit 1..1 BackboneElement "Den organisation som angiven hälso- och sjukvårdsperson är uppdragstagare på" """
    Den organisation som angiven hälso- och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges.
    TKB anger kardinaliteten 0..1, men XSD:n kräver 1..1. Modellen följer XSD:n.
  """
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId 1..1 SEEHDSRivString "HSA-id för organisationsenhet" """
    HSA-id för organisationsenhet. Om tillgängligt ska detta anges.
    TKB anger kardinaliteten 0..1, men XSD:n kräver 1..1. Modellen följer XSD:n.
  """
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName 1..1 SEEHDSRivString "Namn på organisationsenhet" """
    Namn på organisationsenhet. Om tillgängligt ska detta anges.
    TKB anger kardinaliteten 0..1, men XSD:n kräver 1..1. Modellen följer XSD:n.
  """
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till organisationsenhet"
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail 0..1 SEEHDSRivString "Epost till enhet"
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress 0..1 SEEHDSRivString "Postadress till enhet"
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation 0..1 SEEHDSRivString "Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering"
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId 0..1 SEEHDSRivString "HSA-id för vårdenhet som hälso- och sjukvårdspersonen är uppdragstagare för" """
    HSA-id för vårdenhet som hälso- och sjukvårdspersonen är uppdragstagare för. Ska anges om tillgänglig.
  """
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId 0..1 SEEHDSRivString "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för" """
    HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. Ska anges om tillgänglig.
  """
* insert RivNs(careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactHeader.approvedForPatient 1..1 SEEHDSRivBoolean "Anger om information får delas till patient" """
    Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false.
  """
* insert RivNs(careContact.careContactHeader.approvedForPatient, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactHeader.nullified 0..1 SEEHDSRivBoolean "Anger om dokumentet makulerats i källsystemet" """
    Anger om dokumentet makulerats i källsystemet. Sätts i så fall till true annars false. Används bl.a. i statistik-/rapportuttag med hjälp av tjänstekontrakten.
  """
* insert RivNs(careContact.careContactHeader.nullified, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactHeader.nullifiedReason 0..1 SEEHDSRivString "Anger orsak till makulering" """Anger orsak till makulering."""
* insert RivNs(careContact.careContactHeader.nullifiedReason, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactBody 1..1 BackboneElement "careContactBody" """
    careContactCode: Typ av vård- och omsorgsdokumentation. Nullvärde tillåtetet. careContactReason: Text som beskriver orsaken till vård- och omsorgskontakt som vård- och omsorgstagaren själv eller dess företrädare anger. careContactOrgUnit: Den enhet som kontakt utfördes vid careContactTimePeriod: För besök sätts sluttidpunken till samma tid som anges som starttidpunkt. För planerade kontakter sätts ingen sluttidpunkt. Pågående vårdtillfälle ska anges på samma sätt som en planerad vårdkontakt, dvs med angivet startdatum, men utan slutdatum. careContactStatus: Status på vårdkontakten enligt kodverk ur NPÖ RIV-spec 2.2.
  """
* insert RivNs(careContact.careContactBody, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactBody.careContactCode 0..1 SEEHDSRivInteger "Typ av vårdkontakt (KV Vårdkontakttyp OID 1.2.752.129.2.2.2.x)" """
    Kod som anger på vilket sätt vårdkontakten är planerad att ske, alternativt skedde. KV Vårdkontakttyp (1.2.752.129.2.2.2.25) ska användas. Se referens [R6]. Utelämnat värde betyder att värdet är okänt.
    Tillåtna värden enligt XSD: 1, 2, 3, 4, 5.
  """
* insert RivNs(careContact.careContactBody.careContactCode, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactBody.careContactReason 0..1 SEEHDSRivString "Orsak till vårdkontakt (fri text från patient/företrädare)" """
    Text som beskriver orsaken till vårdkontakt som patienten själv eller dess företrädare anger.
  """
* insert RivNs(careContact.careContactBody.careContactReason, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactBody.careContactOrgUnit 1..1 BackboneElement "Enhet för vårdkontakten (Regel 5: krävs för NPÖ)" """Den enhet som vårdkontakten utfördes vid eller planeras utföras vid. Regel: Regel 5"""
* insert RivNs(careContact.careContactBody.careContactOrgUnit, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactBody.careContactOrgUnit.orgUnitHSAId 1..1 SEEHDSRivString "HSA-id för organisationsenhet" """
    HSA-id för organisationsenhet. Om tillgängligt ska detta anges.
    TKB anger kardinaliteten 0..1, men XSD:n kräver 1..1. Modellen följer XSD:n.
  """
* insert RivNs(careContact.careContactBody.careContactOrgUnit.orgUnitHSAId, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactBody.careContactOrgUnit.orgUnitName 1..1 SEEHDSRivString "Namn på organisationsenhet" """
    Namn på organisationsenhet. Om tillgängligt ska detta anges.
    TKB anger kardinaliteten 0..1, men XSD:n kräver 1..1. Modellen följer XSD:n.
  """
* insert RivNs(careContact.careContactBody.careContactOrgUnit.orgUnitName, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactBody.careContactOrgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till organisationsenhet"
* insert RivNs(careContact.careContactBody.careContactOrgUnit.orgUnitTelecom, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactBody.careContactOrgUnit.orgUnitEmail 0..1 SEEHDSRivString "Epost till enhet"
* insert RivNs(careContact.careContactBody.careContactOrgUnit.orgUnitEmail, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactBody.careContactOrgUnit.orgUnitAddress 0..1 SEEHDSRivString "Postadress till enhet"
* insert RivNs(careContact.careContactBody.careContactOrgUnit.orgUnitAddress, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactBody.careContactOrgUnit.orgUnitLocation 0..1 SEEHDSRivString "Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering"
* insert RivNs(careContact.careContactBody.careContactOrgUnit.orgUnitLocation, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactBody.careContactTimePeriod 1..1 SEEHDSRivTimePeriodTypeLogisticsLogistics2 "Tidsintervall för vårdkontakten. Villkor: Minst ett av start och end måste anges." """
    Tidsintervall för vårdkontakt. Vid besök i öppenvård sätts careContactTimePeriod.start och careContactTimePeriod.end till samma tidpunkt (besökets startidpunkt).
  """
* insert RivNs(careContact.careContactBody.careContactTimePeriod, urn:riv:clinicalprocess:logistics:logistics:2)
* careContact.careContactBody.careContactStatus 0..1 SEEHDSRivInteger "Status för vårdkontakten (SNOMED CT SE, OID 1.2.752.116.2.1.1, SCTID 53761000052103)" """
    Kod som anger aktuell status för vårdkontakten. Kodverket är definierat i SNOMED CT-SE med SCTID: 53761000052103 (Snomed CT finns tillgängligt via R11 där man kan se de publicerade koderna som är refererade)
    Tillåtna värden enligt XSD: 1, 2, 3, 4, 5.
  """
* insert RivNs(careContact.careContactBody.careContactStatus, urn:riv:clinicalprocess:logistics:logistics:2)
