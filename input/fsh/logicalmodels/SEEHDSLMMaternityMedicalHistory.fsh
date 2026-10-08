// RIV-TA GetMaternityMedicalHistory 2.0 – svarsmeddelandet GetMaternityMedicalHistoryResponse.
// Struktur, namn, ordning, namnrymder och XSD-kardinaliteter är genererade från
// riv.clinicalprocess.healthcond.actoutcome/schemas/interactions/GetMaternityMedicalHistoryInteraction/GetMaternityMedicalHistoryResponder_2.0.xsd (bitbucket.org/rivta-domains).
// Kardinaliteter är verifierade mot TKB_clinicalprocess_healthcond_actoutcome.docx; texter är sammanslagna från tidigare modell och TKB.

Logical: SEEHDSLMMaternityMedicalHistory
Id: SEEHDSLMMaternityMedicalHistory
Title: "GetMaternityMedicalHistory"
Description: """
  Logisk modell för tjänstekontraktet GetMaternityMedicalHistory
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetMaternityMedicalHistory:2).
  Representerar responsens informationsstruktur — mödravårdsjournal för en patient.
"""
* insert RivRoot(GetMaternityMedicalHistoryResponse, urn:riv:clinicalprocess:healthcond:actoutcome:GetMaternityMedicalHistoryResponder:2)
* maternityMedicalRecord 0..* BackboneElement "Mödravårdsjournalpost" """En moders mödravårdsjournal."""
* maternityMedicalRecord.maternityMedicalRecordHeader 1..1 BackboneElement "PatientSummaryHeader" """Innehåller basinformation om dokumentet."""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.documentId 1..1 SEEHDSRivString "Dokumentets unika id" """
    Dokumentets identitet som är unik inom källsystemet. Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.documentId, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.sourceSystemHSAId 1..1 SEEHDSRivString "Källsystemets HSA-id" """HSAid för det system som dokumentet är skapat i."""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.sourceSystemHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.documentTitle 0..1 SEEHDSRivString "Dokumentets titel" """Titel som beskriver den information som sänds i dokumentet."""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.documentTitle, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.documentTime 1..1 SEEHDSRivTimeStamp "Dokumentets tidpunkt" """
    Första tidpunkten då denna journalinformation skapades hos tjänsteproducenten.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.documentTime, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.patientId 1..1 SEEHDSRivPersonIdTypeHealthcondActoutcome2 "Patientens id" """
    Id för modern.id sätts till patientens identifierare, anges med 12 siffror utan avskiljare.Type sätts till OID för typ av identifierare. För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3)
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.patientId, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional 1..1 BackboneElement "Ansvarig hälso- och sjukvårdspersonal" """
    Information om den hälso- och sjukvårdsperson som skapat informationen i dokumentet, nedan kallas författare. Vid uppdatering av tidigare skapade dokument avses den hälso- och sjukvårdsperson som senast uppdaterade informationen.
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.authorTime 1..1 SEEHDSRivTimeStamp "Tidpunkt" """
    Tidpunkt vid vilken journalinformationen skapades eller senast uppdaterades hos tjänsteproducenten. I de fall då journalinformationen skapats i ett annat informationssystem (t.ex. laboratoriesystem eller annan remittents journalsystem) är det tidpunkten då journalinformationen ursprungligen skapades som ska anges.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.authorTime, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId 1..1 SEEHDSRivString "HSA-id (obligatorisk i mödrahälsovård)" """Författarens HSA-id."""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalName 0..1 SEEHDSRivString "Namn" """Författarens namn."""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalName, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode 0..1 SEEHDSRivCVTypeHealthcondActoutcome2 "Yrkesroll" """
    Information om författarens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. Om kodverk saknas anges befattning i originalText.
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit 1..1 BackboneElement "Organisationsenhet" """Den organisation som författaren är uppdragstagare på."""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId 1..1 SEEHDSRivString "OrgUnit HSA-id" """HSA-id för den organisation som författaren är uppdragstagare på."""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName 1..1 SEEHDSRivString "OrgUnit namn" """Namnet på den organisation som författaren är uppdragstagare på."""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon" """Telefon till organisationsenhet."""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail 0..1 SEEHDSRivString "E-post" """Epost till enhet."""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress 0..1 SEEHDSRivString "Adress" """
    Postadress för den organisation som författaren är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis:”Storgatan 12468 91 Lilleby”
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation 0..1 SEEHDSRivString "Plats" """
    Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering.
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId 1..1 SEEHDSRivString "Vårdenhetens HSA-id" """Regel 1: Obligatorisk i GetMaternityMedicalHistory."""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId 1..1 SEEHDSRivString "Vårdgivarens HSA-id" """Regel 1: Obligatorisk i GetMaternityMedicalHistory."""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator 0..1 BackboneElement "Juridiskt ansvarig" """Information om vem som signerat informationen i dokumentet."""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.signatureTime 1..1 SEEHDSRivTimeStamp "Signeringstidpunkt" """
    Tidpunkt för signering.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.signatureTime, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId 0..1 SEEHDSRivString "HSA-id" """HSA-id för person som signerat dokumentet."""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.approvedForPatient 1..1 SEEHDSRivBoolean "Godkänd för patientvisning" """
    Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false.
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.approvedForPatient, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.nullified 0..0 SEEHDSRivBoolean "Makulerad" """Ska ej anges."""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.nullified, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.nullifiedReason 0..0 SEEHDSRivString "Makuleringsorsak" """Ska ej anges."""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.nullifiedReason, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordHeader.careContactId 0..1 SEEHDSRivString "Vårdkontaktid" """
    Identitetet för hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet.
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordHeader.careContactId, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody 1..1 BackboneElement "Mödravårdsjournaldata" """
    Kan bestå av antingen en registrationRecord, en pregnancyCheckupRecord eller en postDeliveryRecord.
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord 0..1 BackboneElement "Inskrivningsuppgifter" """Information som registreras vid inskrivningsbesöket."""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.lastMenstrualPeriod 0..1 SEEHDSRivDate "Sista menstruationsdag" """
    Datum för senaste menstruation
    Format enligt XSD (DateType): ÅÅÅÅMMDD.
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.lastMenstrualPeriod, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.indicationPregnancy 0..1 SEEHDSRivDate "Graviditetsindikation datum" """
    Datum för graviditetsindikation
    Format enligt XSD (DateType): ÅÅÅÅMMDD.
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.indicationPregnancy, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.contraceptiveDiscontinued 0..1 SEEHDSRivDate "Datum p-medel avslutades" """
    Datum för när moder upphört med preventivtablett
    Format enligt XSD (DateType): ÅÅÅÅMMDD.
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.contraceptiveDiscontinued, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromLastMenstrualPeriod 0..1 SEEHDSRivDate "Beräknat förlossningsdatum (LMP)" """
    Beräknad förlossning enligt sista menstruation
    Format enligt XSD (DateType): ÅÅÅÅMMDD.
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromLastMenstrualPeriod, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromUltrasoundScan 0..1 SEEHDSRivDate "Beräknat förlossningsdatum (UL)" """
    Beräknad förlossning enligt ultraljud
    Format enligt XSD (DateType): ÅÅÅÅMMDD.
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromUltrasoundScan, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromEmbryonicTransfer 0..1 SEEHDSRivDate "Beräknat förlossningsdatum (embryoöverföring)" """
    Beräknad förlossning enligt embryonik transfer
    Format enligt XSD (DateType): ÅÅÅÅMMDD.
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromEmbryonicTransfer, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.length 0..1 SEEHDSRivPQTypeHealthcondActoutcome2 "Kroppslängd (cm)" """Längd vid inskrivning"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.length, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.weight 0..1 SEEHDSRivPQTypeHealthcondActoutcome2 "Kroppsvikt (kg)" """Vikt vid inskrivning [massa]"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.weight, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.bodyMassIndex 0..1 SEEHDSRivPQTypeHealthcondActoutcome2 "BMI" """BMI vid inskrivning [massa/yta]"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.bodyMassIndex, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.infertility 0..1 SEEHDSRivDecimal "Infertilitet (år)" """Antal år med ofrivillig barnlöshet (decimaltal)"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.infertility, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity 0..* BackboneElement "Tidigare graviditeter" """Tidigare graviditeter och förlossningar"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.year 1..1 SEEHDSRivInteger "År" """År för tidigare graviditet eller förlossning"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.year, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.month 1..1 SEEHDSRivInteger "Månad" """Månad för tidigare graviditet eller förlossning"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.month, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.delivery 0..1 SEEHDSRivInteger "Förlossningssätt" """
    Graviditet förlossning enligt kodverk: 0 = Ej angivet, 1 = X-gravid, 2 = Spontan abort, 4 = Dödfött, 5 = Levande fött
    Tillåtna värden enligt XSD: 0, 1, 2, 4, 5.
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.delivery, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.healthcareFacility 0..1 SEEHDSRivString "Vårdinrättning" """Sjukhus"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.healthcareFacility, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.progress 0..1 SEEHDSRivString "Förlopp"
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.progress, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.sex 0..1 SEEHDSRivInteger "Barnets kön" """
    Kön, giltiga värden 0,1,2 och 9 enligt kodverk med OID 1.2.752.129.2.2.1.1: 0 = okänt, 1 = man, 2 = kvinna, 9 = ej tillämpligt
    Tillåtna värden enligt XSD: 0, 1, 2, 9.
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.sex, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.weightOfChild 0..1 SEEHDSRivPQTypeHealthcondActoutcome2 "Barnets vikt" """Barnets vikt [massa]"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.weightOfChild, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.gestation 0..1 SEEHDSRivInteger "Gestationsålder (veckor)" """Graviditetsvecka."""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.gestation, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesThrombosis 0..1 SEEHDSRivBoolean "Trombos" """Trombos (true/false)"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesThrombosis, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesEndocineDiseases 0..1 SEEHDSRivBoolean "Endokrina sjukdomar" """Endokrina sjukdomar (true/false)"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesEndocineDiseases, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesRecurrentUrinaryTractInfections 0..1 SEEHDSRivBoolean "Recidiverande urinvägsinfektioner" """Upprepade urinvägsinfektioner (true/false)"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesRecurrentUrinaryTractInfections, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesDiabetesMellitus 0..1 SEEHDSRivBoolean "Diabetes mellitus" """Diabetes mellitus (true/false)"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesDiabetesMellitus, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy 0..* BackboneElement "Läkemedel under graviditet" """Före inskrivning under graviditet: medicinering"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy.medicament 1..1 SEEHDSRivString "Läkemedel" """Preparat"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy.medicament, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy.dosage 0..1 SEEHDSRivString "Dosering" """Dosering i beskrivande text"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy.dosage, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.assessmentAtFirstContactStandardCare 0..1 SEEHDSRivBoolean "Bedömning vid inskrivning standardvård" """Bedömning vid 1:a besök: basprogram (true/false)"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.assessmentAtFirstContactStandardCare, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord 0..1 BackboneElement "Graviditetskontroll"
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.completeWeeksOfGestation 0..1 SEEHDSRivInteger "Kompletta graviditetsveckor" """Fullgångna graviditetsveckor"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.completeWeeksOfGestation, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.weight 0..1 SEEHDSRivPQTypeHealthcondActoutcome2 "Vikt" """Moderns vikt [massa]"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.weight, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.symphysisFundalHeight 0..1 SEEHDSRivPQTypeHealthcondActoutcome2 "Symfondusmått (cm)" """Symfys-fundus mått [längd]"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.symphysisFundalHeight, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.haemoglobin 0..1 SEEHDSRivPQTypeHealthcondActoutcome2 "Hemoglobin" """Hb (Hemoglobin) [massa / volym]"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.haemoglobin, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureSystolic 0..1 SEEHDSRivPQTypeHealthcondActoutcome2 "Systoliskt blodtryck" """Systoliskt blodtryck [tryck]"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureSystolic, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureDiastolic 0..1 SEEHDSRivPQTypeHealthcondActoutcome2 "Diastoliskt blodtryck" """Diastoliskt blodtryck [tryck]"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureDiastolic, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.proteinuria 0..1 SEEHDSRivPQTypeHealthcondActoutcome2 "Proteinuri" """
    Proteinuri - Protein i urinet [massa / volym] Mängden protein ska alltså anges i g/l eller motsvarande. Använd INTE mätstickans kodning (0, 1+, 2+…)
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.proteinuria, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.glycosuria 0..1 SEEHDSRivPQTypeHealthcondActoutcome2 "Glykosuri" """
    Glucosuri - Glucos i urinet [antal / volym] Förväntad enhet är mmol/l. Använd INTE mätstickans kodning (0, 1+, 2+…) OBS! U på svenska men y på engelska (ICD10).
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.glycosuria, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalPosition 0..* SEEHDSRivInteger "Fosterläge" """
    Fosterläge enligt kodverk: 0 = head (huvud ) 1 = breech (säte) 2 = oblique (snedläge) 3 = transverse (tvärläge)
    Tillåtna värden enligt XSD: 0, 1, 2, 3.
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalPosition, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalPresentation 0..* SEEHDSRivInteger "Fosterpresentation" """
    Föregående fosterdel enligt kodverk: 0= mobile (rörligt), 1 = movable (ruckbart), 2 = fixed (fix)
    Tillåtna värden enligt XSD: 0, 1, 2, 3.
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalPresentation, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalHeartRate 0..* SEEHDSRivPQTypeHealthcondActoutcome2 "Fosterhjärtfrekvens" """Fosterljud, hjärtslag, ex. bpm [frekvens]"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalHeartRate, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.typeOfLeave 0..* SEEHDSRivInteger "Typ av ledighet" """
    Typ av ledighet enligt kodverk 0 = Sjukskrivning, 1 = Havandekapsledighet, 2 = Föräldrarledighet
    Tillåtna värden enligt XSD: 0, 1, 2.
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.typeOfLeave, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration 0..* BackboneElement "Läkemedel sedan inskrivning" """
    Läkemedel (även kostpreparat) som administrerats sedan registreringen / föregående ”checkup”.
  """
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration.medicament 1..1 SEEHDSRivString "Läkemedel" """Preparat"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration.medicament, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration.dosage 0..1 SEEHDSRivString "Dosering" """Dosering i beskrivande text"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration.dosage, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord 0..1 BackboneElement "Eftervård" """Efterskötning"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord 1..1 BackboneElement "Moderns eftervård" """Efterskötningsjournal, moder"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureSystolic 0..1 SEEHDSRivPQTypeHealthcondActoutcome2 "Systoliskt blodtryck" """Systoliskt blodtryck [tryck]"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureSystolic, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureDiastolic 0..1 SEEHDSRivPQTypeHealthcondActoutcome2 "Diastoliskt blodtryck" """Diastoliskt blodtryck [tryck]"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureDiastolic, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.haemoglobin 0..1 SEEHDSRivPQTypeHealthcondActoutcome2 "Hemoglobin" """Haemoglobin, t.ex. g/L [massa / volym]"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.haemoglobin, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bodyTemperature 0..1 SEEHDSRivDecimal "Kroppstemperatur"
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bodyTemperature, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.scarsOK 0..1 SEEHDSRivBoolean "Ärr OK" """Sår/bristningar/klipp utan anmärkning (true/false)"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.scarsOK, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.sutureRemoved 0..1 SEEHDSRivBoolean "Suturer borttagna" """Suturer borttagna (true/false)"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.sutureRemoved, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.perineumComfortable 0..1 SEEHDSRivBoolean "Perineum OK" """Bäckenbotten utan anmärkning (true/false)"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.perineumComfortable, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.vulvaVaginaPortioOK 0..1 SEEHDSRivBoolean "Vulva/vagina/portio OK" """vulvaVaginaPortio utan anmärkning (true/false)"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.vulvaVaginaPortioOK, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.uterusContracted 0..1 SEEHDSRivBoolean "Uterus kontraherad" """Uterus utan anmärkning (true/false)"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.uterusContracted, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.uterusNote 0..1 SEEHDSRivString "Uterusnotering" """Kommentar till uterus med anmärkning. Kan endast anges då uterusContracted = false"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.uterusNote, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.breastfeeding 0..1 SEEHDSRivBoolean "Amning" """Ammar (true/false)"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.breastfeeding, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord 1..* BackboneElement "Barnets eftervård" """Efterskötningsjournal, för barn ur samma graviditet"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.ordinalNumber 1..1 SEEHDSRivInteger "Löpnummer för barn (vid flerbörd)" """Ordningstal för barnet, med start på 1. Ju äldre barn desto lägre siffra."""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.ordinalNumber, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.weight 0..1 SEEHDSRivPQTypeHealthcondActoutcome2 "Barnets vikt" """Barnets vikt [massa]"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.weight, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore1 0..1 SEEHDSRivInteger "Apgar-poäng 1 min" """Apgar (0..10) efter 1 minut"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore1, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore5 0..1 SEEHDSRivInteger "Apgar-poäng 5 min" """Apgar (0..10) efter 5 minuter"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore5, urn:riv:clinicalprocess:healthcond:actoutcome:2)
* maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore10 0..1 SEEHDSRivInteger "Apgar-poäng 10 min" """Apgar (0..10) efter 10 minuter"""
* insert RivNs(maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore10, urn:riv:clinicalprocess:healthcond:actoutcome:2)
