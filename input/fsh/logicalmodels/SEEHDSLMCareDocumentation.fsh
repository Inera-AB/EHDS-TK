// RIV-TA GetCareDocumentation 3.0 – svarsmeddelandet GetCareDocumentationResponse.
// Struktur, namn, ordning, namnrymder och XSD-kardinaliteter är genererade från
// riv.clinicalprocess.healthcond.description/schemas/interactions/GetCareDocumentationInteraction/GetCareDocumentationResponder_3.0.xsd (bitbucket.org/rivta-domains).
// Kardinaliteter är verifierade mot TKB_clinicalprocess_healthcond_description.docx; texter är sammanslagna från tidigare modell och TKB.

Invariant: getcaredocumentation-body-xor
Description: "Antingen clinicalDocumentNoteText eller multimediaEntry ska anges, ej båda"
Expression: "clinicalDocumentNoteText.exists() xor multimediaEntry.exists()"
Severity: #error

Invariant: getcaredocumentation-multimedia-xor
Description: "Antingen value eller reference ska anges i multimediaEntry, ej båda"
Expression: "value.exists() xor reference.exists()"
Severity: #error

Logical: SEEHDSLMCareDocumentation
Id: SEEHDSLMCareDocumentation
Title: "GetCareDocumentation"
Description: """
  Logisk modell för tjänstekontraktet GetCareDocumentation
  (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:3).
  Representerar responsens informationsstruktur: journalanteckningar för en patient.
  Anteckningstyper: utredning, åtgärd/behandling, sammanfattning, samordning, inskrivning,
  slutanteckning, anteckning utan fysiskt möte, slutenvårdsanteckning och besöksanteckning.
  Meddelandeformatet är kompatibelt med HL7 v3 CDA v2.
"""
* insert RivRoot(GetCareDocumentationResponse, urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:3)
* careDocumentation 0..* BackboneElement "Journalanteckning" """De anteckningar som matchar begäran. En instans per anteckning."""
* careDocumentation.header 1..1 BackboneElement "JoL-header" """JoL-header v2.2. Innehåller metainformation gemensam för JoL-tjänstekontrakt."""
* insert RivNs(careDocumentation.header, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.header.accessControlHeader 1..1 BackboneElement "Åtkomstkontrollheader" """
    Information för kontroll av åtkomst enligt PDL. Uppgifterna krävs för
    spärrhantering, åtkomstkontroll samt loggning.
  """
* insert RivNs(careDocumentation.header.accessControlHeader, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.header.accessControlHeader.accountableHealthcareProvider 0..1 SEEHDSRivIITypeHealthcondDescription3 "Informationsägande vårdgivare" """Id för informationsägande vårdgivare. HSA-id eller lokalt id."""
* insert RivNs(careDocumentation.header.accessControlHeader.accountableHealthcareProvider, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.header.accessControlHeader.accountableCareUnit 0..1 SEEHDSRivIITypeHealthcondDescription3 "Informationsägande vårdenhet" """Id för informationsägande vårdenhet angivet med HSA-id."""
* insert RivNs(careDocumentation.header.accessControlHeader.accountableCareUnit, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.header.accessControlHeader.patientId 1..1 SEEHDSRivIITypeHealthcondDescription3 "Patientens identitetsbeteckning" """
    Patientens identitetsbeteckning. Personnummer, samordningsnummer eller nationellt reservnummer.
  """
* insert RivNs(careDocumentation.header.accessControlHeader.patientId, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.header.accessControlHeader.careProcessId 0..1 SEEHDSRivIITypeHealthcondDescription3 "Id för individanpassad vårdprocess" """Id för den individanpassade vårdprocess som informationen ingår i."""
* insert RivNs(careDocumentation.header.accessControlHeader.careProcessId, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.header.accessControlHeader.blockComparisonTime 1..1 SEEHDSRivTimeStamp "Jämförelsetidpunkt för spärrkontroll" """
    Den tidpunkt mot vilken spärrkontroll sker vid åtkomst till journalinformation.
    Format: YYYYMMDDhhmmss. Kardinalitet: Obligatorisk.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(careDocumentation.header.accessControlHeader.blockComparisonTime, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.header.accessControlHeader.approvedForPatient 1..1 SEEHDSRivBoolean "Godkänd för visning till patient" """
    Ansvarig vårdpersonals beslut, alternativt baserat på automatisk menprövning,
    om informationen är godkänd för visning till patient.
  """
* insert RivNs(careDocumentation.header.accessControlHeader.approvedForPatient, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.header.sourceSystemId 1..1 SEEHDSRivIITypeHealthcondDescription3 "Källsystem" """
    Det källsystem som informationen lagras i. Fältet root sätts till HSA-id för källsystemet.
  """
* insert RivNs(careDocumentation.header.sourceSystemId, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.header.record 1..1 BackboneElement "Uppgift i patientjournal" """Metainformation avseende journaluppgiften (recorden)."""
* insert RivNs(careDocumentation.header.record, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.header.record.rivId 1..1 SEEHDSRivIITypeHealthcondDescription3 "Journaluppgiftens unika identifierare" """
    Unik och beständig identifierare för uppgift i patientjournal.
    Ska vara unik — samma id får inte förekomma flera gånger (XSD-regel).
  """
* insert RivNs(careDocumentation.header.record.rivId, urn:riv:clinicalprocess:healthcond:description:3)
* insert RivXmlName(careDocumentation.header.record.rivId, id)
* careDocumentation.header.record.timestamp 1..1 SEEHDSRivTimeStamp "Skapandetidpunkt" """
    Första tidpunkten då denna journalinformation skapades.
    Format: YYYYMMDDhhmmss. Kardinalitet: Obligatorisk.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(careDocumentation.header.record.timestamp, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.header.author 0..1 BackboneElement "Dokumentationsansvarig" """Hälso- och sjukvårdspersonal som ansvarar för informationen i journaluppgiften."""
* insert RivNs(careDocumentation.header.author, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.header.author.rivId 0..1 SEEHDSRivIITypeHealthcondDescription3 "HSA-id för dokumentationsansvarig" """HSA-id för hälso- och sjukvårdspersonal. Fältet root sätts till OID för HSA-id."""
* insert RivNs(careDocumentation.header.author.rivId, urn:riv:clinicalprocess:healthcond:description:3)
* insert RivXmlName(careDocumentation.header.author.rivId, id)
* careDocumentation.header.author.name 0..1 SEEHDSRivString "Namn på dokumentationsansvarig" """Namn på hälso- och sjukvårdspersonal."""
* insert RivNs(careDocumentation.header.author.name, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.header.author.timestamp 1..1 SEEHDSRivTimeStamp "Tidpunkt för informationsskapande" """
    Tidpunkt vid vilken journalinformationen skapades av författaren.
    Format: YYYYMMDDhhmmss. Kardinalitet: Obligatorisk.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(careDocumentation.header.author.timestamp, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.header.author.byRole 0..1 SEEHDSRivCVTypeHealthcondDescription3 "Befattning" """
    Information om hälso- och sjukvårdspersonalens befattning vid tidpunkten för dokumentationen.
  """
* insert RivNs(careDocumentation.header.author.byRole, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.header.author.orgUnit 0..1 BackboneElement "Organisationsenhet" """Den organisation som författaren är uppdragstagare i vid dokumentationstillfället."""
* insert RivNs(careDocumentation.header.author.orgUnit, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.header.author.orgUnit.orgUnitHSAId 0..1 SEEHDSRivString "HSA-id för organisationsenhet" """HSA-id för organisationsenhet."""
* insert RivNs(careDocumentation.header.author.orgUnit.orgUnitHSAId, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.header.author.orgUnit.orgUnitName 0..1 SEEHDSRivString "Namn på organisationsenhet" """Namn på den organisation som författaren är uppdragstagare i."""
* insert RivNs(careDocumentation.header.author.orgUnit.orgUnitName, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.header.author.orgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till organisationsenhet" """Telefon till organisationsenhet."""
* insert RivNs(careDocumentation.header.author.orgUnit.orgUnitTelecom, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.header.author.orgUnit.orgUnitEmail 0..1 SEEHDSRivString "E-post till organisationsenhet" """Epost till organisationsenhet."""
* insert RivNs(careDocumentation.header.author.orgUnit.orgUnitEmail, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.header.author.orgUnit.orgUnitAddress 0..1 SEEHDSRivString "Postadress till organisationsenhet" """
    Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis:”Storgatan 12468 91 Lilleby”
  """
* insert RivNs(careDocumentation.header.author.orgUnit.orgUnitAddress, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.header.author.orgUnit.orgUnitLocation 0..1 SEEHDSRivString "Plats för organisationsenhet" """Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering"""
* insert RivNs(careDocumentation.header.author.orgUnit.orgUnitLocation, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.header.signature 0..1 BackboneElement "Signeringsinformation" """Signeringsinformation för journaluppgiften."""
* insert RivNs(careDocumentation.header.signature, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.header.signature.rivId 0..1 SEEHDSRivIITypeHealthcondDescription3 "HSA-id för signerande person" """HSA-id för hälso- och sjukvårdspersonal som signerat journaluppgiften."""
* insert RivNs(careDocumentation.header.signature.rivId, urn:riv:clinicalprocess:healthcond:description:3)
* insert RivXmlName(careDocumentation.header.signature.rivId, id)
* careDocumentation.header.signature.name 0..1 SEEHDSRivString "Namn på signerande person" """Namn på hälso- och sjukvårdspersonal som signerat journaluppgiften."""
* insert RivNs(careDocumentation.header.signature.name, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.header.signature.timestamp 1..1 SEEHDSRivTimeStamp "Tidpunkt för signering" """
    Anger tidpunkten för signering av uppgift i patientjournal.
    Format: YYYYMMDDhhmmss. Kardinalitet: Valfri.
    TKB anger kardinaliteten 0..1, men XSD:n kräver 1..1. Modellen följer XSD:n.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(careDocumentation.header.signature.timestamp, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.header.signature.byRole 0..1 SEEHDSRivCVTypeHealthcondDescription3 "Befattning vid signering" """Information om signerande persons befattning."""
* insert RivNs(careDocumentation.header.signature.byRole, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.body 1..1 BackboneElement "Journalanteckningens innehåll" """Journalanteckning — informationsinnehållet i anteckningen."""
* insert RivNs(careDocumentation.body, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.body obeys getcaredocumentation-body-xor
* careDocumentation.body.clinicalDocumentNoteCode 1..1 SEEHDSRivCVTypeHealthcondDescription3 "Typ av anteckning" """
    Typ av anteckning. Kod tas från KV Anteckningstyp (OID: 1.2.752.129.2.2.2.11).
    Kodverk/värdemängd: ClinicalDocumentNoteCodeVS.
  """
* insert RivNs(careDocumentation.body.clinicalDocumentNoteCode, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.body.clinicalDocumentNoteTitle 0..1 SEEHDSRivString "Rubrik på anteckningen" """Titel på anteckningen."""
* insert RivNs(careDocumentation.body.clinicalDocumentNoteTitle, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.body.clinicalDocumentNoteText 0..1 SEEHDSRivString "Anteckningens textinnehåll" """
    Journalanteckningens innehåll i text. Texten kan vara formaterad i DocBook-format
    och ska då vara 'entity encoded'. Ömsesidigt uteslutande med multimediaEntry.
  """
* insert RivNs(careDocumentation.body.clinicalDocumentNoteText, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.body.multimediaEntry 0..1 BackboneElement "Binär bilaga" """
    Journalanteckningens innehåll i form av en multimediafil.
    Ömsesidigt uteslutande med clinicalDocumentNoteText.
  """
* insert RivNs(careDocumentation.body.multimediaEntry, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.body.multimediaEntry obeys getcaredocumentation-multimedia-xor
* careDocumentation.body.multimediaEntry.mediaType 1..1 SEEHDSRivString "Medietyp" """Typ av multimedia (MIME-typ). Tillåtna värden enligt MediaTypeEnum."""
* insert RivNs(careDocumentation.body.multimediaEntry.mediaType, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.body.multimediaEntry.value 0..1 SEEHDSRivBase64Binary "Binärdata" """Binärdata som representerar objektet. Ömsesidigt uteslutande med reference."""
* insert RivNs(careDocumentation.body.multimediaEntry.value, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.body.multimediaEntry.reference 0..1 SEEHDSRivAnyURI "Referens till extern fil" """Referens till extern binär fil i form av en URL. Ömsesidigt uteslutande med value."""
* insert RivNs(careDocumentation.body.multimediaEntry.reference, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.body.dissentingOpinion 0..* BackboneElement "Avvikande mening" """
    Om patienten eller någon för denna ansvarig person är av avvikande mening om
    någon del av journalanteckningen.
  """
* insert RivNs(careDocumentation.body.dissentingOpinion, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.body.dissentingOpinion.opinionId 0..1 SEEHDSRivIITypeHealthcondDescription3 "Id för avvikande mening" """En universellt unik identifierare för den avvikande meningen."""
* insert RivNs(careDocumentation.body.dissentingOpinion.opinionId, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.body.dissentingOpinion.authorTime 1..1 SEEHDSRivTimeStamp "Tidpunkt för avvikande mening" """
    Tidpunkten då den avvikande meningen författades. Format: YYYYMMDDhhmmss.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(careDocumentation.body.dissentingOpinion.authorTime, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.body.dissentingOpinion.opinion 1..1 SEEHDSRivString "Text för avvikande mening" """Text som innehåller den avvikande meningen."""
* insert RivNs(careDocumentation.body.dissentingOpinion.opinion, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.body.dissentingOpinion.personId 1..1 SEEHDSRivIITypeHealthcondDescription3 "Id för författare till avvikande mening" """
    Id för författaren av den avvikande meningen.
    root sätts till OID för typ av identifierare. För personnummer: 1.2.752.129.2.1.3.1.
    extension sätts till personens identifierare (12 tecken).
    Enligt TKB i detta sammanhang: extension 1..1.
  """
* insert RivNs(careDocumentation.body.dissentingOpinion.personId, urn:riv:clinicalprocess:healthcond:description:3)
* careDocumentation.body.dissentingOpinion.personName 1..1 SEEHDSRivString "Namn på författare till avvikande mening" """Namnet på författaren av den avvikande meningen."""
* insert RivNs(careDocumentation.body.dissentingOpinion.personName, urn:riv:clinicalprocess:healthcond:description:3)
* hasMore 0..* BackboneElement "Indikation om fler poster" """
    Anges av tjänsteproducent när det finns ytterligare information att hämta
    (partiell datahämtning). Referensen ska vara giltig i minst en timme.
  """
* hasMore.logicalAddress 1..1 SEEHDSRivString "Logisk adress för partiell hämtning" """Den logiska adressen till tjänsteproducenten som tillhandahåller resterande information."""
* hasMore.reference 1..1 SEEHDSRivString "Referens för partiell hämtning" """En unik identifierare som tjänstekonsumenten anger i nästa anrop via hasMoreReference."""
* result 1..1 BackboneElement "Resultat" """Innehåller information om det gick bra eller ej att besvara begäran."""
* result.resultCode 1..1 SEEHDSRivString "Resultatkod" """
    Anger resultatet av besvarad förfrågan. Tillåtna värden: OK, INFO, ERROR.
    Tillåtna värden enligt XSD: OK, ERROR, INFO.
  """
* insert RivNs(result.resultCode, urn:riv:clinicalprocess:healthcond:description:3)
* result.resultText 0..1 SEEHDSRivString "Resultattext" """Optionellt felmeddelande som innehåller information om eventuella fel."""
* insert RivNs(result.resultText, urn:riv:clinicalprocess:healthcond:description:3)
