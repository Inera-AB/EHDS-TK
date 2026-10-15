// RIV-TA GetVaccinationHistory 1.0 – svarsmeddelandet GetVaccinationHistoryResponse.
// Struktur, namn, ordning, namnrymder och XSD-kardinaliteter är genererade från
// riv.clinicalprocess.activityprescription.actoutcome@1.0.2/schemas/interactions/GetVaccinationHistoryInteraction/GetVaccinationHistoryResponder_1.0.xsd (bitbucket.org/rivta-domains).
// Kardinaliteter är verifierade mot Tjänstekontraktsbeskrivning_riv_clinicalprocess_activityprescription_actoutcome.docx; texter är sammanslagna från tidigare modell och TKB.

Logical: SEEHDSLMVaccinationHistoryV1
Id: SEEHDSLMVaccinationHistoryV1
Title: "GetVaccinationHistory 1.0"
Description: """
  Logisk modell för svaret i tjänstekontraktet GetVaccinationHistory 1.0
  (RIV-TA urn:riv:clinicalprocess:activityprescription:actoutcome:GetVaccinationHistoryResponder:1), domänversion 1.0.2.
  Äldre majorversion som fortfarande används. Senaste versionen beskrivs i SEEHDSLMVaccinationHistory.
"""
* insert RivRoot(GetVaccinationHistoryResponse, urn:riv:clinicalprocess:activityprescription:actoutcome:GetVaccinationHistoryResponder:1)
* vaccinationMedicalRecord 0..* BackboneElement "En strukturerad vaccinationsjournal" """En strukturerad vaccinationsjournal."""
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader 1..1 BackboneElement "Innehåller basinformation om dokumentet" """Innehåller basinformation om dokumentet."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentId 1..1 SEEHDSRivString "Dokumentets identitet som är unik inom källsystemet" """Dokumentets identitet som är unik inom källsystemet."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentId, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.sourceSystemHSAId 1..1 SEEHDSRivString "HSA-id för det system som dokumentet är skapat i" """HSA-id för det system som dokumentet är skapat i."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.sourceSystemHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTitle 0..1 SEEHDSRivString "Titel som beskriver den information som sänds i dokumentet" """Titel som beskriver den information som sänds i dokumentet."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTitle, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTime 0..1 SEEHDSRivTimeStamp "Händelsetidpunkt" """
    Händelsetidpunkt. Tidsangivelse för den vaccinationstidpunkt dokumentet gäller.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTime, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.patientId 1..1 SEEHDSRivPersonIdTypeActivityprescriptionActoutcome1 "Identifierare för patient" """Identifierare för patient."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.patientId, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional 1..1 BackboneElement "Information om den hälso- och sjukvårdsperson som ansvarar för informationen i dokumentet" """
    Information om den hälso- och sjukvårdsperson som ansvarar för informationen i dokumentet.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.authorTime 1..1 SEEHDSRivTimeStamp "Tidpunkt då dokumentet skapades" """
    Tidpunkt då dokumentet skapades. Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.authorTime, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId 0..1 SEEHDSRivString "Hälso- och sjukvårdspersonens HSA-id" """
    Hälso- och sjukvårdspersonens HSA-id. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.39 beslutsregel: I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalName 0..1 SEEHDSRivString "Namn på hälso- och sjukvårdspersonen" """Namn på hälso- och sjukvårdspersonen. Om tillgängligt skall detta anges."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalName, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome1 "Information om personens befattning" """
    Information om personens befattning. Om möjligt skall KV Befattning (OID 1.2.752.129.2.2.1.4), se http://www.inera.se/Documents/TJANSTER_PROJEKT/Katalogtjanst_HSA/Innehall/hsa_innehall_befattning.pdf
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit 0..1 BackboneElement "Den organisation som hälso- och sjukvårdspersonen är uppdragstagare på"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAid 0..1 SEEHDSRivString "HSA-id för organisationsenhet" """
    HSA-id för organisationsenhet. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.6 beslutsregel: I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAid, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName 0..1 SEEHDSRivString "Namnet på den organisation som hälso- och sjukvårdspersonen är uppdragstagare på" """Namnet på den organisation som hälso- och sjukvårdspersonen är uppdragstagare på."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till organisationsenhet"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail 0..1 SEEHDSRivString "Epost till enhet"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress 0..1 SEEHDSRivString "Postadress för den organisation som hälso- och sjukvårdspersonen är uppdragstagare på" """
    Postadress för den organisation som hälso- och sjukvårdspersonen är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis:”Storgatan 12468 91 Lilleby”
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation 0..1 SEEHDSRivString "Text som anger namnet på plats eller ort för organisationens fysiska placering"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId 0..1 SEEHDSRivString "HSA-id för Vårdenhet"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId 0..1 SEEHDSRivString "HSA-id för vårdgivaren, som är vårdgivare för den enhet som hälso- och sjukvårdspersonen är uppdragstagare …" """
    HSA-id för vårdgivaren, som är vårdgivare för den enhet som hälso- och sjukvårdspersonen är uppdragstagare för.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator 0..1 BackboneElement "Information om vem som signerat informationen i dokumentet" """Information om vem som signerat informationen i dokumentet."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.signatureTime 1..1 SEEHDSRivTimeStamp "Tidpunkt för signering" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.signatureTime, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAid 0..1 SEEHDSRivString "HSA-id för person som signerat dokumentet" """
    HSA-id för person som signerat dokumentet. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.39 beslutsregel: I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAid, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName 0..1 SEEHDSRivString "Namnen i klartext för signerande person" """Namnen i klartext för signerande person."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.approvedForPatient 1..1 SEEHDSRivBoolean "Anger om information får delas till patient" """
    Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.approvedForPatient, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.careContactId 0..1 SEEHDSRivString "Identitetet för den vård- och omsorgskontakt som föranlett den information som omfattas av dokumentet" """
    Identitetet för den vård- och omsorgskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.careContactId, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullified 1..1 SEEHDSRivBoolean "Anger om dokumentet makulerats i källsystemet" """
    Anger om dokumentet makulerats i källsystemet. Sätts i så fall till true annars false. Används bl.a. i statistik-/rapportuttag med hjälp av tjänstekontrakten.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullified, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullifiedReason 0..1 SEEHDSRivBoolean "Anger orsak till makulering" """Anger orsak till makulering. Får endast anges i kombination med att nullified = true"""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullifiedReason, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody 1..1 BackboneElement "Består av en registrationData med ytterligare administrativ information samt en eller flera vaccinationData …" """
    Består av en registrationData med ytterligare administrativ information samt en eller flera vaccinationData om utförda vaccinationer vid vaccinationstillfället.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord 1..1 BackboneElement "Annan information än ovan som registreras vid eller relaterat till vaccinationstillfället"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg 1..1 BackboneElement "Information om juridisk vårdgivare; hsaid (om finns) och kontaktuppgifter namn,epost,tel,adress etc"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitHSAid 0..1 SEEHDSRivString "HSA-id för organisationsenhet" """
    HSA-id för organisationsenhet. Om tillgängligt skall detta anges. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.6 beslutsregel: I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitHSAid, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitName 0..1 SEEHDSRivString "Namn på organisationsenhet" """Namn på organisationsenhet. Om tillgängligt skall detta anges."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitName, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till organisationsenhet" """Telefon till organisationsenhet."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitTelecom, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitEmail 0..1 SEEHDSRivString "Epost till organisationsenhet" """Epost till organisationsenhet."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitEmail, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitAddress 0..1 SEEHDSRivString "Postadress till organisationsenhet" """
    Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis:”Storgatan 12468 91 Lilleby”
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitAddress, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitLocation 0..1 SEEHDSRivString "Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitLocation, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact 0..1 BackboneElement "Kontaktperson hos juridiskt ansvarig vårdgivare"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.hsaid 0..1 SEEHDSRivString "HSAid för personen" """
    HSAid för personen. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.39 beslutsregel: I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.hsaid, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personName 0..1 SEEHDSRivString "Namn på aktören"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personName, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personEmail 0..1 SEEHDSRivString "Epostadress till personen"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personEmail, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personTelecom 0..1 SEEHDSRivString "Telefon till personen"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personTelecom, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personAddress 0..1 SEEHDSRivString "Adress till personen"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personAddress, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemName 1..1 SEEHDSRivString "Klartextnamn på källsystemet"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemName, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductName 0..1 SEEHDSRivString "Klartextnamn på källsystemets produktnamn"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductName, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductVersion 0..1 SEEHDSRivString "Klartextnamn på källsystemets produktversion"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductVersion, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact 1..1 BackboneElement "Kontaktuppgifter till källsystemsansvarig"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.hsaid 0..1 SEEHDSRivString "HSAid för personen" """
    HSAid för personen. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.39 beslutsregel: I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.hsaid, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personName 0..1 SEEHDSRivString "Namn"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personName, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personEmail 0..1 SEEHDSRivString "Epostadress till personen"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personEmail, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personTelecom 0..1 SEEHDSRivString "Telefon till personen"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personTelecom, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personAddress 0..1 SEEHDSRivString "Adress till personen"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personAddress, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careUnitSmiId 0..1 SEEHDSRivString "Utförande vårdenhetens registreringsId hos SMI"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careUnitSmiId, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.date 1..1 SEEHDSRivDate "Datum då nedan vaccination(er) gavs" """Format enligt XSD (DateType): ÅÅÅÅMMDD."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.date, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientPostalCode 0..1 SEEHDSRivString "Postnummer för patientens senast kända bostadsadress"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientPostalCode, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.vaccinationUnstructuredNote 0..1 SEEHDSRivString "Enligt CDA:s konvention med läsbar fritextsammanfattning av den strukturerade information kan också använda …" """
    Enligt CDA:s konvention med läsbar fritextsammanfattning av den strukturerade information kan också använda här. Kan formateras enligt HL7NarrativeBlock. Not: Om endast ostrukturerad vaccinationsinformation finns, kan, detta kontrakt produceras men i så fall inga administrationRecords nedan returneras.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.vaccinationUnstructuredNote, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.riskCategory 0..* SEEHDSRivCVTypeActivityprescriptionActoutcome1 "Information om patientens eventuella riskgruppstillhörighet, känd vid vaccinationstillfället, baserad på i …" """
    Information om patientens eventuella riskgruppstillhörighet, känd vid vaccinationstillfället, baserad på i förekommande fall patientens hälsodeklaration
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.riskCategory, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientAdverseEffect 0..* SEEHDSRivCVTypeActivityprescriptionActoutcome1 "Information om patienten erfarit någon eller några reaktioner hänför bara till vaccinationstillfället men ej …" """
    Information om patienten erfarit någon eller några reaktioner hänför bara till vaccinationstillfället men ej specifik vaccination (i fall som när flera vaccin givits vid samma tillfälle)
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientAdverseEffect, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord 0..* BackboneElement "Information om utförd(a) vaccination(er) vid tillfället" """
    Information om utförd(a) vaccination(er) vid tillfället. Ordinerad men av någon anledning ej given vaccination kan inkluderas.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationProgramName 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome1 "Information om vaccinationsprogram om vaccinationen är del av sådant program" """
    Information om vaccinationsprogram om vaccinationen är del av sådant program. Tillåter kodat värde liksom endast namn genom bruk av DisplayName i CVType.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationProgramName, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg 0..1 BackboneElement "Information om var vaccinationen ordinerats (eller i fallet med förskrivna vaccinationsläkemedel, förskrivits)"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitHSAid 0..1 SEEHDSRivString "HSA-id för organisationsenhet" """
    HSA-id för organisationsenhet. Om tillgängligt skall detta anges. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.6 beslutsregel: I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitHSAid, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitName 0..1 SEEHDSRivString "Namn på organisationsenhet" """Namn på organisationsenhet. Om tillgängligt skall detta anges."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitName, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till organisationsenhet" """Telefon till organisationsenhet."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitTelecom, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitEmail 0..1 SEEHDSRivString "Epost till organisationsenhet" """Epost till organisationsenhet."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitEmail, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitAddress 0..1 SEEHDSRivString "Postadress till organisationsenhet" """
    Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis:”Storgatan 12468 91 Lilleby”
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitAddress, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitLocation 0..1 SEEHDSRivString "Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitLocation, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson 0..1 BackboneElement "Information om vem som ordinerat/förskrivit vaccinationen"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.hsaid 0..1 SEEHDSRivString "HSAid för personen" """
    HSAid för personen. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.39 beslutsregel: I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.hsaid, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personName 0..1 SEEHDSRivString "Namn"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personName, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personEmail 0..1 SEEHDSRivString "Epostadress till personen"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personEmail, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personTelecom 0..1 SEEHDSRivString "Telefon till personen"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personTelecom, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personAddress 0..1 SEEHDSRivString "Adress till personen"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personAddress, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg 0..1 BackboneElement "Information om vårdenhet som utfört vaccinationen"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitHSAid 0..1 SEEHDSRivString "HSA-id för organisationsenhet" """
    HSA-id för organisationsenhet. Om tillgängligt skall detta anges. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.6 beslutsregel: I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitHSAid, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitName 0..1 SEEHDSRivString "Namn på organisationsenhet" """Namn på organisationsenhet. Om tillgängligt skall detta anges."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitName, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till organisationsenhet" """Telefon till organisationsenhet."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitTelecom, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitEmail 0..1 SEEHDSRivString "Epost till organisationsenhet" """Epost till organisationsenhet."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitEmail, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitAddress 0..1 SEEHDSRivString "Postadress till organisationsenhet" """
    Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis:”Storgatan 12468 91 Lilleby”
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitAddress, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitLocation 0..1 SEEHDSRivString "Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitLocation, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer 0..1 BackboneElement "Information om vem som utfört (administrerat) vaccineringen"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.hsaid 0..1 SEEHDSRivString "HSAid för personen" """
    HSAid för personen. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.39 beslutsregel: I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.hsaid, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personName 0..1 SEEHDSRivString "Namn"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personName, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personEmail 0..1 SEEHDSRivString "Epostadress till personen"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personEmail, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personTelecom 0..1 SEEHDSRivString "Telefon till personen"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personTelecom, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personAddress 0..1 SEEHDSRivString "Adress till personen"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personAddress, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.anatomicalSite 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome1 "Information om var på kroppen vaccinet givits" """Information om var på kroppen vaccinet givits."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.anatomicalSite, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.route 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome1 "Information om hur vaccinet givits" """Information om hur vaccinet givits. Ibland kallat ”administrationsväg”"""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.route, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage 0..1 BackboneElement "Mängd vaccin som givits"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage.quantity 0..1 SEEHDSRivPQTypeActivityprescriptionActoutcome1 "Mängd preparat som givits dvs 1 ml etc" """
    Mängd preparat som givits dvs 1 ml etc. Skall anges om möjligt i denna strukturerade form med värde(float) samt enhet. Annars i nästa fält om det endast finns angivet som text
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage.quantity, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage.displayName 1..1 SEEHDSRivString "Fritextbeskrivning av preparat och mängd som givits" """
    Fritextbeskrivning av preparat och mängd som givits. T ex ”Twinrix 1 ml, 1 av 3”, ”2 ml” odyl. Anges även om quantity angivits ovan
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dosage.displayName, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.isDoseComplete 0..1 SEEHDSRivBoolean "True om vaccineringen räknas som hel dos eller efter flera delvaccinationer fullt utförd" """
    True om vaccineringen räknas som hel dos eller efter flera delvaccinationer fullt utförd. Annars false (dvs för de fall som ytterligare delvaccinationer skall ges innan full dos är uppnådd)
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.isDoseComplete, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.doseOrdinalNumber 0..1 SEEHDSRivInteger "Anger i förekommande fall om vaccineringen är en del av flera vaccinationer som skall utföras, värden 1,2,3… …" """
    Anger i förekommande fall om vaccineringen är en del av flera vaccinationer som skall utföras, värden 1,2,3… 1 om endast en
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.doseOrdinalNumber, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.numberOfPrescribedDoses 0..1 SEEHDSRivInteger "Anger antalet delvaccinationer som skall utföras för att vaccinationen skall räknas som full dos uppnådd" """
    Anger antalet delvaccinationer som skall utföras för att vaccinationen skall räknas som full dos uppnådd. Värden 1,2,3,… 1 om endast en vaccinering utgör full dos
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.numberOfPrescribedDoses, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.sourceDescription 0..1 SEEHDSRivString "Fritextinformation som anger källa för vaccinering som efterregistrerats" """
    Fritextinformation som anger källa för vaccinering som efterregistrerats. T ex namn på annan vårdenhet, intyg, land el. dyl.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.sourceDescription, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentPrescription 0..1 SEEHDSRivString "Fritextinformation" """Fritextinformation. T.ex. instruktioner som noterats i ordinationen av vaccineringen"""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentPrescription, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentAdministration 0..1 SEEHDSRivString "Fritextinformation" """Fritextinformation. Generella kommentarer gjorde vid vaccineringen av den som utfört den"""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentAdministration, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.patientAdverseEffect 0..* SEEHDSRivCVTypeActivityprescriptionActoutcome1 "Information om patienten erfarit någon eller några reaktioner hänför bara till den specifika administreringen"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.patientAdverseEffect, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineType 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome1 "Information om givet vaccin"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineType, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineName 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome1 "Information om givet vaccins produktnamn" """
    Information om givet vaccins produktnamn. I Code skall då anges exempelvis NPL-id om det finns och kodverk ”npl”. Om standardkodverk ej används, ej anges lokal kod, se CVType ovan. Namnet i klartext ges i DisplayName.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineName, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineBatchId 0..1 SEEHDSRivString "Identifiering av batchnummer för vaccinets tillverkning"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineBatchId, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineManufacturer 0..1 SEEHDSRivString "Namn på tillverkaren av vaccinet"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineManufacturer, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineTargetDisease 0..* SEEHDSRivCVTypeActivityprescriptionActoutcome1 "Information om den/de sjukdomar vaccinet skyddar emot"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineTargetDisease, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationUniqueReference 0..1 SEEHDSRivIITypeActivityprescriptionActoutcome1 "Unika referensen till källsystemets vaccinationsinformation"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationUniqueReference, urn:riv:clinicalprocess:activityprescription:actoutcome:1)
