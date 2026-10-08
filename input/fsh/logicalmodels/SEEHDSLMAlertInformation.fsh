// RIV-TA GetAlertInformation 2.0 – svarsmeddelandet GetAlertInformationResponse.
// Struktur, namn, ordning, namnrymder och XSD-kardinaliteter är genererade från
// riv.clinicalprocess.healthcond.description/schemas/interactions/GetAlertInformationInteraction/GetAlertInformationResponder_2.0.xsd (bitbucket.org/rivta-domains).
// Kardinaliteter är verifierade mot TKB_clinicalprocess_healthcond_description.docx; texter är sammanslagna från tidigare modell och TKB.

Logical: SEEHDSLMAlertInformation
Id: SEEHDSLMAlertInformation
Title: "GetAlertInformation"
Description: """
  Logisk modell för tjänstekontraktet GetAlertInformation
  (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetAlertInformationResponder:2).
  Representerar responsens informationsstruktur: uppmärksamhetsinformation för en patient,
  exempelvis överkänslighet mot läkemedel, allvarlig sjukdom, behandling, smittsam sjukdom,
  vårdbegränsning eller historisk varning.

  Body-strukturen är XOR – exakt en av hypersensitivity, seriousDisease, treatment,
  communicableDisease, restrictionOfCare, unstructuredAlertInformation ska anges per post.
"""
* insert RivRoot(GetAlertInformationResponse, urn:riv:clinicalprocess:healthcond:description:GetAlertInformationResponder:2)
* alertInformation 0..* BackboneElement "Uppmärksamhetsinformation" """Den uppmärksamhetsinformation som matchar begäran."""
* alertInformation.alertInformationHeader 1..1 BackboneElement "Dokumenthuvud (PatientSummaryHeader)" """
    Innehåller basinformation om dokumentet (PatientSummaryHeaderType).
    OBS: documentTitle, documentTime, nullified och nullifiedReason är N/A (0..0) för detta TK.
  """
* insert RivNs(alertInformation.alertInformationHeader, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.documentId 1..1 SEEHDSRivString "Dokumentets identitet" """Dokumentets identitet som är unik inom källsystemet."""
* insert RivNs(alertInformation.alertInformationHeader.documentId, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.sourceSystemHSAId 1..1 SEEHDSRivString "HSA-id för källsystem" """HSA-id för det system som tillgängliggör informationen."""
* insert RivNs(alertInformation.alertInformationHeader.sourceSystemHSAId, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.documentTitle 0..0 SEEHDSRivString "Titel" """N/A"""
* insert RivNs(alertInformation.alertInformationHeader.documentTitle, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.documentTime 0..0 SEEHDSRivTimeStamp "Tidpunkt för dokumentet" """
    N/A
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(alertInformation.alertInformationHeader.documentTime, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.patientId 1..1 SEEHDSRivPersonIdTypeHealthcondDescription2 "Patientidentifierare" """
    Identifierare för patient. id = patientens identifierare (12 tecken).
    type = OID för typ av identifierare.
  """
* insert RivNs(alertInformation.alertInformationHeader.patientId, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.accountableHealthcareProfessional 1..1 BackboneElement "Ansvarig hälso- och sjukvårdsperson" """Information om den hälso- och sjukvårdsperson som är ansvarig för informationen."""
* insert RivNs(alertInformation.alertInformationHeader.accountableHealthcareProfessional, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.authorTime 1..1 SEEHDSRivTimeStamp "Tidpunkt för registrering" """
    Tidpunkt då informationen registrerades. Format: YYYYMMDDhhmmss.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(alertInformation.alertInformationHeader.accountableHealthcareProfessional.authorTime, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId 0..1 SEEHDSRivString "HSA-id för hälso- och sjukvårdspersonal" """HSA-id för hälso- och sjukvårdspersonal."""
* insert RivNs(alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalName 0..1 SEEHDSRivString "Namn" """Namn på hälso- och sjukvårdspersonal."""
* insert RivNs(alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalName, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode 0..1 SEEHDSRivCVTypeHealthcondDescription2 "Befattning (CVType)" """Information om personens befattning. KV Befattning (OID 1.2.752.129.2.2.1.4)."""
* insert RivNs(alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit 0..1 BackboneElement "Organisationsenhet" """Den organisation som hälso- och sjukvårdspersonalen är uppdragstagare i."""
* insert RivNs(alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId 1..1 SEEHDSRivString "HSA-id för organisationsenhet" """HSA-id för organisationsenhet."""
* insert RivNs(alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName 1..1 SEEHDSRivString "Namn på organisationsenhet" """Namn på organisationsenhet."""
* insert RivNs(alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till organisationsenhet" """Telefon till organisationsenhet."""
* insert RivNs(alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail 0..1 SEEHDSRivString "Epost till organisationsenhet" """Epost till organisationsenhet."""
* insert RivNs(alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress 0..1 SEEHDSRivString "Postadress för organisationsenhet" """Postadress för organisationsenhet."""
* insert RivNs(alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation 0..1 SEEHDSRivString "Fysisk plats för organisationsenhet" """Text som anger namn på plats eller ort för organisationens fysiska placering."""
* insert RivNs(alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId 0..1 SEEHDSRivString "HSA-id för vårdenhet" """HSA-id för vårdenhet. Se regel 1 i TKB."""
* insert RivNs(alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId 0..1 SEEHDSRivString "HSA-id för vårdgivare" """HSA-id för vårdgivaren."""
* insert RivNs(alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.legalAuthenticator 0..1 BackboneElement "Signerande person" """Information om vem som signerat informationen i dokumentet."""
* insert RivNs(alertInformation.alertInformationHeader.legalAuthenticator, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.legalAuthenticator.signatureTime 1..1 SEEHDSRivTimeStamp "Tidpunkt för signering" """
    Tidpunkt för signering. Format: YYYYMMDDhhmmss.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(alertInformation.alertInformationHeader.legalAuthenticator.signatureTime, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorHSAId 0..1 SEEHDSRivString "HSA-id för signerande" """HSA-id för person som signerat dokumentet."""
* insert RivNs(alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorHSAId, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorName 0..1 SEEHDSRivString "Namn på signerande person" """Namn i klartext för signerande person."""
* insert RivNs(alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorName, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.approvedForPatient 1..1 SEEHDSRivBoolean "Godkänd för visning till patient" """Anger om information får delas till patient."""
* insert RivNs(alertInformation.alertInformationHeader.approvedForPatient, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.careContactId 0..1 SEEHDSRivString "Vårdkontakts-id" """Identitet för den hälso- och sjukvårdskontakt som uppmärksamhetsinformationen gäller."""
* insert RivNs(alertInformation.alertInformationHeader.careContactId, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.nullified 0..0 SEEHDSRivBoolean "Makulerad" """N/A"""
* insert RivNs(alertInformation.alertInformationHeader.nullified, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationHeader.nullifiedReason 0..0 SEEHDSRivString "Makuleringsorsak" """N/A"""
* insert RivNs(alertInformation.alertInformationHeader.nullifiedReason, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody 1..1 BackboneElement "Uppmärksamhetsinformationens innehåll (AlertInformationBodyType)" """
    AlertInformationBodyType — uppmärksamhetsinformationens informationsinnehåll.
    Exakt en av hypersensitivity, seriousDisease, treatment, communicableDisease,
    restrictionOfCare, unstructuredAlertInformation ska anges (XOR).
  """
* insert RivNs(alertInformation.alertInformationBody, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.typeOfAlertInformation 1..1 SEEHDSRivCVTypeHealthcondDescription2 "Typ av uppmärksamhetssignal (CVType)" """
    Kod som anger vilken typ av uppmärksamhetssignal som avses.
    Bör tas från KV Uppmärksamhetstyp eller KV Informationstyp (OID 1.2.752.129.2.2.2.1).
    OID för KV Uppmärksamhetstyp saknas – använd KV Informationstyp som fallback.
    Regel 2 (NPÖ): För att uppmärksamhetssignaler ska skickas till NPÖ måste en av följande
    KV Informationstyp-koder anges: upp-ube, upp-ube-beh, upp-ube-lbe, upp-ube-kod, upp-uas,
    upp-uas-sjd, upp-vbe, upp-vbe-vbe, upp-arb, upp-arb-smf, upp-arb-smf-vag, upp-arb-smf-sjd,
    upp-est, upp-est-rub, upp-est-inh. Alternativt KV Uppmärksamhetstyp-koder: Överkänslighet,
    Allvarlig sjukdom, Allvarlig behandling, Smittsam sjukdom, Vårdbegränsning,
    Historisk varningsinformation.
  """
* insert RivNs(alertInformation.alertInformationBody.typeOfAlertInformation, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.ascertainedDate 0..1 SEEHDSRivDate "Datum för konstaterande" """
    Datum då förhållandet som föranledde uppmärksamhetssignalen konstaterades.
    Format enligt XSD (DateType): ÅÅÅÅMMDD.
  """
* insert RivNs(alertInformation.alertInformationBody.ascertainedDate, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.verifiedTime 0..1 SEEHDSRivTimeStamp "Tidpunkt för verifiering" """
    Tidpunkt då uppmärksamhetssignalen verifierades i det lokala systemet.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(alertInformation.alertInformationBody.verifiedTime, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.validityTimePeriod 1..1 SEEHDSRivTimePeriodTypeHealthcondDescription2 "Giltighetstid" """
    Tidsintervallet inom vilket uppmärksamhetssignalen är giltig.
    Enligt TKB i detta sammanhang: start 1..1.
  """
* insert RivNs(alertInformation.alertInformationBody.validityTimePeriod, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.alertInformationComment 0..1 SEEHDSRivString "Kommentar" """
    Kommentar av ansvarig hälso- och sjukvårdspersonal angående uppmärksamhetssignalen.
    Vid läkemedelsöverkänslighet kan kommentaren avse anamnes, reaktionsbeskrivning, möjliga agens.
  """
* insert RivNs(alertInformation.alertInformationBody.alertInformationComment, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.obsoleteTime 0..1 SEEHDSRivTimeStamp "Tidpunkt för inaktivering" """
    Tidpunkt då uppmärksamhetssignalen registrerades som inaktuell i det lokala systemet.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(alertInformation.alertInformationBody.obsoleteTime, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.obsoleteComment 0..1 SEEHDSRivString "Kommentar till inaktivering" """Information om varför uppmärksamhetssignalen gjorts inaktuell."""
* insert RivNs(alertInformation.alertInformationBody.obsoleteComment, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.hypersensitivity 0..1 BackboneElement "Överkänslighet (HyperSensitivityType)" """
    XOR med seriousDisease, treatment, communicableDisease, restrictionOfCare, unstructuredAlertInformation.
  """
* insert RivNs(alertInformation.alertInformationBody.hypersensitivity, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.hypersensitivity.typeOfHypersensitivity 0..1 SEEHDSRivCVTypeHealthcondDescription2 "Typ av överkänslighet (CVType)" """
    Precisering av överkänslighetstyp (ICD10/SNOMED).
    T.ex. läkemedelsöverkänslighet, överkänslighet mot födoämne, djur, växt eller kemikalie.
  """
* insert RivNs(alertInformation.alertInformationBody.hypersensitivity.typeOfHypersensitivity, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.hypersensitivity.degreeOfSeverity 0..1 SEEHDSRivCVTypeHealthcondDescription2 "Allvarlighetsgrad (CVType)" """Bedömning av överkänslighetens allvarlighet. KV Allvarlighetsgrad (1.2.752.129.2.2.3.3)."""
* insert RivNs(alertInformation.alertInformationBody.hypersensitivity.degreeOfSeverity, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.hypersensitivity.degreeOfCertainty 0..1 SEEHDSRivCVTypeHealthcondDescription2 "Visshet (CVType)" """Visshetsgrad för överkänsligheten. KV Visshetsgrad (1.2.752.129.2.2.3.11)."""
* insert RivNs(alertInformation.alertInformationBody.hypersensitivity.degreeOfCertainty, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity 0..1 BackboneElement "Läkemedelsöverkänslighet (PharmaceuticalHypersensitivityType)" """Mer detaljerad information om läkemedelsöverkänslighet."""
* insert RivNs(alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.atcSubstance 0..1 SEEHDSRivCVTypeHealthcondDescription2 "ATC-substans (CVType)" """
    Substans eller grupp av substanser som kan orsaka överkänslighetsreaktion.
    ATC-kod på minst treställig nivå ska anges vid livshotande/skadande allvarlighetsgrad.
    OID: 1.2.752.129.2.2.3.1.1.
    CVType-begränsningar (TKB): codeSystem är fast 1.2.752.129.2.2.3.1.1 (ATC).
    codeSystemName, codeSystemVersion och originalText är 0..0 (får ej anges).
    code och displayName är 1..1 (obligatoriska) när atcSubstance anges.
    Enligt TKB i detta sammanhang: code 1..1, codeSystem 1..1, codeSystemName 0..0, codeSystemVersion 0..0, displayName 1..1, originalText 0..0.
  """
* insert RivNs(alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.atcSubstance, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.nonATCSubstance 0..1 SEEHDSRivString "Substans utan ATC-kod" """
    Benämning på aktiv substans utan ATC-kod.
    Ska anges om atcSubstance saknas.
    Villkor (TKB): nonATCSubstance och nonATCSubstanceComment ska BÅDA anges om atcSubstance saknas.
  """
* insert RivNs(alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.nonATCSubstance, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.nonATCSubstanceComment 0..1 SEEHDSRivString "Kommentar till avsaknad ATC-kod" """
    Förklaring till varför ATC-kod inte används.
    Ska anges om atcSubstance saknas.
    Villkor (TKB): Ska anges om atcSubstance saknas (tillsammans med nonATCSubstance).
  """
* insert RivNs(alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.nonATCSubstanceComment, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.pharmaceuticalProductId 0..* SEEHDSRivCVTypeHealthcondDescription2 "Läkemedelsprodukt-id (CVType)" """
    Identifierare för läkemedelsprodukt som kan orsaka överkänslighet. NPL-id (1.2.752.129.2.1.5.1).
  """
* insert RivNs(alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.pharmaceuticalProductId, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity 0..1 BackboneElement "Annan överkänslighet (OtherHypersensitivityType)" """Mer detaljerad information om överkänslighet som ej är läkemedelsöverkänslighet."""
* insert RivNs(alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgent 0..1 SEEHDSRivString "Agens" """Text som beskriver det agens som bedöms kunna orsaka överkänslighetsreaktion."""
* insert RivNs(alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgent, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgentCode 0..1 SEEHDSRivCVTypeHealthcondDescription2 "Agenskod (CVType)" """
    Kod för det agens som bedöms kunna orsaka överkänslighetsreaktion.
    T.ex. LMK-kod (foderkänslighet) eller CAS-kod (kemikalie).
  """
* insert RivNs(alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgentCode, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.seriousDisease 0..1 BackboneElement "Allvarlig sjukdom (SeriousDiseaseType)" """
    XOR med hypersensitivity, treatment, communicableDisease, restrictionOfCare, unstructuredAlertInformation.
  """
* insert RivNs(alertInformation.alertInformationBody.seriousDisease, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.seriousDisease.disease 1..1 SEEHDSRivCVTypeHealthcondDescription2 "Sjukdomskod (CVType)" """Allvarlig sjukdom som patienten har. ICD10/SNOMED rekommenderas."""
* insert RivNs(alertInformation.alertInformationBody.seriousDisease.disease, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.treatment 0..1 BackboneElement "Behandling (TreatmentType)" """
    XOR med hypersensitivity, seriousDisease, communicableDisease, restrictionOfCare, unstructuredAlertInformation.
  """
* insert RivNs(alertInformation.alertInformationBody.treatment, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.treatment.treatmentDescription 1..1 SEEHDSRivString "Behandlingsbeskrivning" """Beskrivning av allvarlig behandling som patienten genomgår."""
* insert RivNs(alertInformation.alertInformationBody.treatment.treatmentDescription, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.treatment.treatmentCode 0..1 SEEHDSRivCVTypeHealthcondDescription2 "Behandlingskod (CVType)" """Preciserad uppgift om behandlingen. KVÅ-kod (1.2.752.116.1.3.2.1.4) rekommenderas."""
* insert RivNs(alertInformation.alertInformationBody.treatment.treatmentCode, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.treatment.pharmaceuticalTreatment 0..* SEEHDSRivCVTypeHealthcondDescription2 "Läkemedel vid behandling (CVType)" """
    Läkemedel som används vid uppmärksammad behandling. ATC-kod (1.2.752.129.2.2.3.1.1) rekommenderas.
  """
* insert RivNs(alertInformation.alertInformationBody.treatment.pharmaceuticalTreatment, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.communicableDisease 0..1 BackboneElement "Smittsam sjukdom (CommunicableDiseaseType)" """
    XOR med hypersensitivity, seriousDisease, treatment, restrictionOfCare, unstructuredAlertInformation.
  """
* insert RivNs(alertInformation.alertInformationBody.communicableDisease, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.communicableDisease.communicableDiseaseCode 1..1 SEEHDSRivCVTypeHealthcondDescription2 "Smittsam sjukdomskod (CVType)" """Kod för smittsam sjukdom. ICD10 rekommenderas."""
* insert RivNs(alertInformation.alertInformationBody.communicableDisease.communicableDiseaseCode, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.communicableDisease.routeOfTransmission 0..1 SEEHDSRivCVTypeHealthcondDescription2 "Smittväg (CVType)" """Kod för hur sjukdomen smittar. KV Smittväg."""
* insert RivNs(alertInformation.alertInformationBody.communicableDisease.routeOfTransmission, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.restrictionOfCare 0..1 BackboneElement "Vårdbegränsning (RestrictionOfCareType)" """
    XOR med hypersensitivity, seriousDisease, treatment, communicableDisease, unstructuredAlertInformation.
  """
* insert RivNs(alertInformation.alertInformationBody.restrictionOfCare, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.restrictionOfCare.restrictionOfCareComment 1..1 SEEHDSRivString "Kommentar om vårdbegränsning" """
    Information om uppmärksammat förhållande som inte avser överkänslighet, sjukdom eller behandling.
  """
* insert RivNs(alertInformation.alertInformationBody.restrictionOfCare.restrictionOfCareComment, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.unstructuredAlertInformation 0..1 BackboneElement "Historisk varning (UnstructuredAlertInformationType)" """
    XOR med hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare.
    Används för tidigare varningsinformation som inte följer NPÖ-strukturen.
  """
* insert RivNs(alertInformation.alertInformationBody.unstructuredAlertInformation, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationHeading 1..1 SEEHDSRivString "Rubrik för historisk varning" """Beskrivande rubrik för tidigare utfärdad varning."""
* insert RivNs(alertInformation.alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationHeading, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationContent 1..1 SEEHDSRivString "Innehåll för historisk varning" """Beskrivning av vad varningen gäller samt viss administrativ information."""
* insert RivNs(alertInformation.alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationContent, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.relatedAlertInformation 0..* BackboneElement "Relaterad uppmärksamhetssignal (RelatedAlertInformationType)" """Information om samband med andra uppmärksamhetssignaler."""
* insert RivNs(alertInformation.alertInformationBody.relatedAlertInformation, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.relatedAlertInformation.typeOfAlertInformationRelationship 1..1 SEEHDSRivCVTypeHealthcondDescription2 "Typ av samband (CVType)" """Typ av samband. KV Samband (1.2.752.129.2.2.2.4)."""
* insert RivNs(alertInformation.alertInformationBody.relatedAlertInformation.typeOfAlertInformationRelationship, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.relatedAlertInformation.relationComment 0..1 SEEHDSRivString "Kommentar till samband" """Kommentar till det aktuella sambandet."""
* insert RivNs(alertInformation.alertInformationBody.relatedAlertInformation.relationComment, urn:riv:clinicalprocess:healthcond:description:2)
* alertInformation.alertInformationBody.relatedAlertInformation.documentId 1..* SEEHDSRivString "Relaterad dokumentidentitet" """Lokalt unik identitet för relaterad uppmärksamhetssignal."""
* insert RivNs(alertInformation.alertInformationBody.relatedAlertInformation.documentId, urn:riv:clinicalprocess:healthcond:description:2)
* result 1..1 BackboneElement "Resultat" """Innehåller information om begäran gick bra eller ej."""
* result.resultCode 1..1 SEEHDSRivString "Resultatkod" """
    Kan endast vara OK, INFO eller ERROR.
    Tillåtna värden enligt XSD: OK, ERROR, INFO.
  """
* insert RivNs(result.resultCode, urn:riv:clinicalprocess:healthcond:description:2)
* result.errorCode 0..1 SEEHDSRivString "Felkod" """
    Sätts endast om resultCode är ERROR. Tillåtna värden: INVALID_REQUEST.
    Tillåtna värden enligt XSD: INVALID_REQUEST.
  """
* insert RivNs(result.errorCode, urn:riv:clinicalprocess:healthcond:description:2)
* result.logId 1..1 SEEHDSRivString "Log-id" """En UUID som kan användas vid felanmälan för att spåra felet."""
* insert RivNs(result.logId, urn:riv:clinicalprocess:healthcond:description:2)
* result.subCode 0..1 SEEHDSRivString "Subkod" """Inga subkoder specificerade."""
* insert RivNs(result.subCode, urn:riv:clinicalprocess:healthcond:description:2)
* result.message 0..1 SEEHDSRivString "Meddelande" """En beskrivande text som kan visas för användaren."""
* insert RivNs(result.message, urn:riv:clinicalprocess:healthcond:description:2)
