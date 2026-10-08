// RIV-TA GetVaccinationHistory 2.0 – svarsmeddelandet GetVaccinationHistoryResponse.
// Struktur, namn, ordning, namnrymder och XSD-kardinaliteter är genererade från
// riv.clinicalprocess.activityprescription.actoutcome/schemas/interactions/GetVaccinationHistoryInteraction/GetVaccinationHistoryResponder_2.0.xsd (bitbucket.org/rivta-domains).
// Kardinaliteter är verifierade mot TKB_clinicalprocess_activityprescription_actoutcome.docx; texter är sammanslagna från tidigare modell och TKB.

Logical: SEEHDSLMVaccinationHistory
Id: SEEHDSLMVaccinationHistory
Title: "GetVaccinationHistory"
Description: """
  Logisk modell för tjänstekontraktet GetVaccinationHistory
  (RIV-TA urn:riv:clinicalprocess:activityprescription:actoutcome:GetVaccinationHistoryResponder:2).
  Representerar responsens informationsstruktur — vaccinationsjournal per patient.
"""
* insert RivRoot(GetVaccinationHistoryResponse, urn:riv:clinicalprocess:activityprescription:actoutcome:GetVaccinationHistoryResponder:2)
* vaccinationMedicalRecord 0..* BackboneElement "En strukturerad vaccinationsjournal" """En strukturerad vaccinationsjournal. Kan innehålla en eller flera administreringsposter."""
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader 1..1 BackboneElement "Basinformation om dokumentet" """Innehåller basinformation om dokumentet."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentId 1..1 SEEHDSRivString "Identifierare för uppgift i patientjournal" """Identifieraren ska vara konsistent och beständig mellan anrop."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.sourceSystemHSAId 1..1 SEEHDSRivString "Det källsystem som uppgiften lagras i" """Sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1)."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.sourceSystemHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTitle 0..1 SEEHDSRivString "Titel som beskriver informationen" """Titel som beskriver den information som tillgängliggörs."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTitle, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTime 0..1 SEEHDSRivTimeStamp "Händelsetidpunkt (vaccinationstidpunkt)" """
    Händelsetidpunkt. Tidsangivelse för den vaccinationstidpunkt dokumentet gäller.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTime, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.patientId 1..1 SEEHDSRivPersonIdTypeActivityprescriptionActoutcome2 "Personidentifierare för patienten" """
    id = patientens identifierare (12 tecken utan avskiljare).
    type = OID för typ av personidentifierare.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.patientId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional 1..1 BackboneElement "Dokumentationsansvarig" """
    Information avseende dokumentation av uppgiften som tillgängliggörs. Notera att den som registrerar uppgiften från annan källa, exempelvis en medicinsk sekreterare som transkriberar ett diktat, inte avses.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.authorTime 1..1 SEEHDSRivTimeStamp "Tidpunkt för dokumentation" """
    Tidpunkt då uppgiften dokumenterades eller senast uppdaterades. I de fall då uppgiften ursprungligen dokumenterats eller uppdaterats i ett annat informationssystem än tjänsteproducentens källsystem (t.ex. laboratorieinformationssystem), ska tidpunkten spegla informationen från systemet där uppgiften ursprungligen dokumenterades.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.authorTime, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId 0..1 SEEHDSRivString "HSA-id för personal" """
    HSA-id för hälso- och sjukvårdspersonal som dokumenterat uppgiften som tillgängliggörs. I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalName 0..1 SEEHDSRivString "Namn på personal" """Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Befattning" """
    Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid dokumentationstidpunkten. Anges med HSAs kodverk Befattning (OID: 1.2.752.129.2.2.1.4) [R6]. Om kod inte är tillgänglig anges befattning som klartext i datatypens attribut originalText.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit 0..1 BackboneElement "Organisationsenhet" """Den organisation som hälso- och sjukvårdspersonen är uppdragstagare på"""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId 0..1 SEEHDSRivString "HSA-id för organisationsenhet" """
    HSA-id för organisationsenhet. I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName 0..1 SEEHDSRivString "Namn på organisationsenhet" """Namnet på den organisation som hälso- och sjukvårdspersonen är uppdragstagare på."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till organisationsenhet"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail 0..1 SEEHDSRivString "E-post till organisationsenhet"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress 0..1 SEEHDSRivString "Postadress till organisationsenhet" """
    Postadress för den organisation som hälso- och sjukvårdspersonen är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis:”Storgatan 12468 91 Lilleby”
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation 0..1 SEEHDSRivString "Plats/ort för organisationens fysiska placering" """Text som anger namnet på plats eller ort för organisationens fysiska placering"""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId 0..1 SEEHDSRivString "HSA-id för vårdenhet" """
    HSA-id för vårdenheten där uppgiften är dokumenterad. För mer information av vad som avses med vårdenhet, se [R17]. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet). Regel 1.1
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId 0..1 SEEHDSRivString "HSA-id/id för vårdgivare" """
    Id för uppgiftsägande vårdgivare. För mer information av vad som avses med vårdgivare, se [R17]. I första hand HSA-id, i andra hand organisationsnummer. Regel 1.1
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator 0..1 BackboneElement "Information om signering" """Information avseende signering av uppgiften som tillgängliggörs."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.signatureTime 1..1 SEEHDSRivTimeStamp "Tidpunkt för signering" """
    Tidpunkt då uppgiften signerades.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.signatureTime, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId 0..1 SEEHDSRivString "HSA-id för signerande personal" """
    HSA-id för hälso- och sjukvårdspersonal som signerat uppgiften som tillgängliggörs. I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName 0..1 SEEHDSRivString "Namn på signerande personal" """Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.approvedForPatient 1..1 SEEHDSRivBoolean "Beslut om synlighet för patient (PDL-prövning)" """
    Ansvarig vårdpersonals beslut, alternativt verksamhetens policy och regler (men- och sekretessprövning), huruvida uppgiften får delas till patient för ändamålet patients åtkomst (Individens direktåtkomst). Om uppgiften beslutas delas sätts värdet till true, i annat fall till false. False innebär att uppgiften inte får delas till patient. Notera att värdet kan, för samma uppgift, förändras med tiden på grund av att rådrumstid har passerats, eller att verksamheten ändrat policy för vad som lämnas ut till patient. I sådana fall skall källsystemet uppdatera engagemangsindex.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.approvedForPatient, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.careContactId 0..1 SEEHDSRivString "Identitet för vård- och omsorgskontakt" """
    Identitetet för den vård- och omsorgskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.careContactId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullified 1..1 SEEHDSRivBoolean "Anger om dokumentet makulerats i källsystemet" """
    Anger om dokumentet makulerats i källsystemet. Sätts i så fall till true annars false. Används bl.a. i statistik-/rapportuttag med hjälp av tjänstekontrakten.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullified, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullifiedReason 0..1 SEEHDSRivString "Orsak till makulering. Villkor: Får ENBART anges om nullified = true." """Anger orsak till makulering. Får endast anges i kombination med att nullified = true"""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullifiedReason, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody 1..1 BackboneElement "Vaccinationsjournalens innehåll" """
    Består av en registrationData med ytterligare administrativ information samt en eller flera vaccinationData om utförda vaccinationer vid vaccinationstillfället.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord 1..1 BackboneElement "Administrativ information om vaccinationstillfället" """Annan information än ovan som registreras vid eller relaterat till vaccinationstillfället"""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg 1..1 BackboneElement "Information om juridisk vårdgivare" """
    Information om juridisk vårdgivare; hsaid (om finns) och kontaktuppgifter namn, e-post, tel, adress etc.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitHSAId 0..1 SEEHDSRivString "HSA-id för organisationsenhet"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitName 0..1 SEEHDSRivString "Namn på organisationsenhet"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitTelecom 0..1 SEEHDSRivString "Telefon"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitTelecom, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitEmail 0..1 SEEHDSRivString "E-post"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitEmail, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitAddress 0..1 SEEHDSRivString "Postadress"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitAddress, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitLocation 0..1 SEEHDSRivString "Plats/ort"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitLocation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact 0..1 BackboneElement "Kontaktperson hos juridiskt ansvarig vårdgivare"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.hsaid 0..1 SEEHDSRivString "Identifierare för aktören"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.hsaid, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personName 0..1 SEEHDSRivString "Namn på aktören"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personEmail 0..1 SEEHDSRivString "E-post"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personEmail, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personTelecom 0..1 SEEHDSRivString "Telefon"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personTelecom, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personAddress 0..1 SEEHDSRivString "Adress"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.personAddress, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemName 1..1 SEEHDSRivString "Klartextnamn på källsystemet/organisationen" """
    Klartextnamn på källsystemet. Detta fält fylls med namnet på den organisationen som ansvarar för vaccinationen, till exempel privat företag eller vårdgivarens huvudman.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductName 0..1 SEEHDSRivString "Källsystemets produktnamn" """Klartextnamn på källsystemets produktnamn"""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductVersion 0..1 SEEHDSRivString "Källsystemets produktversion" """Klartextnamn på källsystemets produktversion"""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductVersion, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact 1..1 BackboneElement "Kontaktuppgifter till källsystemsansvarig"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.hsaid 0..1 SEEHDSRivString "Identifierare"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.hsaid, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personName 0..1 SEEHDSRivString "Namn"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personEmail 0..1 SEEHDSRivString "E-post"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personEmail, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personTelecom 0..1 SEEHDSRivString "Telefon"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personTelecom, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personAddress 0..1 SEEHDSRivString "Adress"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.personAddress, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careUnitSmiId 0..1 SEEHDSRivString "Utförande vårdenhetens registreringsId hos SMI (Folkhälsomyndigheten)" """Utförande vårdenhetens registreringsId hos SMI"""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careUnitSmiId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.date 1..1 SEEHDSRivDate "Datum då vaccination(er) gavs" """
    Datum då nedan vaccination(er) gavs
    Format enligt XSD (DateType): ÅÅÅÅMMDD.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.date, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientPostalCode 0..1 SEEHDSRivString "Postnummer för patientens senast kända bostadsadress"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientPostalCode, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.vaccinationUnstructuredNote 0..1 SEEHDSRivString "Fritextsammanfattning av strukturerad information" """
    Enligt CDA:s konvention med läsbar fritextsammanfattning av den strukturerade information kan också använda här. Not: Om endast ostrukturerad vaccinationsinformation finns, kan, detta kontrakt produceras men i så fall inga administrationRecords nedan returneras.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.vaccinationUnstructuredNote, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.riskCategory 0..* SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Patientens riskgruppstillhörighet vid vaccinationstillfället" """
    Information om patientens eventuella riskgruppstillhörighet, känd vid vaccinationstillfället, baserad på i förekommande fall patientens hälsodeklaration
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.riskCategory, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientAdverseEffect 0..* SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Reaktioner hos patienten vid vaccinationstillfället" """
    Information om patienten erfarit någon eller några reaktioner hänför bara till vaccinationstillfället men ej specifik vaccination (i fall som när flera vaccin givits vid samma tillfälle)
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientAdverseEffect, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord 0..* BackboneElement "Information om utförd vaccination" """
    Information om utförd(a) vaccination(er) vid tillfället. Ordinerad men av någon anledning ej given vaccination kan inkluderas.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationProgramName 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Information om vaccinationsprogram" """
    Information om vaccinationsprogram om vaccinationen är del av sådant program. Tillåter kodat värde liksom endast namn genom bruk av originalText i CVType.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationProgramName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg 0..1 BackboneElement "Information om var vaccinationen ordinerats" """
    Information om var vaccinationen ordinerats (eller i fallet med förskrivna vaccinationsläkemedel, förskrivits)
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitHSAId 0..1 SEEHDSRivString "HSA-id"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitName 0..1 SEEHDSRivString "Namn"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till organisationsenhet"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitTelecom, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitEmail 0..1 SEEHDSRivString "E-post till organisationsenhet"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitEmail, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitAddress 0..1 SEEHDSRivString "Postadress till organisationsenhet"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitAddress, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitLocation 0..1 SEEHDSRivString "Plats för organisationsenhet"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitLocation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson 0..1 BackboneElement "Information om vem som ordinerat/förskrivit" """Information om vem som ordinerat/förskrivit vaccinationen"""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.hsaid 0..1 SEEHDSRivString "Identifierare"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.hsaid, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personName 0..1 SEEHDSRivString "Namn"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personEmail 0..1 SEEHDSRivString "E-post"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personEmail, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personTelecom 0..1 SEEHDSRivString "Telefon"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personTelecom, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personAddress 0..1 SEEHDSRivString "Adress"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.personAddress, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg 0..1 BackboneElement "Information om vårdenhet som utfört vaccinationen"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitHSAId 0..1 SEEHDSRivString "HSA-id"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitName 0..1 SEEHDSRivString "Namn"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till organisationsenhet"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitTelecom, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitEmail 0..1 SEEHDSRivString "E-post till organisationsenhet"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitEmail, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitAddress 0..1 SEEHDSRivString "Postadress till organisationsenhet"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitAddress, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitLocation 0..1 SEEHDSRivString "Plats för organisationsenhet"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitLocation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer 0..1 BackboneElement "Information om vem som administrerat vaccineringen" """Information om vem som utfört (administrerat) vaccineringen"""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.hsaid 0..1 SEEHDSRivString "Identifierare"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.hsaid, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personName 0..1 SEEHDSRivString "Namn"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personEmail 0..1 SEEHDSRivString "E-post"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personEmail, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personTelecom 0..1 SEEHDSRivString "Telefon"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personTelecom, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personAddress 0..1 SEEHDSRivString "Adress"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.personAddress, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.anatomicalSite 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Var på kroppen vaccinet givits" """Information om var på kroppen vaccinet givits."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.anatomicalSite, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.route 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Hur vaccinet givits (administrationsväg)" """Information om hur vaccinet givits. Ibland kallat ”administrationsväg”"""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.route, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose 0..1 BackboneElement "Mängd vaccin som givits"
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose.quantity 0..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "Mängd preparat som givits (strukturerad form)" """
    Mängd preparat som givits dvs 1 ml etc. Ska anges om möjligt i denna strukturerade form med värde(float) samt enhet. Annars i nästa fält om det endast finns angivet som text.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose.quantity, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose.displayName 1..1 SEEHDSRivString "Fritextbeskrivning av mängd vaccin, t.ex. '1 ml'" """
    Fritextbeskrivning av mängd vaccin som givits. T ex ”1 ml” Anges även om quantity angivits ovan.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose.displayName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.isDoseComplete 0..1 SEEHDSRivBoolean "True om vaccinering räknas som hel dos" """
    True om vaccineringen räknas som hel dos eller efter flera delvaccinationer fullt utförd. Annars false (dvs för de fall som ytterligare delvaccinationer ska ges innan full dos är uppnådd)
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.isDoseComplete, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.doseOrdinalNumber 0..1 SEEHDSRivInteger "Anger vilken dos i ordningen" """
    Anger vilken dos i ordningen som administrerats då vaccineringen är en del av flera vaccinationer som ska utföras för att räknas som full dos uppnådd. Värden 1,2,3,… 1 om endast en vaccinering utgör full dos. Exempel: om tre doser krävs för att vaccinationen ska uppnå full dos och patient erhåller den andra i ordningen anges detta värde som 2.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.doseOrdinalNumber, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.numberOfPrescribedDoses 0..1 SEEHDSRivInteger "Antal delvaccinationer för hel dos" """
    Anger antalet delvaccinationer som ska utföras för att vaccinationen ska räknas som full dos uppnådd. Värden 1,2,3,… 1 om endast en vaccinering utgör full dos Exempel: om tre doser krävs för att vaccinationen ska uppnå full dos anges detta värde som 3.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.numberOfPrescribedDoses, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.sourceDescription 0..1 SEEHDSRivString "Fritext om källa för efterregistrerad vaccinering" """
    Fritextinformation som anger källa för vaccinering som efterregistrerats. T ex namn på annan vårdenhet, intyg, land el. dyl.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.sourceDescription, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentPrescription 0..1 SEEHDSRivString "Fritext: instruktioner från ordination" """Fritextinformation. T.ex. instruktioner som noterats i ordinationen av vaccineringen"""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentPrescription, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentAdministration 0..1 SEEHDSRivString "Fritext: kommentarer vid vaccinering" """Fritextinformation. Generella kommentarer gjorde vid vaccineringen av den som utfört den"""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentAdministration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.patientAdverseEffect 0..* SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Reaktioner för det specifika administreringstillfället" """
    Information om patienten erfarit någon eller några reaktioner hänför bara till den specifika administreringen
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.patientAdverseEffect, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.typeOfVaccine 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Vaccintyp (vilka sjukdomar vaccinet skyddar emot)" """
    Information om givet vaccin. Beskriver vaccintyp i praktiken genom att beskriva vilka sjukdomar som vaccinet skyddar emot (exempel på koder: Hep A, MPR och säsongsinfluensa).
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.typeOfVaccine, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineName 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Vaccinets produktnamn (NPL-id rekommenderas)" """
    Information om givet vaccins produktnamn. I code ska anges företrädelsevis NPL-id (codeSystem =1.2.752.129.2.1.5.1, codeSystemName = ”NPL”). Om standardkodverk ej används anges endast namnet på vaccinet i attributet originalText.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineBatchId 0..1 SEEHDSRivString "Batchnummer för vaccinets tillverkning" """Identifiering av batchnummer för vaccinets tillverkning"""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineBatchId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineManufacturer 0..1 SEEHDSRivString "Namn på vaccintillverkaren" """Namn på tillverkaren av vaccinet."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineManufacturer, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineTargetDisease 0..* SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Sjukdomar vaccinet skyddar emot" """Information om den/de sjukdomar vaccinet skyddar emot."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineTargetDisease, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationUniqueReference 0..1 SEEHDSRivIITypeActivityprescriptionActoutcome2 "Unik referens till källsystemets vaccinationsinformation" """Unika referensen till källsystemets vaccinationsinformation."""
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationUniqueReference, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation 0..1 BackboneElement "Ytterligare patientinformation" """
    Ytterligare information om patienten som inte går att få tag på via en gemensam PU-slagning.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation.dateOfBirth 1..1 SEEHDSRivDate "Patientens födelsedatum" """
    Patientens födelsedatum.
    Format enligt XSD (DateType): ÅÅÅÅMMDD.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation.dateOfBirth, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation.gender 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Patientens kön. KV Kön (OID 1.2.752.129.2.2.1.1) bör användas. CVType-begränsning (Regel): originalText är förbjudet (0..0) — code, codeSystem och displayName ska anges." """
    Patientens kön. KV Kön (1.2.752.129.2.2.1.1) bör användas.
    Enligt TKB i detta sammanhang: code 1..1, codeSystem 1..1, displayName 1..1, originalText 0..0.
  """
* insert RivNs(vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation.gender, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* result 1..1 BackboneElement "Svarsstatus" """Innehåller information om begäran gick bra eller ej."""
* result.resultCode 1..1 SEEHDSRivString "OK, INFO eller ERROR" """
    Kan endast vara OK, INFO eller ERROR
    Tillåtna värden enligt XSD: OK, ERROR, INFO.
  """
* insert RivNs(result.resultCode, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* result.resultCode.value from ResultCodeVS (required)
* result.errorCode 0..1 SEEHDSRivString "Sätts om resultCode är ERROR" """
    Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information.
    Tillåtna värden enligt XSD: INVALID_REQUEST.
  """
* insert RivNs(result.errorCode, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* result.errorCode.value from ErrorCodeVS (required)
* result.logId 1..1 SEEHDSRivString "UUID för felsökning hos producent" """En UUID som kan användas vid felanmälan för att användas vid felsökning av producent."""
* insert RivNs(result.logId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* result.subCode 0..1 SEEHDSRivString "Inga subkoder specificerade" """Inga subkoder är specificerade."""
* insert RivNs(result.subCode, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* result.message 0..1 SEEHDSRivString "Beskrivande text för användaren" """En beskrivande text som kan visas för användaren."""
* insert RivNs(result.message, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
