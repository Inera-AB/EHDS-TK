// RIV-TA GetImagingOutcome 1.0 – svarsmeddelandet GetImagingOutcomeResponse.
// Struktur, namn, ordning, namnrymder och XSD-kardinaliteter är genererade från
// riv.clinicalprocess.healthcond.actoutcome/schemas/interactions/GetImagingOutcomeInteraction/GetImagingOutcomeResponder_1.0.xsd (bitbucket.org/rivta-domains).
// Kardinaliteter är verifierade mot TKB_clinicalprocess_healthcond_actoutcome.docx; texter är sammanslagna från tidigare modell och TKB.

Logical: SEEHDSLMImagingOutcome
Id: SEEHDSLMImagingOutcome
Title: "GetImagingOutcome"
Description: """
  Logisk modell för tjänstekontraktet GetImagingOutcome
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetImagingOutcome:1).
  Representerar responsens informationsstruktur — bilddiagnostiska resultat
  för en patient. Baseras på NPÖ RIV 2.2.0-specifikation.
"""
* insert RivRoot(GetImagingOutcomeResponse, urn:riv:clinicalprocess:healthcond:actoutcome:GetImagingOutcomeResponder:1)
* imagingOutcome 0..* BackboneElement "Bilddiagnostiskt resultat (ett per undersökning)" """De Bild-resultat(dokument) som matchar begäran."""
* imagingOutcome.imagingOutcomeHeader 1..1 BackboneElement "PatientSummaryHeader" """Innehåller basinformation om dokumentet"""
* insert RivNs(imagingOutcome.imagingOutcomeHeader, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.documentId 1..1 SEEHDSRivString "Dokumentets unika id" """
    Dokumentets identitet som är unik inom källsystemet. Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.
  """
* insert RivNs(imagingOutcome.imagingOutcomeHeader.documentId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.sourceSystemHSAId 1..1 SEEHDSRivString "Källsystemets HSA-id" """HSA-id för det system som dokumentet är skapat i."""
* insert RivNs(imagingOutcome.imagingOutcomeHeader.sourceSystemHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.documentTitle 0..1 SEEHDSRivString "Dokumentets titel" """Titel som beskriver den information som sänds i dokumentet."""
* insert RivNs(imagingOutcome.imagingOutcomeHeader.documentTitle, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.documentTime 0..1 SEEHDSRivTimeStamp "Dokumentets tidpunkt" """
    Händelsetidpunkt, om sådan finns. Tidpunkten bör vara då undersökningen gjordes inte när bilden skapades (t.ex. skannad bild).
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(imagingOutcome.imagingOutcomeHeader.documentTime, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.patientId 1..1 SEEHDSRivPersonIdTypeHealthcondActoutcome3 "Patientens id" """Identifierare för patient."""
* insert RivNs(imagingOutcome.imagingOutcomeHeader.patientId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional 1..1 BackboneElement "Ansvarig hälso- och sjukvårdspersonal" """
    Ansvarig hälso- och sjukvårdsperson. Ansvarig för undersökningsresultatet. Avser person som är ansvarig för det samlade dokumentet.
  """
* insert RivNs(imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.authorTime 1..1 SEEHDSRivTimeStamp "Tidpunkt" """
    Tidpunkt då dokumentet skapades. Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.authorTime, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId 0..1 SEEHDSRivString "HSA-id" """HSA-id hälso-och sjukvårdspersonal. Ska anges om tillgänglig."""
* insert RivNs(imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalName 0..1 SEEHDSRivString "Namn" """Namn på hälso-och sjukvårdspersonal. Om tillgängligt ska detta anges."""
* insert RivNs(imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalName, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode 0..1 SEEHDSRivCVTypeHealthcondActoutcome3 "Yrkesroll" """
    Information om ansvarige personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. Om kodverk saknas anges befattning i originalText.
  """
* insert RivNs(imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit 0..1 BackboneElement "Org-enhet" """
    Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges.
  """
* insert RivNs(imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId 0..1 SEEHDSRivString "OrgUnit HSA-id" """HSA-id för organisationsenhet. Om tillgängligt ska detta anges."""
* insert RivNs(imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName 0..1 SEEHDSRivString "OrgUnit namn" """Namn på organisationsenhet. Om tillgängligt ska detta anges."""
* insert RivNs(imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon" """Telefon till organisationsenhet."""
* insert RivNs(imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail 0..1 SEEHDSRivString "E-post" """Epost till organisationsenhet."""
* insert RivNs(imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress 0..1 SEEHDSRivString "Adress" """
    Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis:”Storgatan 12468 91 Lilleby”
  """
* insert RivNs(imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation 0..1 SEEHDSRivString "Plats" """Text som anger namnet på plats eller ort för organisationens fysiska placering."""
* insert RivNs(imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId 0..1 SEEHDSRivString "Vårdenhetens HSA-id" """Regel 1: Används för spärrhantering och åtkomstkontroll."""
* insert RivNs(imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId 0..1 SEEHDSRivString "Vårdgivarens HSA-id" """Regel 1: Används för spärrhantering och åtkomstkontroll."""
* insert RivNs(imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.legalAuthenticator 0..1 BackboneElement "Juridiskt ansvarig" """
    Information om vem som signerat informationen i dokumentet. Det är normalt radiologen som signerar bilddiagnostiska svar. Signering = signering av remissvar. Vidimering anges i attributet attested i bodyn.
  """
* insert RivNs(imagingOutcome.imagingOutcomeHeader.legalAuthenticator, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.legalAuthenticator.signatureTime 1..1 SEEHDSRivTimeStamp "Signeringstidpunkt" """
    Tidpunkt för signering.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(imagingOutcome.imagingOutcomeHeader.legalAuthenticator.signatureTime, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.legalAuthenticator.legalAuthenticatorHSAId 0..1 SEEHDSRivString "HSA-id" """
    HSA-id för person som signerat dokumentet. HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig
  """
* insert RivNs(imagingOutcome.imagingOutcomeHeader.legalAuthenticator.legalAuthenticatorHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.legalAuthenticator.legalAuthenticatorName 0..1 SEEHDSRivString "Namn" """Namnen i klartext för signerande person."""
* insert RivNs(imagingOutcome.imagingOutcomeHeader.legalAuthenticator.legalAuthenticatorName, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.legalAuthenticator.legalAuthenticatorRoleCode 0..0 SEEHDSRivCVTypeHealthcondActoutcome3 "Befattning för signerande person" """Ska ej anges."""
* insert RivNs(imagingOutcome.imagingOutcomeHeader.legalAuthenticator.legalAuthenticatorRoleCode, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.approvedForPatient 1..1 SEEHDSRivBoolean "Godkänd för patientvisning" """
    Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false.
  """
* insert RivNs(imagingOutcome.imagingOutcomeHeader.approvedForPatient, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.careContactId 0..1 SEEHDSRivString "Vårdkontaktid" """
    Identitetet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet
  """
* insert RivNs(imagingOutcome.imagingOutcomeHeader.careContactId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.nullified 0..1 SEEHDSRivBoolean "Makulerad" """
    Anger om dokumentet makulerats i källsystemet. Sätts i så fall till true annars false. Används bl.a. i statistik-/rapportuttag med hjälp av tjänstekontrakten.
  """
* insert RivNs(imagingOutcome.imagingOutcomeHeader.nullified, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeHeader.nullifiedReason 0..1 SEEHDSRivString "Makuleringsorsak" """Anger orsak till makulering"""
* insert RivNs(imagingOutcome.imagingOutcomeHeader.nullifiedReason, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody 1..1 BackboneElement "Bilddiagnostisk information"
* insert RivNs(imagingOutcome.imagingOutcomeBody, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.examinationSpeciality 0..1 SEEHDSRivCVTypeHealthcondActoutcome3 "Undersökningsspecialitet" """
    Undersökningstyp. Bör anges med kod enligt SNOMED. Text som beskriver vilken specialitet som utlåtandet gäller.Exempel: Typen av specialitet som anlitats anges i text Exempel: Patologi, Klinisk fysiologi, Logopedi
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.examinationSpeciality, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.typeOfResult 1..1 SEEHDSRivString "Typ av resultat" """
    Kodas enligt TypeOfResultCodeEnum. Se QUESTIONS.md ASSUME-003.
    Tillåtna värden enligt XSD: PREL, DEF, TILL.
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.typeOfResult, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.resultTime 1..1 SEEHDSRivTimeStamp "Resultatets tidpunkt" """
    Svarstidpunkt. Tidpunkt då svar skickas till framställaren av remissen.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.resultTime, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.resultReport 1..1 SEEHDSRivString "Resultatrapport (fritext)" """Text som beskriver det sammanfattade utlåtandet kring undersökningsresultatet"""
* insert RivNs(imagingOutcome.imagingOutcomeBody.resultReport, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.resultComment 0..1 SEEHDSRivString "Kommentar till resultatet" """Kommentar till det sammanfattande utlåtandet"""
* insert RivNs(imagingOutcome.imagingOutcomeBody.resultComment, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.radiationDose 0..* SEEHDSRivPQTypeHealthcondActoutcome3 "Stråldos" """
    Ett dosvärde som härrör till undersökningen. Dosen kan anges på flera olika sätt (t.ex. som effektiv dos i Sv) eller som KAP. Den totala dosen som härrör till underökningen är summan av alla redovisade radiationDose. Enheten ska vara SI-enhet (eller kombination av sådana). (För KAP ska värdet räknas om till Gy*m² istället för Gy*cm².)
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.radiationDose, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.patientData 0..1 BackboneElement "Patientdata vid undersökningstillfälle" """
    Ytterligare information om patienten med relevans för bedömningen. Kan typiskt anges i samband med givande av strukturerad bild-information enligt nedan
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.patientData, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.patientData.patientWeight 0..1 SEEHDSRivPQTypeHealthcondActoutcome3 "Patientens vikt" """Patientens vikt i kgvid undersökningstillfället."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.patientData.patientWeight, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.patientData.patientLength 0..1 SEEHDSRivPQTypeHealthcondActoutcome3 "Patientens längd" """Patientens längd i cm vid undersökningstillfället."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.patientData.patientLength, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording 0..* BackboneElement "Bildtagning" """
    Beskrivning av bild-tagning(ar). Bild(er) tas som en eller flera tagningar (noll tillåts i fall då tillgång till bild saknas, utan endast (remiss och) sammanfattande utlåtande finns). En bildtagning kan i sin tur ha flera bilder
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.recordingId 0..1 SEEHDSRivIITypeHealthcondActoutcome3 "Bildtagningens id" """Id för Bild-tagningen som är unikt inom källsystemet."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.recordingId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.examinationActivity 1..1 SEEHDSRivCVTypeHealthcondActoutcome3 "Undersökningsaktivitet" """
    Åtgärdskod för utförd typ av Bild. KRÅ91-kod eller i förekommande fall annat kodverk. Om inget gemensamt kodverk används, anges åtgärdsbeskrivning i originalText.
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.examinationActivity, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.examinationTimePeriod 1..1 SEEHDSRivTimePeriodTypeHealthcondActoutcome3 "Undersökningsperiod" """Tidpunkt då Bild-insamlingen startar och slutar"""
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.examinationTimePeriod, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.examinationStatus 0..1 SEEHDSRivString "Undersökningsstatus" """
    Text som anger åtgärdens status. Kommer från KV åtgärdsstatus i V-TIM 1.0. Tillåtna värden är: Initierad, Planerad (bevakad), Tidbokad, Uppskjuten, Annullerad, Pågående, Avvakta, Avbruten, Avklarad, Inaktuell, Makulerad.
    Tillåtna värden enligt XSD: Initierad, Planerad, Tidbokad, Uppskjuten, Annullerad, Pågående, Avvakta, Avbruten, Avklarad, Inaktuell, Makulerad.
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.examinationStatus, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.examinationUnit 0..1 SEEHDSRivString "Undersökningsenhet" """
    Text som anger vilken typ av labenhet som undersökningsresultatet härrör från. T ex MR-lab, CT inom bild
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.examinationUnit, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional 0..1 BackboneElement "Ansvarig personal" """
    Hälso- och sjukvårdsperson som är ansvarig för informationen som härstammar från insamlingstillfället. Den person som har den fysiska kontakten med patienten vid insamlandet av data.
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.authorTime 1..1 SEEHDSRivTimeStamp "Tidpunkt" """
    Tidpunkt då dokumentet skapades. Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades. Attributet sätts till detsamma som examinationTimePeriod.end, eller .start i de fall som inget .end finns
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.authorTime, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalHSAId 0..1 SEEHDSRivString "HSA-id" """HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalName 0..1 SEEHDSRivString "Namn" """Namn på hälso-och sjukvårdspersonal. Om tillgängligt ska detta anges."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalName, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalRoleCode 0..1 SEEHDSRivCVTypeHealthcondActoutcome3 "Yrkesroll" """
    Information om ansvarige personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. Om kodverk saknas anges befattning i originalText.
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalRoleCode, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalOrgUnit 0..1 BackboneElement "Org-enhet" """
    Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges.
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalOrgUnit, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId 0..1 SEEHDSRivString "HSA-id för organisationsenhet" """HSA-id för organisationsenhet. Om tillgängligt ska detta anges."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName 0..1 SEEHDSRivString "Namn på organisationsenhet" """Namn på organisationsenhet. Om tillgängligt ska detta anges."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till organisationsenhet" """Telefon till organisationsenhet."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail 0..1 SEEHDSRivString "E-post till organisationsenhet" """Epost till organisationsenhet."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress 0..1 SEEHDSRivString "Postadress till organisationsenhet" """
    Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis:”Storgatan 12468 91 Lilleby”
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation 0..1 SEEHDSRivString "Plats för organisationsenhet" """Text som anger namnet på plats eller ort för organisationens fysiska placering."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId 0..0 SEEHDSRivString "HSA-id för vårdenhet" """Ska ej anges."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId 0..0 SEEHDSRivString "HSA-id för vårdgivare" """Ska ej anges."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.numberOfImages 0..1 SEEHDSRivInteger "Antal bilder" """Det totala antalet bilder i bildtagningen"""
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.numberOfImages, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData 0..1 BackboneElement "Modalitetsdata" """Information om bild-utrustningen som använts"""
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.modalityData, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.typeOfModality 0..1 SEEHDSRivString "Modalitetstyp (t.ex. CT, MR)" """Modalitetstyp för bildfångande utrustning."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.typeOfModality, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.manufacturer 0..1 SEEHDSRivString "Tillverkare" """Producerande utrustnings tillverkare."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.manufacturer, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.modelName 0..1 SEEHDSRivString "Modellnamn" """Producerande utrustnings modellnamn."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.modelName, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.equipmentId 0..1 SEEHDSRivString "Utrustningens id" """Identifierare för utrustningen. Kan tex vara serienummer eller inventarienummer."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.equipmentId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.softwareVersion 0..1 SEEHDSRivString "Programvaruversion" """Text som anger tillverkarens version av den bildproducerande mjukvaran"""
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.softwareVersion, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.lineFilter 0..0 SEEHDSRivPQTypeHealthcondActoutcome3 "Linjefilter" """Ska ej anges."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.lineFilter, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData 0..* BackboneElement "DICOM-bilddata" """
    DICOM-objekt. För att ge renderbar data som kan visas på det sätt som användaren önskar (med hjälp av en viewer/renderare) ges möjligheten att skicka med binärdata eller en URI till ett DICOM-objekt i någon av SOP-klasserna för Bild. Både imageDicomData och ImageStaticData kan, och om möjligt bör anges för att underlätta för konsument.
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData.dicomSOP 1..1 SEEHDSRivString "DICOM SOP (UID)" """
    SOP UID för DICOM-objektet. Beskriver vilken information som kan förväntas i datan (jmf. mediaType nedan för statisk bild). T.ex. 1.2.840.10008.5.1.4.1.1.1.1 för digital x-ray for presentation
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData.dicomSOP, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData.dicomValue 0..1 SEEHDSRivBase64Binary "DICOM binärdata" """
    Binärdata som representerar objektet. Ett och endast ett av DicomValue och DicomReference ska anges.
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData.dicomValue, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData.dicomReference 0..1 SEEHDSRivAnyURI "Referens till DICOM-bild" """
    Referens till externt DICOM-objekt med åtkomst enligt WADO. En tillverkarspecifik länk som är möjlig att via en säker anslutning visa i en webklient
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData.dicomReference, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData 0..* BackboneElement "Strukturerad bilddata" """
    Strukturerad mätdata för bild-tagningen med statiskt bildobjekt eller referens till bildfil.
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.aperture 0..1 SEEHDSRivPQTypeHealthcondActoutcome3 "Bländare" """Anges som f/(enhetslöst)."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.aperture, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.exposureTime 0..1 SEEHDSRivPQTypeHealthcondActoutcome3 "Exponeringstid" """I sekunder"""
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.exposureTime, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageCreationTime 0..1 SEEHDSRivTimeStamp "Bildskapningstidpunkt" """
    Tid då bilden skapats.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageCreationTime, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.bodyPartExamined 0..1 SEEHDSRivCVTypeHealthcondActoutcome3 "Undersökt kroppsdel" """
    Kroppsdel. Bör anges med kod ur SNOMED CT (OID: 1.2.752.116.2.1.1). Om kodverk saknas kan kroppsdel anges i originalText.
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.bodyPartExamined, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.contrastAgentUsed 0..1 SEEHDSRivString "Kontrastmedel" """Kontrast som använts vid bildtagningen."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.contrastAgentUsed, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.magneticFieldStrength 0..1 SEEHDSRivPQTypeHealthcondActoutcome3 "Magnetfältstyrka" """Magnetisk fältsyrka i T."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.magneticFieldStrength, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.copyright 0..1 SEEHDSRivString "Upphovsrätt" """Copyright-ägare av bilden"""
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.copyright, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData 1..1 BackboneElement "Bilddata" """
    Möjlighet att svara med en bild i något av de tillåtna formaten enligt HL7 multimediatyper (inkl. PDF).
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.mediaType 1..1 SEEHDSRivString "Medietyp" """
    Mediatyper enligt HL7 MediaType
    Tillåtna värden enligt XSD: application/dicom, application/msword, application/pdf, audio/basic, audio/k32adpcm, audio/mpeg, image/g3fax, image/gif, image/jpeg, image/png, image/tiff, model/vrml, multipart/x-hl7-cda-level1, text/html, text/plain, text/rtf, text/sgml, text/x-hl7-ft, text/xml, video/mpeg, video/x-avi.
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.mediaType, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.value 0..1 SEEHDSRivBase64Binary "Binär bild" """
    Value är binärdata som representerar objektet. Ett och endast ett av value och reference ska anges.
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.value, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.reference 0..1 SEEHDSRivAnyURI "Referens-URL" """
    Referens till extern bild i form av en URL. Ett och endast ett av value och reference ska anges. En tillverkarspecifik länk som är möjlig att via en säker anslutning visa i en webklient
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.reference, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.burnedInaAnnotations 0..1 SEEHDSRivBoolean "Inbrända annotationer (elementnamnet stavas så i XSD:n)"
* insert RivNs(imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.burnedInaAnnotations, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.referral 0..1 BackboneElement "Kopplad remiss" """
    Information om den remiss som ligger till grund för undersökningen och dess svar. Måste vara valfri eftersom tagning av Bild inte alltid remitteras
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.referral, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.referral.referralId 1..1 SEEHDSRivString "Remissens id" """
    Remissens identitet som är unik inom det lokala avsändande systemet. Motsvarar vårdbegäran-id
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.referral.referralId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.referral.referralReason 0..1 SEEHDSRivString "Remissorsak" """Text som anger frågeställningen"""
* insert RivNs(imagingOutcome.imagingOutcomeBody.referral.referralReason, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.referral.anamnesis 0..1 SEEHDSRivString "Anamnes" """Text som anger bakgrund till frågeställningen"""
* insert RivNs(imagingOutcome.imagingOutcomeBody.referral.anamnesis, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.referral.careContactId 0..1 SEEHDSRivString "Vårdkontaktid" """
    Identitet för den hälso-och sjukvårdskontakt som föranlett remissen. Identiteten är unik inom producernade system.
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.referral.careContactId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional 1..1 BackboneElement "Remittent" """
    Information om den hälso-och sjukvårdspersonal som framställt remissen, nedan kallad remittent.
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.authorTime 1..1 SEEHDSRivTimeStamp "Tidpunkt" """
    Tid då remissen framställdes
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.authorTime, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalHSAId 0..1 SEEHDSRivString "HSA-id" """Remittentens HSA-id. HSA-id hälso-och sjukvårdspersonal. Ska anges om tillgänglig."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalName 0..1 SEEHDSRivString "Namn" """Namn på remittenten. Om tillgängligt ska detta anges."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalName, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalRoleCode 0..1 SEEHDSRivCVTypeHealthcondActoutcome3 "Yrkesroll" """
    Information om remittentens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas. Om kodverk saknas anges befattning i originalText.
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalRoleCode, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit 1..1 BackboneElement "Org-enhet (obligatorisk i remissen)" """Den organisation som remittenten är uppdragstagare på"""
* insert RivNs(imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId 1..1 SEEHDSRivString "OrgUnit HSA-id" """HSA-id för organisationsenhet."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName 1..1 SEEHDSRivString "OrgUnit namn" """Namnet på den organisation som remittenten är uppdragstagare på"""
* insert RivNs(imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon" """Telefon till organisationsenhet"""
* insert RivNs(imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail 0..1 SEEHDSRivString "E-post" """Epost till enhet"""
* insert RivNs(imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress 0..1 SEEHDSRivString "Adress" """Postadress för den organisation som remittenten är uppdragstagare på"""
* insert RivNs(imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation 0..1 SEEHDSRivString "Plats" """Text som anger namnet på plats eller ort för organisationens fysiska placering"""
* insert RivNs(imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId 0..0 SEEHDSRivString "HSA-id för vårdenhet" """Ska ej anges."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId 0..0 SEEHDSRivString "HSA-id för vårdgivare" """Ska ej anges."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.referral.attested 0..1 BackboneElement "Attestering" """Information om den som vidimerat mottaget svar på remissen"""
* insert RivNs(imagingOutcome.imagingOutcomeBody.referral.attested, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.referral.attested.signatureTime 1..1 SEEHDSRivTimeStamp "Attesttidpunkt" """
    Tidpunkt för vidimering.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.referral.attested.signatureTime, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.referral.attested.legalAuthenticatorHSAId 0..1 SEEHDSRivString "HSA-id" """
    HSA-id för person som vidimerat dokumentet. HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig.
  """
* insert RivNs(imagingOutcome.imagingOutcomeBody.referral.attested.legalAuthenticatorHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.referral.attested.legalAuthenticatorName 0..1 SEEHDSRivString "Namn" """Namnen i klartext för vidimerande person."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.referral.attested.legalAuthenticatorName, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* imagingOutcome.imagingOutcomeBody.referral.attested.legalAuthenticatorRoleCode 0..0 SEEHDSRivCVTypeHealthcondActoutcome3 "Befattning för signerande person" """Ska ej anges."""
* insert RivNs(imagingOutcome.imagingOutcomeBody.referral.attested.legalAuthenticatorRoleCode, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* result 1..1 BackboneElement "Resultat" """Innehåller information om begäran gick bra eller ej."""
* result.resultCode 1..1 SEEHDSRivString "Resultatkod (OK, INFO eller ERROR)" """
    Kan endast vara OK, INFO eller ERROR
    Tillåtna värden enligt XSD: OK, ERROR, INFO.
  """
* insert RivNs(result.resultCode, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* result.errorCode 0..1 SEEHDSRivString "Felkod (sätts endast om resultCode är ERROR)" """
    Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information.
    Tillåtna värden enligt XSD: INVALID_REQUEST.
  """
* insert RivNs(result.errorCode, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* result.logId 1..1 SEEHDSRivString "Log-id (UUID för felsökning)" """En UUID som kan användas vid felanmälan för att användas vid felsökning av producent."""
* insert RivNs(result.logId, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* result.subCode 0..1 SEEHDSRivString "Subkod" """Inga subkoder är specificerade."""
* insert RivNs(result.subCode, urn:riv:clinicalprocess:healthcond:actoutcome:3)
* result.message 0..1 SEEHDSRivString "Beskrivande meddelande" """En beskrivande text som kan visas för användaren."""
* insert RivNs(result.message, urn:riv:clinicalprocess:healthcond:actoutcome:3)
