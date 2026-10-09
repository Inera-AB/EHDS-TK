// RIV-TA GetMedicationHistory 2.2 – svarsmeddelandet GetMedicationHistoryResponse.
// Struktur, namn, ordning, namnrymder och XSD-kardinaliteter är genererade från
// riv.clinicalprocess.activityprescription.actoutcome/schemas/interactions/GetMedicationHistoryInteraction/GetMedicationHistoryResponder_2.2.xsd (bitbucket.org/rivta-domains).
// Kardinaliteter är verifierade mot TKB_clinicalprocess_activityprescription_actoutcome.docx; texter är sammanslagna från tidigare modell och TKB.

Logical: SEEHDSLMMedicationHistory
Id: SEEHDSLMMedicationHistory
Title: "GetMedicationHistory"
Description: """
  Logisk modell för tjänstekontraktet GetMedicationHistory
  (RIV-TA urn:riv:clinicalprocess:activityprescription:actoutcome:GetMedicationHistoryResponder:2).
  Representerar responsens informationsstruktur — läkemedelshistorik per patient.

  OBS: Kontraktet är tämligen omfattande. Se tillämpningsanvisningen
  (AB_clinicalprocess_activityprescription_actoutcome.docx) för implementationsdetaljer.
"""
* insert RivRoot(GetMedicationHistoryResponse, urn:riv:clinicalprocess:activityprescription:actoutcome:GetMedicationHistoryResponder:2)
* medicationMedicalRecord 0..* BackboneElement "Patientens läkemedelshistorik" """En läkemedelsjournalpost per ordination. En patient kan ha många poster."""
* medicationMedicalRecord.medicationMedicalRecordHeader 1..1 BackboneElement "Basinformation om dokumentet" """
    Innehåller basinformation om dokumentet, inklusive information om vid vilken vårdkontakt som ordinationen skedde. Notera: accountableHealthCareProfessional anges till den som registrerat informationen. Ordinatör, förskrivare och administrerande vårdpersonal anges i Bodyn.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.documentId 1..1 SEEHDSRivString "Identifierare för uppgift (vanligtvis ordinations-id)" """Vanligtvis ordinations-id eller ordinations-id kompletterat med löpnummer."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.documentId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.sourceSystemHSAId 1..1 SEEHDSRivString "Källsystemets HSA-id" """Det källsystem som uppgiften lagras i. Sätts till källsystemets HSA-id."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.sourceSystemHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.documentTitle 0..0 SEEHDSRivString "Titel (ej tillämpligt — 0..0 per TKB)" """
    Titel som beskriver den information som tillgängliggörs.
    Kardinaliteten 0..0 kommer från tidigare modell; TKB anger 0..1.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.documentTitle, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.documentTime 0..0 SEEHDSRivTimeStamp "Tidpunkt för dokumentet" """
    Ska ej anges
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.documentTime, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.patientId 1..1 SEEHDSRivPersonIdTypeActivityprescriptionActoutcome2 "Personidentifierare för patienten" """Personidentifierare för patienten."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.patientId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional 1..1 BackboneElement "Dokumentationsansvarig" """
    Information avseende dokumentation av uppgiften som tillgängliggörs. Notera att den som registrerar uppgiften från annan källa, exempelvis en medicinsk sekreterare som transkriberar ett diktat, inte avses.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.authorTime 1..1 SEEHDSRivTimeStamp "Tidpunkt för dokumentation" """
    Tidpunkt då uppgiften dokumenterades eller senast uppdaterades.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.authorTime, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId 0..1 SEEHDSRivString "HSA-id för personal" """HSA-id för hälso- och sjukvårdspersonal som dokumenterat uppgiften som tillgängliggörs."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalName 0..1 SEEHDSRivString "Namn på personal" """Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Befattning (KV Befattning OID 1.2.752.129.2.2.1.4)" """
    Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid dokumentationstidpunkten. Anges med HSAs kodverk Befattning (OID: 1.2.752.129.2.2.1.4) [R6]. Om kod inte är tillgänglig anges befattning som klartext i datatypens attribut originalText.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit 0..1 BackboneElement "Organisationsenhet" """Den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId 0..1 SEEHDSRivString "HSA-id för organisationsenhet" """
    HSA-id för organisationsenhet. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet).
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName 0..1 SEEHDSRivString "Namn på organisationsenhet" """Namnet på organisationsenhet."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon" """Telefon till organisationsenhet."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail 0..1 SEEHDSRivString "E-post" """E-post till organisationsenhet."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress 0..1 SEEHDSRivString "Postadress" """Postadress till organisationsenhet."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation 0..1 SEEHDSRivString "Plats/ort" """Text som anger namnet på plats eller ort för organisationens fysiska placering."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId 0..1 SEEHDSRivString "HSA-id för vårdenhet" """
    HSA-id för vårdenheten där uppgiften är dokumenterad. För mer information av vad som avses med vårdenhet, se [R17]. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet). Regel 1.1
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId 0..1 SEEHDSRivString "HSA-id/id för vårdgivare" """
    Id för uppgiftsägande vårdgivare. För mer information av vad som avses med vårdgivare, se [R17]. I första hand HSA-id, i andra hand organisationsnummer. Regel 1.1
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.legalAuthenticator 0..1 BackboneElement "Information om signering" """Information avseende signering av uppgiften som tillgängliggörs."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.legalAuthenticator, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.legalAuthenticator.signatureTime 1..1 SEEHDSRivTimeStamp "Tidpunkt för signering" """
    Tidpunkt då uppgiften signerades.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.legalAuthenticator.signatureTime, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId 0..1 SEEHDSRivString "HSA-id för signerande personal" """HSA-id för hälso- och sjukvårdspersonal som signerat uppgiften som tillgängliggörs."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName 0..1 SEEHDSRivString "Namn på signerande personal" """Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.approvedForPatient 1..1 SEEHDSRivBoolean "Ansvarig vårdpersonals beslut om synlighet (PDL-prövning)" """
    Ansvarig vårdpersonals beslut, alternativt verksamhetens policy och regler (men- och sekretessprövning), huruvida uppgiften får delas till patient för ändamålet patients åtkomst (Individens direktåtkomst). Om uppgiften beslutas delas sätts värdet till true, i annat fall till false. False innebär att uppgiften inte får delas till patient. Notera att värdet kan, för samma uppgift, förändras med tiden på grund av att rådrumstid har passerats, eller att verksamheten ändrat policy för vad som lämnas ut till patient. I sådana fall ska källsystemet uppdatera engagemangsindex.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.approvedForPatient, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.careContactId 0..1 SEEHDSRivString "Identitet för vård- och omsorgskontakt" """
    Identitetet för den vård- och omsorgskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.careContactId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.nullified 0..0 SEEHDSRivBoolean "Makulerat (ej tillämpligt)" """N/A — GetMedicationHistory stödjer inte nullified. Elementet är 0..0 per TKB."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.nullified, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordHeader.nullifiedReason 0..0 SEEHDSRivString "Makuleringsskäl (ej tillämpligt)" """N/A — GetMedicationHistory stödjer inte nullifiedReason. Elementet är 0..0 per TKB."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordHeader.nullifiedReason, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody 1..1 BackboneElement "Läkemedelshistorikens innehåll"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription 1..1 BackboneElement "Läkemedelsordination" """
    LÄKEMEDELSORDINATION. Ordination som avser läkemedelsbehandling. De individuella läkemedelsordinationerna kan indelas i ordination som avser utsättning, förändrande läkemedelsordination, ordination som avser insättning och bekräftande läkemedelsordination. I slutenvård görs endast ordination, men i öppenvård krävs vanligtvis även en förskrivning (se nedan).
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionId 1..1 SEEHDSRivIITypeActivityprescriptionActoutcome2 "Ordinations-id" """
    Unik identifierare för aktuell läkemedelsordination.
    root = UUID eller OID som pekar på källsystem.
    extension = ordinations-id unikt inom källsystemet.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.typeOfPrescription 1..1 SEEHDSRivString "Ordinationstyp (I=insättning, U=utsättning)" """
    Ordinationstyp. Uppgift som anger om aktuell ordination ska räknas som en insättningsordination eller utsättningsordination (utsättningsordination = ordination som beskriver avslut av läkemedelsbehandling). Insättning används när läkemedlet är insatt, dvs. även en ändrad eller förnyad ordination har typen insättning. Kodverk: I, U.
    Tillåtna värden enligt XSD: I, U.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.typeOfPrescription, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.typeOfPrescription.value from TypeOfPrescriptionVS (required)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionStatus 1..1 SEEHDSRivString "Ordinationsstatus (Active/Inactive)" """
    Ordinationsstatus. Anger ordinationens aktuella status [Active, Inactive] En aktiv ordination är den sista i sin ordinationskedja. Alla andra ordinationer i samma ordinationskedja är inaktiva.
    Tillåtna värden enligt XSD: Active, Inactive.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionStatus, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionStatus.value from PrescriptionStatusVS (required)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionNote 0..1 SEEHDSRivString "Notat om ordinationen (del av Läkemedelsberättelse)" """
    Notat. Text som beskriver läkemedelsordinationen som utgör del av Läkemedelsberättelse. Exempel: Text som beskriver varför man satt in eller gjort dosändringar.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionNote, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.principalPrescriptionReason 0..* BackboneElement "Ordinationshuvudorsak" """
    Den eller de viktigaste av de ordinationsorsaker som anges.
    Anges med Socialstyrelsens kodsystem för ordinationsorsaker.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.principalPrescriptionReason, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.principalPrescriptionReason.reason 1..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Ordinationsorsak (Socialstyrelsens kodsystem)" """
    Ordinationsorsak. Skäl till en viss ordination. Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO, Nationell källa för ordinationsorsak). Se [R8].
    Enligt TKB i detta sammanhang: code 1..1, codeSystem 1..1, displayName 1..1, originalText 0..0.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.principalPrescriptionReason.reason, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.principalPrescriptionReason.otherReason 0..1 SEEHDSRivString "Beskrivning om 'Annan ordinationsorsak' väljs" """
    Om koden för ”Annan ordinationsorsak” (SNOMED: 46021000052104) väljs för föregående kod så anges beskrivning här.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.principalPrescriptionReason.otherReason, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.additionalPrescriptionReason 0..* BackboneElement "Övriga ordinationsorsaker" """Anges en övrig ordinationsorsak måste minst en ordinationshuvudorsak vara angiven."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.additionalPrescriptionReason, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.additionalPrescriptionReason.reason 1..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Ordinationsorsak" """
    Ordinationsorsak. Skäl till en viss ordination. Anges enligt Socialstyrelsens kodsystem för ordinationsorsaker (NKOO). Se [R8].
    Enligt TKB i detta sammanhang: code 1..1, codeSystem 1..1, displayName 1..1, originalText 0..0.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.additionalPrescriptionReason.reason, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.additionalPrescriptionReason.otherReason 0..1 SEEHDSRivString "Beskrivning om 'Annan ordinationsorsak' väljs" """
    Om koden för ”Annan ordinationsorsak” (SNOMED: 46021000052104) väljs för föregående kod så anges beskrivning här.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.additionalPrescriptionReason.otherReason, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluationTime 0..1 SEEHDSRivTimeStamp "Nästa planerade utvärderingstidpunkt" """
    Utvärderingstidpunkt (nästa planerade utvärderingstidpunkt). Tidpunkt vid vilken behandlingen ska utvärderas.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluationTime, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.treatmentPurpose 0..1 SEEHDSRivString "Behandlingsändamål" """
    Behandlingsändamål. Text som beskriver avsikten med läkemedelsbehandlingen för vård- och omsorgstagaren. Exempel: Mot högt blodtryck.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.treatmentPurpose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionChainId 0..1 SEEHDSRivIITypeActivityprescriptionActoutcome2 "Ordinationskedje-id" """
    Ordinationskedje-id. Lokal identifierare för den ordinationskedja i vilken aktuell ordination ingår. Serie av läkemedelsordinationer med gemensam indikation, gemensam verksam substans och gemensam läkemedelsform
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriptionChainId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.precedingPrescriptionId 0..1 SEEHDSRivIITypeActivityprescriptionActoutcome2 "Föregående ordinations-id" """Föregående ordinations-id. Referens till föregående ordination i ordinationskedja."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.precedingPrescriptionId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.succeedingPrescriptionId 0..1 SEEHDSRivIITypeActivityprescriptionActoutcome2 "Efterföljande ordinations-id" """Efterföljande ordinations-id. Referens till efterföljande ordination i ordinationskedja."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.succeedingPrescriptionId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber 0..1 BackboneElement "Ordinatör" """
    Icke att beblandas med accountableHealthcareProfessional (den som registrerat).
    Villkor (Regel 1.8): Obligatorisk om selfMedication = false.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.authorTime 1..1 SEEHDSRivTimeStamp "Beslutstidpunkt/ordinationstidpunkt" """
    Beslutstidpunkt/ordinationstidpunkt. Tidpunkt då beslut fattas om läkemedelsbehandling (gäller för insättning, utsättning, makulering etc) Inte nödvändigtvis samma som behandlingsstart.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.authorTime, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalHSAId 0..1 SEEHDSRivString "Ordinatörens HSA-id" """Ordinatörens HSA-id."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalName 0..1 SEEHDSRivString "Namn på ordinatören" """Namn på ordinatören. Om tillgängligt ska detta anges."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalRoleCode 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Ordinatörens befattning" """
    Information om ordinatörens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas, se referens [R6].
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalRoleCode, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit 0..1 BackboneElement "Organisation ordinatören är uppdragstagare på" """Den organisation som ordinatören är uppdragstagare på."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit.orgUnitHSAId 0..1 SEEHDSRivString "HSA-id" """
    HSA-id för organisationsenhet. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet).
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit.orgUnitHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit.orgUnitName 0..1 SEEHDSRivString "Namn" """Namnet på den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit.orgUnitName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon" """Telefon till organisationsenhet."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit.orgUnitTelecom, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit.orgUnitEmail 0..1 SEEHDSRivString "E-post" """E-post till organisationsenhet."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit.orgUnitEmail, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit.orgUnitAddress 0..1 SEEHDSRivString "Postadress" """Postadress för den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit.orgUnitAddress, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit.orgUnitLocation 0..1 SEEHDSRivString "Plats/ort" """Text som anger namnet på plats eller ort för organisationens fysiska placering."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalOrgUnit.orgUnitLocation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalCareUnitHSAId 0..0 SEEHDSRivString "HSA-id för vårdenhet" """Ska ej anges."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalCareUnitHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalCareGiverHSAId 0..0 SEEHDSRivString "HSA-id för vårdgivare" """Ska ej anges."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.prescriber.healthcareProfessionalCareGiverHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator 0..1 BackboneElement "'Utvärderat av' — person som utvärderat utfallet" """
    ”Utvärderat av”. Den hälso- och sjukvårdsperson/-enhet som utvärderat utfallet av ordinationen/förskrivningen.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.authorTime 1..1 SEEHDSRivTimeStamp "Faktisk utvärderingstidpunkt" """
    Utvärderingstidpunkt (faktisk utvärderingstidpunkt). Tidpunkt vid vilken ordinationen har utvärderats.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.authorTime, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalHSAId 0..1 SEEHDSRivString "Utvärderande persons HSA-id" """Utvärderande persons HSA-id."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalName 0..1 SEEHDSRivString "Namn på utvärderande person" """Namn på utvärderande person. Om tillgängligt ska detta anges."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalRoleCode 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Utvärderande persons befattning" """
    Information om utvärderande persons befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas, se referens [R6].
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalRoleCode, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalOrgUnit 0..1 BackboneElement "Utvärderande persons organisation" """Den organisation som utvärderande person är uppdragstagare på."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalOrgUnit, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalOrgUnit.orgUnitHSAId 0..1 SEEHDSRivString "HSA-id" """
    HSA-id för organisationsenhet. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet).
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalOrgUnit.orgUnitHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalOrgUnit.orgUnitName 0..1 SEEHDSRivString "Namn" """Namnet på den organisation som utvärderande person är uppdragstagare på."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalOrgUnit.orgUnitName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalOrgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till organisationsenhet" """Telefon till organisationsenhet."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalOrgUnit.orgUnitTelecom, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalOrgUnit.orgUnitEmail 0..1 SEEHDSRivString "E-post till organisationsenhet" """E-post till organisationsenhet."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalOrgUnit.orgUnitEmail, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalOrgUnit.orgUnitAddress 0..1 SEEHDSRivString "Postadress till organisationsenhet" """Postadress för den organisation som utvärderande person är uppdragstagare på."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalOrgUnit.orgUnitAddress, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalOrgUnit.orgUnitLocation 0..1 SEEHDSRivString "Plats för organisationsenhet" """Text som anger namnet på plats eller ort för organisationens fysiska placering."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalOrgUnit.orgUnitLocation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalCareUnitHSAId 0..0 SEEHDSRivString "HSA-id för vårdenhet" """Ska ej anges."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalCareUnitHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalCareGiverHSAId 0..0 SEEHDSRivString "HSA-id för vårdgivare" """Ska ej anges."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.evaluator.healthcareProfessionalCareGiverHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.startOfFirstTreatment 0..1 SEEHDSRivTimeStamp "Första insättningstidpunkt (beräknad från ordinationskedjan)" """
    Första insättningstidpunkt. Beräknas som insättningstidpunkt för första ordinationen i ordinationskedjan.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.startOfFirstTreatment, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.startOfTreatment 0..1 SEEHDSRivTimeStamp "Insättningstidpunkt. Villkor (Regel 1.8): Obligatorisk om typeOfPrescription = 'I' (insättning)." """
    Insättningstidpunkt. Datum då patienten ska börja ta sitt läkemedel/läkemedlet ska administreras för första gången. Vid ordinationstyp ”Insättning” sätts detta till samma som registreringstidpunkt (authorTime i headern) om inget annat anges här. Är obligatorisk vid ordinationstyp ”Insättning”.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.startOfTreatment, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.endOfTreatment 0..1 SEEHDSRivTimeStamp "Utsättningstidpunkt" """
    Utsättningstidpunkt. Datum då patienten ska upphöra ta sitt läkemedel/då läkemedlet ska sluta administreras. OBS, kan anges både vid ordinationer av typ ”Insättning” och ”Utsättning”.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.endOfTreatment, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.endOfTreatmentReason 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Utsättningsorsak" """Utsättningsorsak. Orsak som ordinatör anger för utsättning."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.endOfTreatmentReason, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.selfMedication 1..1 SEEHDSRivBoolean "Anger om ordination är utfärdad av patienten själv" """Egenmedicinering. Anger om ordinationen är utfärdad av patienten själv"""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.selfMedication, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug 0..1 BackboneElement "Läkemedelsval (ett av: unstructured/merchandise/drugArticle/drug/generics)" """
    OBS: Ett och endast ett av följande alternativ ska anges.
    ASSUME-ACT-003: XOR-villkor kan inte uttryckas direkt i FSH-kardinaliteten (alla är 0..1).
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.comment 0..1 SEEHDSRivString "Kommentar om läkemedelsval" """
    Kommentar om läkemedelsval. Text som innehåller en kommentar till det ordinerade läkemedlet. Fältet kan användas för att specificera ytterligare läkemedel eller läkemedelsnära produkter, t.ex. i samband med spädning och infusion där läkemedlet består av en huvudingrediens men där spädningsvätskor eller motsvarande också kan behöva anges.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.comment, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.unstructuredDrugInformation 0..1 BackboneElement "Fritextval (extemporeberedning, licensläkemedel m.m.)" """Fritextval. Används för extemporeberedning, licensläkemedel etc."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.unstructuredDrugInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.unstructuredDrugInformation.unstructuredInformation 1..1 SEEHDSRivString "Fritextbeskrivning" """Fritextbeskrivning."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.unstructuredDrugInformation.unstructuredInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.merchandise 0..1 BackboneElement "Handelsvara" """Handelsvara."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.merchandise, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.merchandise.articleNumber 1..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Varunummer (från SIL)" """
    Varunummer. Från SIL. Identifierare för ordinerad handelsvara (exempel: spruta). Bör anges med id ur Apotekets varunummerregister. OID: 1.2.752.129.2.2.3.1.1. Får ej anges för läkemedel.
    Enligt TKB i detta sammanhang: code 1..1, codeSystem 1..1, displayName 1..1, originalText 0..0.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.merchandise.articleNumber, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drugArticle 0..1 BackboneElement "Läkemedelsartikel" """Läkemedelsartikel."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drugArticle, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drugArticle.nplPackId 1..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "NPL pack-id (OID 1.2.752.129.2.1.5.2)" """
    NPL pack-id. Unik identifierare enligt NPL för läkemedelsvaran. Satt om varunummer beskriver en godkänd läkemedelsvara. Kan vara satt om varunummer beskriver en licensvara. OID: 1.2.752.129.2.1.5.2.
    Enligt TKB i detta sammanhang: code 1..1, codeSystem 1..1, displayName 1..1, originalText 0..0.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drugArticle.nplPackId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug 0..1 BackboneElement "Läkemedelsprodukt" """Läkemedelsprodukt."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.nplId 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "NPL-id (OID 1.2.752.129.2.1.5.1)" """
    NPL-id. Nationellt Produktregister för Läkemedelsprodukter. OID: 1.2.752.129.2.1.5.1. Alla producenter av kontraktet ska skicka code, codeSystem samt displayName. Antingen nplId eller atcCode måste anges.
    Enligt TKB i detta sammanhang: code 1..1, codeSystem 1..1, displayName 1..1, originalText 0..0.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.nplId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.atcCode 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "ATC-kod (OID 1.2.752.129.2.2.3.1.1)" """
    ATC-kod. atcKod + atcKodBeskrivning i SIL. Klassificeringskod för läkemedlet på sjuställig nivå. OID: 1.2.752.129.2.2.3.1.1. Underhålls av WHO Collaborating Centre for Drug Statistics Methodology, Oslo, Norge http://www.whocc.no/atcddd/ I Sverige oklart vilken instans som ansvarar men Läkemedelsverket har övergripande ansvar för läkemedelsfrågor www.lakemedelsverket.se/ ATC-kod, (Anatomic Therapeutic Chemical classification system), är ett klassificeringssystem för läkemedel. Läkemedlen indelas i olika grupper efter indikationsområde. Antingen nplId eller atcCode måste anges.
    Enligt TKB i detta sammanhang: code 1..1, codeSystem 1..1, displayName 1..1, originalText 0..0.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.atcCode, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.routeOfAdministration 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Administreringssätt" """Administreringssätt. Hur produkten ska intas/administreras. Kan anges med SNOMED-kod."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.routeOfAdministration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.pharmaceuticalForm 0..1 SEEHDSRivString "Läkemedelsform (t.ex. Tablett)" """Läkemedelsform enligt SIL, t.ex Tablett"""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.pharmaceuticalForm, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.strength 0..1 SEEHDSRivDecimal "Styrka (t.ex. 20.0)" """
    Styrka enligt SIL, t.ex 20.0 I de fall läkemedlet är ett kombinationspreparat anges styrka (värde) för substans 1.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.strength, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.strengthUnit 0..1 SEEHDSRivString "Enhet på styrka (t.ex. mg)" """
    Enhet på styrka enligt SIL, t.ex mg. I de fall läkemedlet är ett kombinationspreparat anges enhet för substans 1, snedstreck, styrka (värde) för substans 2, enhet för substans 2. Exempel: ”mg/12.5 mg”
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.drug.strengthUnit, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics 0..1 BackboneElement "Generiskt läkemedelsval" """Generiskt läkemedelsval."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.substance 0..1 SEEHDSRivString "Substansgrupp" """
    Substansgrupp. Text som anger namn på den grupp som innehåller den läkemedel med den substans som önskas i aktuell läkemedelsordination.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.substance, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.strength 0..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "Önskad styrka" """
    Styrka. Önskad styrka på det generiska läkemedel som önskas i aktuell läkemedelsordination.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.strength, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.form 0..1 SEEHDSRivString "Läkemedelsform" """
    Läkemedelsform. Text som anger namn på den grupp som innehåller de läkemedel med den läkemedelsform som önskas i aktuell läkemedelsordination
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.generics.form, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage 0..* BackboneElement "Dosering" """
    Dosering. Socialstyrelsens termbank: Terminologirådet; uppgift om mängd och periodicitet. setDosage (fastdosering), maxiumumDosage (maxdosering) och conditionalDosage (villkorsdosering) anger samtliga mängd och periodicitet under en avgränsad tid, men med olika syfte. Normalt består en dosering av ett av dessa val men den kan även bestå av flera stycken, t.ex. vid upp- och nedtrappning av läkemedel. Dessa följer då varandra i tiden och utgör tillsammans den kompletta doseringen. De tre angivna attributen kan alltså, men behöver inte, förekomma samtidigt. Däremot måste minst ett av attributen fast dosering eller villkorsdosering alltid anges. Anges ej vid ordinationstyp Utsättning.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment 0..1 BackboneElement "Behandlingstid" """Behandlingstid."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment.treatmentInterval 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "Tidsintervall för behandling (PQIntervalType)" """
    Behandlingstid. Tidsintervall under vilket läkemedlet ska användas enligt ordination. Exempel: 5-6 veckor.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment.treatmentInterval, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment.isMaximumTreatmentTime 1..1 SEEHDSRivBoolean "Om true: maximalt tillåten tid" """
    Logiskt villkor som anger om attributet behandlingstid avser den maximala tid som läkemedlet får användas. Sant = Behandlingstiden är en maxtid Falskt = Behandlingstiden är inte en maxtid.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.lengthOfTreatment.isMaximumTreatmentTime, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.dosageInstruction 1..1 SEEHDSRivString "Doseringsanvisning" """
    Doseringsanvisning. Källa: Socialstyrelsens termbank: Terminologirådet; beskrivning av dosering, användning och ändamål riktad till patient. Text som beskriver doseringen.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.dosageInstruction, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.unitDose 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Doseringsenhet" """
    Doseringsenhet. Kod som anger den enhet som doseringen avser. Exempel: tablett, ml, droppe I dagsläget existerar ingen kvalitetssäkrad kodifierad förteckning över doseringsenheter, men kan anges med SNOMED-kod. Via SIL kan doseringsenhet som text erhållas för vissa läkemedel.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.unitDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.shortNotation 0..1 SEEHDSRivString "Kortnotation, t.ex. '1x2'" """Kortnotation. Text som ger en kort beskrivning av doseringen. Exempel: 1x2"""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.shortNotation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage 0..1 BackboneElement "Fastdosering" """Dosering där ordinatören har bestämt mängd och periodicitet."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.frequencyDosage 0..1 BackboneElement "frequencyDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "frequency"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.periodDosage 0..1 BackboneElement "periodDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage 0..1 BackboneElement "rampedDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.doseStep 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "doseStep"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.doseStep, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.timeStep 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "timeStep"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.timeStep, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart 1..1 BackboneElement "rampStart"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage 0..1 BackboneElement "frequencyDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "frequency"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage 0..1 BackboneElement "periodDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.singleDose 0..1 BackboneElement "singleDose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.time 0..1 SEEHDSRivTimeStamp "time" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.unstructuredDosageInformation 0..1 BackboneElement "unstructuredDosageInformation"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.unstructuredDosageInformation.text 1..1 SEEHDSRivString "text"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampStart.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd 1..1 BackboneElement "rampEnd"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage 0..1 BackboneElement "frequencyDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "frequency"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage 0..1 BackboneElement "periodDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose 0..1 BackboneElement "singleDose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.time 0..1 SEEHDSRivTimeStamp "time" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.unstructuredDosageInformation 0..1 BackboneElement "unstructuredDosageInformation"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text 1..1 SEEHDSRivString "text"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.singleDose 0..1 BackboneElement "singleDose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.singleDose.time 0..1 SEEHDSRivTimeStamp "time" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.unstructuredDosageInformation 0..1 BackboneElement "unstructuredDosageInformation"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.unstructuredDosageInformation.text 1..1 SEEHDSRivString "text"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.setDosage.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage 0..1 BackboneElement "Maxdosering" """Den högsta tillåtna mängden under en viss period."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.frequencyDosage 0..1 BackboneElement "frequencyDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "frequency"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.periodDosage 0..1 BackboneElement "periodDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage 0..1 BackboneElement "rampedDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.doseStep 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "doseStep"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.doseStep, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.timeStep 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "timeStep"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.timeStep, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart 1..1 BackboneElement "rampStart"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage 0..1 BackboneElement "frequencyDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "frequency"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage 0..1 BackboneElement "periodDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose 0..1 BackboneElement "singleDose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.time 0..1 SEEHDSRivTimeStamp "time" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.unstructuredDosageInformation 0..1 BackboneElement "unstructuredDosageInformation"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.unstructuredDosageInformation.text 1..1 SEEHDSRivString "text"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampStart.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd 1..1 BackboneElement "rampEnd"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage 0..1 BackboneElement "frequencyDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "frequency"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage 0..1 BackboneElement "periodDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose 0..1 BackboneElement "singleDose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.time 0..1 SEEHDSRivTimeStamp "time" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.unstructuredDosageInformation 0..1 BackboneElement "unstructuredDosageInformation"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text 1..1 SEEHDSRivString "text"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.singleDose 0..1 BackboneElement "singleDose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.singleDose.time 0..1 SEEHDSRivTimeStamp "time" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.unstructuredDosageInformation 0..1 BackboneElement "unstructuredDosageInformation"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.unstructuredDosageInformation.text 1..1 SEEHDSRivString "text"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.maximumDosage.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage 0..1 BackboneElement "Villkorsdosering" """Ordinerad mängd och periodicitet som gäller om ett visst villkor är uppfyllt."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.conditionDescription 1..1 SEEHDSRivString "Villkorstext" """
    Villkorstext. Text som anger villkor kopplat till en villkorsdosering, t.ex. "vid behov". Det finns en diskrepans i multipliciteten för detta attribut mellan tjänstekontraktsbeskrivningen och XSD-schemat. Se arkitekturella beslut för denna domän för mer information om detta.
    TKB anger kardinaliteten 0..1, men XSD:n kräver 1..1. Modellen följer XSD:n.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.conditionDescription, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage 0..1 BackboneElement "Frekvensdosering" """
    Frekvensdosering. Beskriver dosering uttryckt som mängd och periodicitet i form av ett antal intag eller appliceringar under en viss tidsenhet, dvs. frekvensen.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex." """Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter"""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex." """
    Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen (3/dag).
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage 0..1 BackboneElement "Perioddosering" """
    Perioddosering. Beskriver dosering uttryckt som mängd och periodicitet i form av den tid som ska flyta mellan varje intag eller applicering.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex." """Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter"""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, …" """
    Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme (1/6 tim).
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage 0..1 BackboneElement "Rampdosering" """
    Rampdosering. Innehåller uppgifter om en successiv ökning eller minskning av läkemedelsdosen under en angiven tid. Detta innebär i praktiken att en trappstegsfunktion skapas i den slutliga doseringsanvisningen.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.doseStep 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "Den mängd som dosen ska ökas eller minskas med vid varje tidssteg (vid varje ”trappsteg”)" """
    Den mängd som dosen ska ökas eller minskas med vid varje tidssteg (vid varje ”trappsteg”).
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.doseStep, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.timeStep 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "Den tid som ska förflyta mellan varje ändring av dosen (längden på ”trappsteget”)" """Den tid som ska förflyta mellan varje ändring av dosen (längden på ”trappsteget”)."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.timeStep, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart 1..1 BackboneElement "Den dosering som gäller vid doseringsstegets start" """Den dosering som gäller vid doseringsstegets start."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage 0..1 BackboneElement "Frekvensdosering" """
    Frekvensdosering. Beskriver dosering uttryckt som mängd och periodicitet i form av ett antal intag eller appliceringar under en viss tidsenhet, dvs. frekvensen.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex." """den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter"""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex." """
    Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen (3/dag).
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage 0..1 BackboneElement "Perioddosering" """
    Perioddosering. Beskriver dosering uttryckt som mängd och periodicitet i form av den tid som ska flyta mellan varje intag eller applicering.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex." """Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter"""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, …" """
    Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme (1/6 tim).
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose 0..1 BackboneElement "Engångsdosering" """Engångsdosering. Beskriver att intag eller applicering ska ske vid ett enda tillfälle."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "Den mängd läkemedel som ska intas eller appliceras" """Den mängd läkemedel som ska intas eller appliceras."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.time 0..1 SEEHDSRivTimeStamp "Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras" """
    Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Tidpunkt kan anges som en specifik dag, (datum, veckodag eller antal dagar från Doseringsstegets början) eller som ett tillfälle eller klockslag inom dygnet eller som en kombination av dessa. Om tid utelämnas tolkas det som "omgående".
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation 0..1 BackboneElement "Fritextdosering" """
    Beskriver en dosering i klartext. Denna doseringstyp används för de fall då doseringen är för komplex eller av andra skäl inte kan anges inom ramen för någon av de andra doseringstyperna
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation.text 1..1 SEEHDSRivString "Dosering angiven i klartext"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd 1..1 BackboneElement "Den dosering som gäller vid doseringsstegets slut" """Den dosering som gäller vid doseringsstegets slut."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage 0..1 BackboneElement "Frekvensdosering" """
    Frekvensdosering. Beskriver dosering uttryckt som mängd och periodicitet i form av ett antal intag eller appliceringar under en viss tidsenhet, dvs. frekvensen.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex." """Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter"""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex." """
    Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen (3/dag).
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage 0..1 BackboneElement "Perioddosering" """
    Perioddosering. Beskriver dosering uttryckt som mängd och periodicitet i form av den tid som ska flyta mellan varje intag eller applicering.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex." """Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter"""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, …" """
    Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme (1/6 tim).
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose 0..1 BackboneElement "Engångsdosering" """Engångsdosering. Beskriver att intag eller applicering ska ske vid ett enda tillfälle."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "Den mängd läkemedel som ska intas eller appliceras" """Den mängd läkemedel som ska intas eller appliceras."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.time 0..1 SEEHDSRivTimeStamp "Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras" """
    Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Tidpunkt kan anges som en specifik dag, (datum, veckodag eller antal dagar från Doseringsstegets början) eller som ett tillfälle eller klockslag inom dygnet eller som en kombination av dessa. Om tid utelämnas tolkas det som "omgående".
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation 0..1 BackboneElement "Fritextdosering" """
    Beskriver en dosering i klartext. Denna doseringstyp används för de fall då doseringen är för komplex eller av andra skäl inte kan anges inom ramen för någon av de andra doseringstyperna
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text 1..1 SEEHDSRivString "Dosering angiven i klartext"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose 0..1 BackboneElement "Engångsdosering" """Engångsdosering. Beskriver att intag eller applicering ska ske vid ett enda tillfälle."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "Den mängd läkemedel som ska intas eller appliceras" """Den mängd läkemedel som ska intas eller appliceras."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose.time 0..1 SEEHDSRivTimeStamp "Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras" """
    Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Tidpunkt kan anges som en specifik dag, (datum, veckodag eller antal dagar från Doseringsstegets början) eller som ett tillfälle eller klockslag inom dygnet eller som en kombination av dessa. Om tid utelämnas tolkas det som "omgående".
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.unstructuredDosageInformation 0..1 BackboneElement "Fritextdosering" """
    Beskriver en dosering i klartext. Denna doseringstyp används för de fall då doseringen är för komplex eller av andra skäl inte kan anges inom ramen för någon av de andra doseringstyperna
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.unstructuredDosageInformation.text 1..1 SEEHDSRivString "Dosering angiven i klartext"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.drug.dosage.conditionalDosage.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization 0..1 BackboneElement "Förskrivning" """
    Se XSD DispensationAuthorizationType för fullständig struktur.
    Nyckelfält: dispensationAuthorizationId (1..1), dispensationAuthorizer (1..1,
    careUnitHSAId/careGiverHSAId=0..0), prescriptionSignatura (1..1),
    drug (0..1 XOR: unstructured/merchandise/drugArticle/drug/generics, samma mönster som ordination),
    totalAmount/packageUnit (båda eller ingetdera — Regel 1.8), validUntil (0..1),
    nonReplaceable (0..1, enum Prescriber/Patient).
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizationId 1..1 SEEHDSRivIITypeActivityprescriptionActoutcome2 "Förskrivnings-id" """Förskrivnings-id. Unik identifierare för aktuell förskrivning"""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizationId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.validUntil 0..1 SEEHDSRivDate "Sista giltighetsdag" """
    Sista giltighetsdag. Expeditionsunderlagets sista giltighetsdag.
    Format enligt XSD (DateType): ÅÅÅÅMMDD.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.validUntil, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.receivingPharmacy 0..1 SEEHDSRivIITypeActivityprescriptionActoutcome2 "Mottagande apotek" """
    Mottagande apotek. Apoteks-id (GLN eller EAN) vid direktadressering av expedieringsunderlag.
    Enligt TKB i detta sammanhang: extension 1..1.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.receivingPharmacy, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.minimumDispensationInterval 0..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "Utlämningsintervall" """
    Utlämningsintervall. Minsta tidsintervall, i dagar, som ska förflyta mellan två utlämningar. Minsta värde: 1 dag Största värde: 12 månader.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.minimumDispensationInterval, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.totalAmount 0..1 SEEHDSRivDecimal "Totalmängd" """
    Totalmängd. Den totala mängd (i förpackningsenheter) av ordinerat läkemedel som får lämnas ut enligt denna förskrivning oavsett om det sker vid ett eller flera tillfällen. Om totalAmount anges måste också packageUnit anges.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.totalAmount, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.packageUnit 0..1 SEEHDSRivString "Förpackningsenhet" """
    Förpackningsenhet. Text som anger den enhet som används för att uttrycka mängd i de förpackningar som säljs. Exempel: styck, ml, mg. Om packageUnit anges måste också totalAmount anges.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.packageUnit, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.distributionMethod 0..1 SEEHDSRivString "Distributionssätt" """
    Distributionssätt. Text som beskriver hur det förskrivna läkemedlet ska distribueras till vård- och omsorgstagaren. Exempel Apodos, Hemleverans, Hämtas.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.distributionMethod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer 1..1 BackboneElement "Förskrivare" """Förskrivare. Hälso- och sjukvårdspersonal med förskrivningsrätt."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.authorTime 1..1 SEEHDSRivTimeStamp "Beslutstidpunkt/förskrivningsstidpunkt" """
    Beslutstidpunkt/förskrivningsstidpunkt. Tidpunkt då beslut fattas om förskrivning.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.authorTime, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.healthcareProfessionalHSAId 0..1 SEEHDSRivString "Förskrivarens HSA-id" """Förskrivarens HSA-id."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.healthcareProfessionalHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.healthcareProfessionalName 0..1 SEEHDSRivString "Namn på förskrivaren" """Namn på förskrivaren. Om tillgängligt ska detta anges."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.healthcareProfessionalName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.healthcareProfessionalRoleCode 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Information om förskrivarens befattning" """
    Information om förskrivarens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas, se referens [R6].
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.healthcareProfessionalRoleCode, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.healthcareProfessionalOrgUnit 0..1 BackboneElement "Den organisation som förskrivaren är uppdragstagare på" """Den organisation som förskrivaren är uppdragstagare på."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.healthcareProfessionalOrgUnit, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.healthcareProfessionalOrgUnit.orgUnitHSAId 0..1 SEEHDSRivString "HSA-id för organisationsenhet" """
    HSA-id för organisationsenhet. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet).
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.healthcareProfessionalOrgUnit.orgUnitHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.healthcareProfessionalOrgUnit.orgUnitName 0..1 SEEHDSRivString "Namnet på den organisation som Hälso- och sjukvårdspersonalen är uppdragstagare på" """Namnet på den organisation som Hälso- och sjukvårdspersonalen är uppdragstagare på."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.healthcareProfessionalOrgUnit.orgUnitName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.healthcareProfessionalOrgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till organisationsenhet" """Telefon till organisationsenhet."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.healthcareProfessionalOrgUnit.orgUnitTelecom, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.healthcareProfessionalOrgUnit.orgUnitEmail 0..1 SEEHDSRivString "E-post till organisationsenhet" """E-post till organisationsenhet."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.healthcareProfessionalOrgUnit.orgUnitEmail, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.healthcareProfessionalOrgUnit.orgUnitAddress 0..1 SEEHDSRivString "Postadress för den organisation som förskrivaren är uppdragstagare på" """Postadress för den organisation som förskrivaren är uppdragstagare på."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.healthcareProfessionalOrgUnit.orgUnitAddress, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.healthcareProfessionalOrgUnit.orgUnitLocation 0..1 SEEHDSRivString "Text som anger namnet på plats eller ort för organisationens fysiska placering" """Text som anger namnet på plats eller ort för organisationens fysiska placering."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.healthcareProfessionalOrgUnit.orgUnitLocation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.healthcareProfessionalCareUnitHSAId 0..0 SEEHDSRivString "Ska ej anges" """Ska ej anges."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.healthcareProfessionalCareUnitHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.healthcareProfessionalCareGiverHSAId 0..0 SEEHDSRivString "Ska ej anges" """Ska ej anges."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizer.healthcareProfessionalCareGiverHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizerComment 0..1 SEEHDSRivString "Förskrivares kommentar" """Förskrivares kommentar. Kommentar till apoteket."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.dispensationAuthorizerComment, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.firstDispensationBefore 0..1 SEEHDSRivDate "Första uttag före" """
    Första uttag före. Datum före vilket första uttag av läkemedel måste göras.
    Format enligt XSD (DateType): ÅÅÅÅMMDD.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.firstDispensationBefore, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.prescriptionSignatura 1..1 SEEHDSRivString "Doseringstext på recept" """Doseringstext på recept. Instruktion till patienten."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.prescriptionSignatura, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.nonReplaceable 0..1 SEEHDSRivString "Bytes ej" """
    Bytes ej. Anger att ordinatör eller patient beslutat att förskriven artikel ej får bytas ut. Tillåtna värden: Prescriber, Patient Lämnas fältet tomt antas det betyda att läkemedlet får bytas ut.
    Tillåtna värden enligt XSD: Prescriber, Patient.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.nonReplaceable, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug 0..1 BackboneElement "Läkemedelsval" """
    Läkemedelsval. OBS: Ett och endast ett av följande alternativ: unstructuredDrugInformation (fritextval/extemporeberedning) merchandise (handelsvara) drugArticle (läkemedelsartikel) drug (läkemedelsprodukt) generics (generika/utbytesgrupp)
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.comment 0..1 SEEHDSRivString "Kommentar om läkemedelsval" """
    Kommentar om läkemedelsval. Text som innehåller en kommentar till det ordinerade läkemedlet. Fältet kan användas för att specificera ytterligare läkemedel eller läkemedelsnära produkter, t.ex. i samband med spädning och infusion där läkemedlet består av en huvudingrediens men där spädningsvätskor eller motsvarande också kan behöva anges.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.comment, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.unstructuredDrugInformation 0..1 BackboneElement "Fritextval" """Fritextval. Används för extemporeberedning, licensläkemedel etc."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.unstructuredDrugInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.unstructuredDrugInformation.unstructuredInformation 1..1 SEEHDSRivString "Fritextbeskrivning" """Fritextbeskrivning."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.unstructuredDrugInformation.unstructuredInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.merchandise 0..1 BackboneElement "Handelsvara" """Handelsvara."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.merchandise, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.merchandise.articleNumber 1..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Varunummer" """
    Varunummer. Från SIL. Identifierare för ordinerad handelsvara (exempel: spruta). Bör anges med id ur Apotekets varunummerregister. OID: 1.2.752.129.2.2.3.1.1. Får ej anges för läkemedel.
    Enligt TKB i detta sammanhang: code 1..1, codeSystem 1..1, displayName 1..1, originalText 0..0.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.merchandise.articleNumber, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drugArticle 0..1 BackboneElement "Läkemedelsartikel" """Läkemedelsartikel."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drugArticle, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drugArticle.nplPackId 1..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "NPL pack-id" """
    NPL pack-id. Unik identifierare enligt NPL för läkemedelsvaran. Satt om varunummer beskriver en godkänd läkemedelsvara. Kan vara satt om varunummer beskriver en licensvara. OID: 1.2.752.129.2.1.5.2.
    Enligt TKB i detta sammanhang: code 1..1, codeSystem 1..1, displayName 1..1, originalText 0..0.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drugArticle.nplPackId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug 0..1 BackboneElement "Läkemedelsprodukt" """Läkemedelsprodukt."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.nplId 1..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "NPL-id" """
    NPL-id. Nationellt Produktregister för Läkemedelsprodukter. OID: 1.2.752.129.2.1.5.1.
    Enligt TKB i detta sammanhang: code 1..1, codeSystem 1..1, displayName 1..1, originalText 0..0.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.nplId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.atcCode 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "ATC-kod" """
    ATC-kod. atcKod + atcKodBeskrivning i SIL. Klassificeringskod för läkemedlet på sjuställig nivå. OID: 1.2.752.129.2.2.3.1.1. Underhålls av WHO Collaborating Centre for Drug Statistics Methodology, Oslo, Norge http://www.whocc.no/atcddd/ I Sverige oklart vilken instans som ansvarar men Läkemedelsverket har övergripande ansvar för läkemedelsfrågor www.lakemedelsverket.se/ ATC-kod, (Anatomic Therapeutic Chemical classification system), är ett klassificeringssystem för läkemedel. Läkemedlen indelas i olika grupper efter indikationsområde.
    Enligt TKB i detta sammanhang: code 1..1, codeSystem 1..1, displayName 1..1, originalText 0..0.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.atcCode, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.routeOfAdministration 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Administreringssätt" """Administreringssätt. Hur produkten ska intas/administreras. Kan anges med SNOMED-kod."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.routeOfAdministration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.pharmaceuticalForm 0..1 SEEHDSRivString "Läkemedelsform enligt SIL, t.ex Tablett"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.pharmaceuticalForm, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.strength 0..1 SEEHDSRivDecimal "Styrka enligt SIL, t.ex 20.0" """I de fall läkemedlet är ett kombinationspreparat anges styrka (värde) för substans 1."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.strength, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.strengthUnit 0..1 SEEHDSRivString "Enhet på styrka enligt SIL, t.ex mg." """
    Enhet på styrka enligt SIL, t.ex mg. I de fall läkemedlet är ett kombinationspreparat anges enhet för substans 1, snedstreck, styrka (värde) för substans 2, enhet för substans 2. Exempel: ”mg/12.5 mg”
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.drug.strengthUnit, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics 0..1 BackboneElement "Generiskt läkemedelsval" """Generiskt läkemedelsval."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.substance 0..1 SEEHDSRivString "Substansgrupp" """
    Substansgrupp. Text som anger namn på den grupp som innehåller den läkemedel med den substans som önskas i aktuell läkemedelsordination.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.substance, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.strength 0..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "Styrka" """
    Styrka. Önskad styrka på det generiska läkemedel som önskas i aktuell läkemedelsordination.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.strength, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.form 0..1 SEEHDSRivString "Läkemedelsform" """
    Läkemedelsform. Text som anger namn på den grupp som innehåller de läkemedel med den läkemedelsform som önskas i aktuell läkemedelsordination
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.generics.form, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage 0..* BackboneElement "dosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.lengthOfTreatment 0..1 BackboneElement "lengthOfTreatment"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.lengthOfTreatment, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.lengthOfTreatment.treatmentInterval 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "treatmentInterval"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.lengthOfTreatment.treatmentInterval, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.lengthOfTreatment.isMaximumTreatmentTime 1..1 SEEHDSRivBoolean "isMaximumTreatmentTime"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.lengthOfTreatment.isMaximumTreatmentTime, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.dosageInstruction 0..1 SEEHDSRivString "dosageInstruction"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.dosageInstruction, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.unitDose 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "unitDose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.unitDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.shortNotation 0..1 SEEHDSRivString "shortNotation"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.shortNotation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage 0..1 BackboneElement "setDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.frequencyDosage 0..1 BackboneElement "frequencyDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "frequency"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.periodDosage 0..1 BackboneElement "periodDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage 0..1 BackboneElement "rampedDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.doseStep 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "doseStep"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.doseStep, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.timeStep 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "timeStep"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.timeStep, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart 1..1 BackboneElement "rampStart"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage 0..1 BackboneElement "frequencyDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "frequency"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage 0..1 BackboneElement "periodDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.singleDose 0..1 BackboneElement "singleDose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.time 0..1 SEEHDSRivTimeStamp "time" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.unstructuredDosageInformation 0..1 BackboneElement "unstructuredDosageInformation"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.unstructuredDosageInformation.text 1..1 SEEHDSRivString "text"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampStart.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd 1..1 BackboneElement "rampEnd"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage 0..1 BackboneElement "frequencyDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "frequency"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage 0..1 BackboneElement "periodDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose 0..1 BackboneElement "singleDose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.time 0..1 SEEHDSRivTimeStamp "time" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.unstructuredDosageInformation 0..1 BackboneElement "unstructuredDosageInformation"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text 1..1 SEEHDSRivString "text"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.singleDose 0..1 BackboneElement "singleDose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.singleDose.time 0..1 SEEHDSRivTimeStamp "time" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.unstructuredDosageInformation 0..1 BackboneElement "unstructuredDosageInformation"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.unstructuredDosageInformation.text 1..1 SEEHDSRivString "text"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.setDosage.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage 0..1 BackboneElement "maximumDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.frequencyDosage 0..1 BackboneElement "frequencyDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "frequency"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.periodDosage 0..1 BackboneElement "periodDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage 0..1 BackboneElement "rampedDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.doseStep 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "doseStep"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.doseStep, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.timeStep 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "timeStep"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.timeStep, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart 1..1 BackboneElement "rampStart"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage 0..1 BackboneElement "frequencyDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "frequency"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage 0..1 BackboneElement "periodDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose 0..1 BackboneElement "singleDose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.time 0..1 SEEHDSRivTimeStamp "time" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.unstructuredDosageInformation 0..1 BackboneElement "unstructuredDosageInformation"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.unstructuredDosageInformation.text 1..1 SEEHDSRivString "text"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampStart.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd 1..1 BackboneElement "rampEnd"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage 0..1 BackboneElement "frequencyDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "frequency"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage 0..1 BackboneElement "periodDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose 0..1 BackboneElement "singleDose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.time 0..1 SEEHDSRivTimeStamp "time" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.unstructuredDosageInformation 0..1 BackboneElement "unstructuredDosageInformation"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text 1..1 SEEHDSRivString "text"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.singleDose 0..1 BackboneElement "singleDose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.singleDose.time 0..1 SEEHDSRivTimeStamp "time" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.unstructuredDosageInformation 0..1 BackboneElement "unstructuredDosageInformation"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.unstructuredDosageInformation.text 1..1 SEEHDSRivString "text"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.maximumDosage.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage 0..1 BackboneElement "conditionalDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.conditionDescription 1..1 SEEHDSRivString "conditionDescription"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.conditionDescription, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.frequencyDosage 0..1 BackboneElement "frequencyDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "frequency"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.periodDosage 0..1 BackboneElement "periodDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage 0..1 BackboneElement "rampedDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.doseStep 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "doseStep"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.doseStep, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.timeStep 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "timeStep"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.timeStep, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart 1..1 BackboneElement "rampStart"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage 0..1 BackboneElement "frequencyDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "frequency"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage 0..1 BackboneElement "periodDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose 0..1 BackboneElement "singleDose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.time 0..1 SEEHDSRivTimeStamp "time" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation 0..1 BackboneElement "unstructuredDosageInformation"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation.text 1..1 SEEHDSRivString "text"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd 1..1 BackboneElement "rampEnd"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage 0..1 BackboneElement "frequencyDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "frequency"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage 0..1 BackboneElement "periodDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose 0..1 BackboneElement "singleDose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.time 0..1 SEEHDSRivTimeStamp "time" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation 0..1 BackboneElement "unstructuredDosageInformation"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text 1..1 SEEHDSRivString "text"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.singleDose 0..1 BackboneElement "singleDose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.singleDose.time 0..1 SEEHDSRivTimeStamp "time" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.unstructuredDosageInformation 0..1 BackboneElement "unstructuredDosageInformation"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.unstructuredDosageInformation.text 1..1 SEEHDSRivString "text"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.dispensationAuthorization.drug.dosage.conditionalDosage.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration 0..* BackboneElement "Information om administrering av läkemedel" """
    Bara administreringstillfällen som faktiskt ägt rum kan anges.
    Se XSD AdministrationType för fullständig struktur.
    Nyckelfält: administrationId (1..1), administrationTime (1..1, start/end —
    minst ett av start/end — Regel 1.8), administeringHealthcareProfessional (1..1,
    careUnitHSAId/careGiverHSAId=0..0), routeOfAdministration (0..1),
    drug (0..1 XOR), administrationComment (0..1).
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administrationId 1..1 SEEHDSRivIITypeActivityprescriptionActoutcome2 "Administrerings-id" """Administrerings-id. Unik identifierare för aktuell administrering."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administrationId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administrationTime 1..1 SEEHDSRivTimePeriodTypeActivityprescriptionActoutcome2 "Tidsintervall för läkemedelsadministreringen" """
    Tidsintervall för läkemedelsadministreringen. Om administreringen sker vid en viss tidpunkt sätts start och end till samma tidpunkt.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administrationTime, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administrationComment 0..1 SEEHDSRivString "Kommentar till administrering av vårdpersonal" """
    Kommentar till administrering av vårdpersonal. Exempelvis ”patienten kräktes 30 minuter efter administrering”.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administrationComment, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.routeOfAdministration 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Administreringssätt" """Administreringssätt. Hur produkten ska intas/administreras. Kan anges med SNOMED-kod."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.routeOfAdministration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional 1..1 BackboneElement "Information om administrerande vårdpersonal och -organisation" """Information om administrerande vårdpersonal och -organisation."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.authorTime 1..1 SEEHDSRivTimeStamp "Tidpunkt för signering av administrering" """
    Tidpunkt för signering av administrering.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.authorTime, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.healthcareProfessionalHSAId 0..1 SEEHDSRivString "Administrerande personals HSA-id" """Administrerande personals HSA-id."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.healthcareProfessionalHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.healthcareProfessionalName 0..1 SEEHDSRivString "Namn på administrerande personal" """Namn på administrerande personal. Om tillgängligt ska detta anges."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.healthcareProfessionalName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.healthcareProfessionalRoleCode 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Information om administrerande persons befattning" """
    Information om administrerande persons befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas, se referens [R6].
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.healthcareProfessionalRoleCode, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.healthcareProfessionalOrgUnit 0..1 BackboneElement "Den organisation som administrerande personal är uppdragstagare på" """Den organisation som administrerande personal är uppdragstagare på."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.healthcareProfessionalOrgUnit, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId 0..1 SEEHDSRivString "HSA-id för organisationsenhet" """
    HSA-id för organisationsenhet. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet).
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName 0..1 SEEHDSRivString "Namnet på den organisation som administrerande personal är uppdragstagare på" """Namnet på den organisation som administrerande personal är uppdragstagare på."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till organisationsenhet" """Telefon till organisationsenhet."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail 0..1 SEEHDSRivString "E-post till organisationsenhet" """E-post till organisationsenhet."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress 0..1 SEEHDSRivString "Postadress för den organisation som administrerande personal är uppdragstagare på" """Postadress för den organisation som administrerande personal är uppdragstagare på."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation 0..1 SEEHDSRivString "Text som anger namnet på plats eller ort för organisationens fysiska placering" """Text som anger namnet på plats eller ort för organisationens fysiska placering."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.healthcareProfessionalCareUnitHSAId 0..0 SEEHDSRivString "Ska ej anges" """Ska ej anges."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.healthcareProfessionalCareUnitHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.healthcareProfessionalCareGiverHSAId 0..0 SEEHDSRivString "Ska ej anges" """Ska ej anges."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.administeringHealthcareProfessional.healthcareProfessionalCareGiverHSAId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug 0..1 BackboneElement "Läkemedelsval" """
    Läkemedelsval. OBS: Ett och endast ett av följande alternativ: unstructuredDrugInformation (fritextval/extemporeberedning) merchandise (handelsvara) drugArticle (läkemedelsartikel) drug (läkemedelsprodukt) generics (generika/utbytesgrupp)
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.comment 0..1 SEEHDSRivString "Kommentar om läkemedelsval" """
    Kommentar om läkemedelsval. Text som innehåller en kommentar till det administrerade läkemedlet. Fältet kan användas för att specificera ytterligare läkemedel eller läkemedelsnära produkter, t.ex. i samband med spädning och infusion där läkemedlet består av en huvudingrediens men där spädningsvätskor eller motsvarande också kan behöva anges.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.comment, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.unstructuredDrugInformation 0..1 BackboneElement "Fritextval" """Fritextval. Används för extemporeberedning, licensläkemedel etc."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.unstructuredDrugInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.unstructuredDrugInformation.unstructuredInformation 1..1 SEEHDSRivString "Fritextbeskrivning" """Fritextbeskrivning."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.unstructuredDrugInformation.unstructuredInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.merchandise 0..1 BackboneElement "Handelsvara" """Handelsvara."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.merchandise, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.merchandise.articleNumber 1..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Varunummer" """
    Varunummer. Från SIL. Identifierare för ordinerad handelsvara (exempel: spruta). Bör anges med id ur Apotekets varunummerregister. OID: 1.2.752.129.2.2.3.1.1. Får ej anges för läkemedel.
    Enligt TKB i detta sammanhang: code 1..1, codeSystem 1..1, displayName 1..1, originalText 0..0.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.merchandise.articleNumber, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drugArticle 0..1 BackboneElement "Läkemedelsartikel" """Läkemedelsartikel."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drugArticle, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drugArticle.nplPackId 1..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "NPL pack-id" """
    NPL pack-id. Unik identifierare enligt NPL för läkemedelsvaran. Satt om varunummer beskriver en godkänd läkemedelsvara. Kan vara satt om varunummer beskriver en licensvara. OID: 1.2.752.129.2.1.5.2.
    Enligt TKB i detta sammanhang: code 1..1, codeSystem 1..1, displayName 1..1, originalText 0..0.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drugArticle.nplPackId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug 0..1 BackboneElement "Läkemedelsprodukt" """Läkemedelsprodukt."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.nplId 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "NPL-id" """
    NPL-id. Nationellt Produktregister för Läkemedelsprodukter. OID: 1.2.752.129.2.1.5.1.
    Enligt TKB i detta sammanhang: code 1..1, codeSystem 1..1, displayName 1..1, originalText 0..0.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.nplId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.atcCode 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "ATC-kod" """
    ATC-kod. atcKod + atcKodBeskrivning i SIL. Klassificeringskod för läkemedlet på sjuställig nivå. OID: 1.2.752.129.2.2.3.1.1. Underhålls av WHO Collaborating Centre for Drug Statistics Methodology, Oslo, Norge http://www.whocc.no/atcddd/ I Sverige oklart vilken instans som ansvarar men Läkemedelsverket har övergripande ansvar för läkemedelsfrågor www.lakemedelsverket.se/ ATC-kod, (Anatomic Therapeutic Chemical classification system), är ett klassificeringssystem för läkemedel. Läkemedlen indelas i olika grupper efter indikationsområde.
    Enligt TKB i detta sammanhang: code 1..1, codeSystem 1..1, displayName 1..1, originalText 0..0.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.atcCode, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.routeOfAdministration 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Administreringssätt" """Administreringssätt. Hur produkten ska intas/administreras. Kan anges med SNOMED-kod."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.routeOfAdministration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.pharmaceuticalForm 0..1 SEEHDSRivString "Läkemedelsform enligt SIL, t.ex Tablett"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.pharmaceuticalForm, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.strength 0..1 SEEHDSRivDecimal "Styrka enligt SIL, t.ex 20.0" """I de fall läkemedlet är ett kombinationspreparat anges styrka (värde) för substans 1."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.strength, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.strengthUnit 0..1 SEEHDSRivString "Enhet på styrka enligt SIL, t.ex mg." """
    Enhet på styrka enligt SIL, t.ex mg. I de fall läkemedlet är ett kombinationspreparat anges enhet för substans 1, snedstreck, styrka (värde) för substans 2, enhet för substans 2. Exempel: ”mg/12.5 mg”
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.drug.strengthUnit, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics 0..1 BackboneElement "Generiskt läkemedelsval" """Generiskt läkemedelsval."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.substance 0..1 SEEHDSRivString "Substansgrupp" """
    Substansgrupp. Text som anger namn på den grupp som innehåller den läkemedel med den substans som önskas i aktuell läkemedelsordination.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.substance, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.strength 0..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "Styrka" """
    Styrka. Önskad styrka på det generiska läkemedel som önskas i aktuell läkemedelsordination.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.strength, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.form 0..1 SEEHDSRivString "Läkemedelsform" """
    Läkemedelsform. Text som anger namn på den grupp som innehåller de läkemedel med den läkemedelsform som önskas i aktuell läkemedelsordination
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.generics.form, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage 0..* BackboneElement "Dosering" """
    Dosering. Socialstyrelsens termbank: Terminologirådet; uppgift om mängd och periodicitet. setDosage (fastdosering), maxiumumDosage (maxdosering) och conditionalDosage (villkorsdosering) anger samtliga mängd och periodicitet under en avgränsad tid, men med olika syfte. Normalt består en dosering av ett av dessa val men den kan även bestå av flera stycken, t.ex. vid upp- och nedtrappning av läkemedel. Dessa följer då varandra i tiden och utgör tillsammans den kompletta doseringen. De tre angivna attributen kan alltså, men behöver inte, förekomma samtidigt. Däremot måste minst ett av attributen fast dosering eller villkorsdosering alltid anges.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.lengthOfTreatment 0..0 BackboneElement "Ska ej anges" """Ska ej anges."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.lengthOfTreatment, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.lengthOfTreatment.treatmentInterval 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "treatmentInterval"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.lengthOfTreatment.treatmentInterval, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.lengthOfTreatment.isMaximumTreatmentTime 1..1 SEEHDSRivBoolean "isMaximumTreatmentTime"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.lengthOfTreatment.isMaximumTreatmentTime, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.dosageInstruction 0..1 SEEHDSRivString "dosageInstruction"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.dosageInstruction, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.unitDose 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Doseringsenhet" """
    Doseringsenhet. Kod som anger den enhet som doseringen avser. Exempel: tablett, ml, droppe I dagsläget existerar ingen kvalitetssäkrad kodifierad förteckning över doseringsenheter, men kan anges med SNOMED-kod. Via SIL kan doseringsenhet som text erhållas för vissa läkemedel.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.unitDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.shortNotation 0..1 SEEHDSRivString "Kortnotation" """Kortnotation. Text som ger en kort beskrivning av doseringen. Exempel: 1x2"""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.shortNotation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage 0..1 BackboneElement "Fastdosering" """
    Fastdosering. Dosering där ordinatören har bestämt mängd och periodicitet, t.ex. 2 tabletter 3 gånger dagligen. Fastdosering kan utgöra Frekvensdosering, Perioddosering, Tillfällesdosering, Rampdosering, Engångsdosering och Fritextdosering. Dessa alla har det gemensamt att de anger mängd och periodicitet, men på lite olika sätt.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.frequencyDosage 0..1 BackboneElement "frequencyDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "frequency"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.periodDosage 0..1 BackboneElement "periodDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage 0..1 BackboneElement "rampedDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.doseStep 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "doseStep"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.doseStep, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.timeStep 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "timeStep"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.timeStep, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart 1..1 BackboneElement "rampStart"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage 0..1 BackboneElement "frequencyDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "frequency"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage 0..1 BackboneElement "periodDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.singleDose 0..1 BackboneElement "singleDose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.time 0..1 SEEHDSRivTimeStamp "time" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.unstructuredDosageInformation 0..1 BackboneElement "unstructuredDosageInformation"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.unstructuredDosageInformation.text 1..1 SEEHDSRivString "text"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampStart.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd 1..1 BackboneElement "rampEnd"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage 0..1 BackboneElement "frequencyDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "frequency"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage 0..1 BackboneElement "periodDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose 0..1 BackboneElement "singleDose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.time 0..1 SEEHDSRivTimeStamp "time" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.unstructuredDosageInformation 0..1 BackboneElement "unstructuredDosageInformation"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text 1..1 SEEHDSRivString "text"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.singleDose 0..1 BackboneElement "singleDose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.singleDose.time 0..1 SEEHDSRivTimeStamp "time" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.unstructuredDosageInformation 0..1 BackboneElement "unstructuredDosageInformation"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.unstructuredDosageInformation.text 1..1 SEEHDSRivString "text"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.setDosage.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage 0..1 BackboneElement "Maxdosering" """
    Maxdosering. Dosering som anger den högsta tillåtna mängden under en viss period, t.ex. högst 5 tabletter per vecka
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.frequencyDosage 0..1 BackboneElement "frequencyDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "frequency"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.periodDosage 0..1 BackboneElement "periodDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage 0..1 BackboneElement "rampedDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.doseStep 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "doseStep"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.doseStep, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.timeStep 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "timeStep"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.timeStep, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart 1..1 BackboneElement "rampStart"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage 0..1 BackboneElement "frequencyDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "frequency"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage 0..1 BackboneElement "periodDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose 0..1 BackboneElement "singleDose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.time 0..1 SEEHDSRivTimeStamp "time" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.unstructuredDosageInformation 0..1 BackboneElement "unstructuredDosageInformation"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.unstructuredDosageInformation.text 1..1 SEEHDSRivString "text"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampStart.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd 1..1 BackboneElement "rampEnd"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage 0..1 BackboneElement "frequencyDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "frequency"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage 0..1 BackboneElement "periodDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose 0..1 BackboneElement "singleDose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.time 0..1 SEEHDSRivTimeStamp "time" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.unstructuredDosageInformation 0..1 BackboneElement "unstructuredDosageInformation"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text 1..1 SEEHDSRivString "text"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.singleDose 0..1 BackboneElement "singleDose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.singleDose.time 0..1 SEEHDSRivTimeStamp "time" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.unstructuredDosageInformation 0..1 BackboneElement "unstructuredDosageInformation"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.unstructuredDosageInformation.text 1..1 SEEHDSRivString "text"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.maximumDosage.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage 0..1 BackboneElement "Villkorsdosering" """
    Villkorsdosering. Ordinerad mängd och periodicitet som gäller om ett visst villkor är uppfyllt, t.ex. 1-2 tabletter till natten
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.conditionDescription 1..1 SEEHDSRivString "Villkorstext" """
    Villkorstext. Text som anger villkor kopplat till en villkorsdosering, t.ex. "vid behov". Det finns en diskrepans i multipliciteten för detta attribut mellan tjänstekontraktsbeskrivningen och XSD-schemat. Se arkitekturella beslut för denna domän för mer information om detta.
    TKB anger kardinaliteten 0..1, men XSD:n kräver 1..1. Modellen följer XSD:n.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.conditionDescription, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage 0..1 BackboneElement "Frekvensdosering" """
    Frekvensdosering. Beskriver dosering uttryckt som mängd och periodicitet i form av ett antal intag eller appliceringar under en viss tidsenhet, dvs. frekvensen.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex." """den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter"""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex." """
    Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen (3/dag).
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage 0..1 BackboneElement "Perioddosering" """
    Perioddosering. Beskriver dosering uttryckt som mängd och periodicitet i form av den tid som ska flyta mellan varje intag eller applicering.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex." """Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter"""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, …" """
    Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme (1/6 tim).
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage 0..1 BackboneElement "Rampdosering" """
    Rampdosering. Innehåller uppgifter om en successiv ökning eller minskning av läkemedelsdosen under en angiven tid.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.doseStep 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "Den mängd som dosen ska ökas eller minskas med vid varje tidssteg"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.doseStep, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.timeStep 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "Den tid som ska förflyta mellan varje ändring av dosen"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.timeStep, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart 1..1 BackboneElement "den dosering som gäller vid Doseringsstegets start"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage 0..1 BackboneElement "Frekvensdosering" """
    Frekvensdosering. Beskriver dosering uttryckt som mängd och periodicitet i form av ett antal intag eller appliceringar under en viss tidsenhet, dvs. frekvensen.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex." """Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter"""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex." """
    Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen (3/dag).
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage 0..1 BackboneElement "Perioddosering" """
    Perioddosering. Beskriver dosering uttryckt som mängd och periodicitet i form av den tid som ska flyta mellan varje intag eller applicering.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex." """Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter"""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, …" """
    Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme (1/6 tim).
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose 0..1 BackboneElement "Engångsdosering" """Engångsdosering. Beskriver att intag eller applicering ska ske vid ett enda tillfälle."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "Den mängd läkemedel som ska intas eller appliceras" """Den mängd läkemedel som ska intas eller appliceras."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.time 0..1 SEEHDSRivTimeStamp "Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras" """
    Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Tidpunkt kan anges som en specifik dag, (datum, veckodag eller antal dagar från Doseringsstegets början) eller som ett tillfälle eller klockslag inom dygnet eller som en kombination av dessa. Om tid utelämnas tolkas det som "omgående".
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation 0..1 BackboneElement "Fritextdosering" """
    Beskriver en dosering i klartext. Denna doseringstyp används för de fall då doseringen är för komplex eller av andra skäl inte kan anges inom ramen för någon av de andra doseringstyperna
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation.text 1..1 SEEHDSRivString "Dosering angiven i klartext"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampStart.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd 1..1 BackboneElement "den dosering som gäller vid Doseringsstegets slut"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage 0..1 BackboneElement "Frekvensdosering" """
    Frekvensdosering. Beskriver dosering uttryckt som mängd och periodicitet i form av ett antal intag eller appliceringar under en viss tidsenhet, dvs. frekvensen.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex." """den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter"""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex." """
    Periodicitet för intaget eller appliceringen uttryck som antal gånger per tidsenhet, t.ex. 3 gånger dagligen (3/dag).
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.frequencyDosage.frequency, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage 0..1 BackboneElement "Perioddosering" """
    Perioddosering. Beskriver dosering uttryckt som mängd och periodicitet i form av den tid som ska flyta mellan varje intag eller applicering.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex." """Den mängd läkemedel som ska intas eller appliceras vid varje tillfälle, t.ex. 2 tabletter"""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, …" """
    Periodicitet för intaget eller appliceringen uttryck som förfluten tid mellan varje intag eller applicering, t.ex. var 6:e timme (1/6 tim).
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.periodDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage 0..1 BackboneElement "occasionDosage"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.period 1..1 SEEHDSRivPQTypeActivityprescriptionActoutcome2 "period"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.period, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration 1..* BackboneElement "administration"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "dose"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.time 0..1 SEEHDSRivString "time"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod 1..1 SEEHDSRivInteger "dayOfPeriod"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.occasionDosage.administration.dayOfPeriod, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose 0..1 BackboneElement "Engångsdosering" """Engångsdosering. Beskriver att intag eller applicering ska ske vid ett enda tillfälle."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "Den mängd läkemedel som ska intas eller appliceras" """Den mängd läkemedel som ska intas eller appliceras."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.time 0..1 SEEHDSRivTimeStamp "Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras" """
    Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Tidpunkt kan anges som en specifik dag, (datum, veckodag eller antal dagar från Doseringsstegets början) eller som ett tillfälle eller klockslag inom dygnet eller som en kombination av dessa. Om tid utelämnas tolkas det som "omgående".
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation 0..1 BackboneElement "Fritextdosering" """
    Beskriver en dosering i klartext. Denna doseringstyp används för de fall då doseringen är för komplex eller av andra skäl inte kan anges inom ramen för någon av de andra doseringstyperna
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text 1..1 SEEHDSRivString "Dosering angiven i klartext"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.rampedDosage.rampEnd.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose 0..1 BackboneElement "Engångsdosering" """Engångsdosering. Beskriver att intag eller applicering ska ske vid ett enda tillfälle."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose.dose 1..1 SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2 "Den mängd läkemedel som ska intas eller appliceras" """Den mängd läkemedel som ska intas eller appliceras."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose.dose, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose.time 0..1 SEEHDSRivTimeStamp "Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras" """
    Den tid eller det tillfälle under dygnet när läkemedlet ska intas eller appliceras. Tidpunkt kan anges som en specifik dag, (datum, veckodag eller antal. dagar från Doseringsstegets början) eller som ett tillfälle eller klockslag inom dygnet eller som en kombination av dessa. Om tid utelämnas tolkas det som "omgående".
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.singleDose.time, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.unstructuredDosageInformation 0..1 BackboneElement "Fritextdosering" """
    Beskriver en dosering i klartext. Denna doseringstyp används för de fall då doseringen är för komplex eller av andra skäl inte kan anges inom ramen för någon av de andra doseringstyperna
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.unstructuredDosageInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.unstructuredDosageInformation.text 1..1 SEEHDSRivString "Dosering angiven i klartext"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.administration.drug.dosage.conditionalDosage.unstructuredDosageInformation.text, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation 0..* BackboneElement "Sambandsklass" """
    Alla meddelandeposter som i ordinationen pekas ut med samma relationstyp.
    Se XSD RelationType för fullständig struktur.
    Nyckelfält: code (1..1 CVType), referredInformation (1..*:
    id/IIType 1..1, type/CVType 1..1 originalText 'caa-ga'/'chb-go',
    informationOwner/InformationOwnerType 1..1).
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation, urn:riv:clinicalprocess:activityprescription:actoutcome:2.1)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.code 1..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Beskriver hur ordinationen relaterar till den refererade informationsmängden" """
    Beskriver hur ordinationen relaterar till den refererade informationsmängden. Denna kod bör, i den mån det är tillämpligt, hämtas från den lista av sambandstyper som publiceras i senaste version av nationell informationsstruktur (NI) (ref R14). Exempel: om ordinationsbeslutet baseras på en diagnosticerad postoperativ infektion, så bör detta anges genom användande av SNOMED CT-koden “416083004 | har orsak”.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.code, urn:riv:clinicalprocess:activityprescription:actoutcome:2.1)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation 1..* BackboneElement "Information kring den refererade informationsmängden som tjänstekonsument behöver för att avgöra om och hur …" """
    Information kring den refererade informationsmängden som tjänstekonsument behöver för att avgöra om och hur den refererade informationen ska hämtas.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2.1)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.rivId 1..1 SEEHDSRivIITypeActivityprescriptionActoutcome2 "Id till den aktivitet eller observation som refereras" """Id till den aktivitet eller observation som refereras."""
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.rivId, urn:riv:clinicalprocess:activityprescription:actoutcome:2.1)
* insert RivXmlName(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.rivId, id)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.type 1..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Typ av interaktion som behöver nyttjas för att ta del av den refererade informationen" """
    Typ av interaktion som behöver nyttjas för att ta del av den refererade informationen. Motsvarar fältet categorization i engagemangsindex. I skrivande stund finns inget OID-satt kodverk över olika categorization-typer, vilket betyder att fältet originalText behöver användas. Från den dag ett OID-satt kodverk finns tillgängligt bör detta användas istället. type.originalText får enbart sättas till ett av följande caa-ga för att referera till aktiviteter som tjänstekonsument kan hämta mha GetActivities chb-go för att referera till observationer som tjänstekonsument kan hämta mha GetObservations
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.type, urn:riv:clinicalprocess:activityprescription:actoutcome:2.1)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.informationOwner 1..1 BackboneElement "Vårdgivare som är informationsägare av den refererade informationen" """
    Vårdgivare som är informationsägare av den refererade informationen. Används av tjänstekonsument för spärrhantering.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.informationOwner, urn:riv:clinicalprocess:activityprescription:actoutcome:2.1)
* medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.informationOwner.rivId 1..1 SEEHDSRivIITypeActivityprescriptionActoutcome2 "Informationsägande vårdgivare"
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.informationOwner.rivId, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* insert RivXmlName(medicationMedicalRecord.medicationMedicalRecordBody.medicationPrescription.relation.referredInformation.informationOwner.rivId, id)
* medicationMedicalRecord.medicationMedicalRecordBody.additionalPatientInformation 0..1 BackboneElement "Ytterligare patientinformation" """
    Ytterligare information om patienten som inte går att få tag på via en gemensam PU-slagning.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.additionalPatientInformation, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.additionalPatientInformation.dateOfBirth 1..1 SEEHDSRivDate "Patientens födelsedatum" """
    Patientens födelsedatum.
    Format enligt XSD (DateType): ÅÅÅÅMMDD.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.additionalPatientInformation.dateOfBirth, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* medicationMedicalRecord.medicationMedicalRecordBody.additionalPatientInformation.gender 0..1 SEEHDSRivCVTypeActivityprescriptionActoutcome2 "Patientens kön. KV Kön (OID 1.2.752.129.2.2.1.1) bör användas. CVType-begränsning (Regel 1.6): originalText är förbjudet (0..0) för könsfältet — code, codeSystem och displayName ska anges." """
    Patientens kön. KV Kön (1.2.752.129.2.2.1.1) bör användas (se referens [R6]).
    Enligt TKB i detta sammanhang: code 1..1, codeSystem 1..1, displayName 1..1, originalText 0..0.
  """
* insert RivNs(medicationMedicalRecord.medicationMedicalRecordBody.additionalPatientInformation.gender, urn:riv:clinicalprocess:activityprescription:actoutcome:2)
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
