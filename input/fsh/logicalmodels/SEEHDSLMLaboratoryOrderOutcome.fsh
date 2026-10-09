// RIV-TA GetLaboratoryOrderOutcome 4.2 – svarsmeddelandet GetLaboratoryOrderOutcomeResponse.
// Struktur, namn, ordning, namnrymder och XSD-kardinaliteter är genererade från
// riv.clinicalprocess.healthcond.actoutcome/schemas/interactions/GetLaboratoryOrderOutcomeInteraction/GetLaboratoryOrderOutcomeResponder_4.2.xsd (bitbucket.org/rivta-domains).
// Kardinaliteter är verifierade mot TKB_clinicalprocess_healthcond_actoutcome.docx; texter är sammanslagna från tidigare modell och TKB.

Logical: SEEHDSLMLaboratoryOrderOutcome
Id: SEEHDSLMLaboratoryOrderOutcome
Title: "GetLaboratoryOrderOutcome"
Description: """
  Logisk modell för tjänstekontraktet GetLaboratoryOrderOutcome
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcome:4).
  Representerar responsens informationsstruktur — multidisciplinära laboratoriesvar
  för en patient.
"""
* insert RivRoot(GetLaboratoryOrderOutcomeResponse, urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcomeResponder:4)
* laboratoryOrderOutcome 0..* BackboneElement "Laboratoriesvar (ett per beställning)" """En labbeställning med tillhörande svar. Kardinalitet: Valfri, lista."""
* laboratoryOrderOutcome.header 1..1 BackboneElement "Header med åtkomstkontroll och metadata" """
    Innehåller information som är gemensam för uppgifter i patientjournalen som tillgängliggörs, exempelvis information om vilken hälso- och sjukvårdspersonal som är angiven som författare av en uppgift samt information om signering.
  """
* insert RivNs(laboratoryOrderOutcome.header, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.header.accessControlHeader 1..1 BackboneElement "Åtkomstkontrollhuvud (PDL)" """
    Information som används för kontroll av åtkomst. Tjänstekonsumenten får enbart ta del av uppgifterna i AccessControlHeaderType innan övrig information om uppgift i patientjournal kan bearbetas.
  """
* insert RivNs(laboratoryOrderOutcome.header.accessControlHeader, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.header.accessControlHeader.accountableCareGiver 1..1 SEEHDSRivIITypeHealthcondActoutcome4 "Ansvarig vårdgivare (HSA-id)" """HSA-id för den vårdgivare som är ansvarig för posten. Obligatorisk."""
* insert RivNs(laboratoryOrderOutcome.header.accessControlHeader.accountableCareGiver, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.header.accessControlHeader.accountableCareUnit 1..1 SEEHDSRivIITypeHealthcondActoutcome4 "Ansvarig vårdenhet (HSA-id)" """HSA-id för den vårdenhet som är ansvarig för posten. Obligatorisk."""
* insert RivNs(laboratoryOrderOutcome.header.accessControlHeader.accountableCareUnit, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.header.accessControlHeader.originalPatientId 0..1 SEEHDSRivIITypeHealthcondActoutcome4 "Ursprungligt patient-id" """
    Personidentifieraren som den tillgängliggjorda uppgiften lagrades under då den skapades. Detta fält anges endast då det skiljer sig från patientId, exempelvis då patienten tidigare erhållit vård som dokumenterats under ett samordningsnummer för att sedan bli folkbokförd i Sverige och få ett personnummer. root sätts till OID för typ av personidentifierare. För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. För andra typer av personidentifierare sätts root till aktuell OID. extension sätts till patientens identifierare. Anges med 12 tecken utan avskiljare.
  """
* insert RivNs(laboratoryOrderOutcome.header.accessControlHeader.originalPatientId, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.header.accessControlHeader.careProcessId 0..1 SEEHDSRivString "Vårdprocessid (UUID)" """
    Id för den individanpassade vårdprocess som uppgiften journalförts inom ramen för. Består av ett lokalt genererat UUID.
  """
* insert RivNs(laboratoryOrderOutcome.header.accessControlHeader.careProcessId, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.header.accessControlHeader.lockTime 0..1 SEEHDSRivTimeStamp "lockTime" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(laboratoryOrderOutcome.header.accessControlHeader.lockTime, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.header.accessControlHeader.blockComparisonTime 1..1 SEEHDSRivTimeStamp "Tidpunkt för spärrkontroll" """
    Den tidpunkt mot vilken spärrkontroll sker vid åtkomst med syftet sammanhållen journalföring. Gäller både yttre (mellan vårdgivare) och inre (mellan vårdenheter) spärr. I detta fält anges provtagningstidpunkt. Om ett svar innehåller analyser utförda på olika prov anges tidpunkt för det senast tagna provet.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(laboratoryOrderOutcome.header.accessControlHeader.blockComparisonTime, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.header.accessControlHeader.approvedForPatient 1..1 SEEHDSRivBoolean "Godkänd för patientvisning" """Anger om informationsägaren godkänt att patienten kan ta del av informationen."""
* insert RivNs(laboratoryOrderOutcome.header.accessControlHeader.approvedForPatient, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.header.accessControlHeader.patientId 0..1 SEEHDSRivIITypeHealthcondActoutcome4 "Patientens id i svaret" """
    Personidentifierare för patienten. root sätts till OID för typ av personidentifierare. För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. För andra typer av personidentifierare sätts root till aktuell OID. extension sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. Obligatorisk vid nyanslutning
  """
* insert RivNs(laboratoryOrderOutcome.header.accessControlHeader.patientId, urn:riv:clinicalprocess:healthcond:actoutcome:4.1)
* laboratoryOrderOutcome.header.sourceSystemId 1..1 SEEHDSRivIITypeHealthcondActoutcome4 "Källsystemets HSA-id" """
    Det källsystem som uppgiften lagras i. root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1) extension sätts till källsystemets HSA-id
  """
* insert RivNs(laboratoryOrderOutcome.header.sourceSystemId, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.header.record 1..1 BackboneElement "Poststatus och tidpunkt" """Information avseende uppgiften som tillgängliggörs."""
* insert RivNs(laboratoryOrderOutcome.header.record, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.header.record.rivId 1..1 SEEHDSRivIITypeHealthcondActoutcome4 "Postens unika id" """
    Identifierare för uppgift i patientjournal. Identifieraren ska vara konsistent och beständig mellan olika majorversioner av ett tjänstekontrakt. Detta för att en tjänstekonsument ska kunna ta bort dubbletter från de tjänsteproducenter som producerar via flera majorversioner. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. Identifieraren ska även vara konsistent och beständig mellan olika tjänstekontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. Motsvarar Laboratoriesvar.id i informationsspecifikationen [R6]
  """
* insert RivNs(laboratoryOrderOutcome.header.record.rivId, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* insert RivXmlName(laboratoryOrderOutcome.header.record.rivId, id)
* laboratoryOrderOutcome.header.record.timestamp 1..1 SEEHDSRivTimeStamp "Tidpunkt för posten" """
    Den tidpunkt då uppgiften skapades i tjänsteproducentens källsystem. Denna information ska vara beständig även om tjänsteproducenten migrerat uppgiften från ett källsystem till en annat. Motsvarar Laboratoriesvar.svarstidpunkt i informationsspecifikationen [R6]
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(laboratoryOrderOutcome.header.record.timestamp, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.header.author 0..1 BackboneElement "Dokumentationsansvarig" """
    Information avseende dokumentation av uppgiften som tillgängliggörs. Notera att den som registrerar uppgiften från annan källa, exempelvis en medicinsk sekreterare som transkriberar ett diktat, inte avses.
  """
* insert RivNs(laboratoryOrderOutcome.header.author, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.header.author.rivId 0..1 SEEHDSRivIITypeHealthcondActoutcome4 "Författarens HSA-id" """
    HSA-id för hälso- och sjukvårdspersonal som dokumenterat uppgiften som tillgängliggörs. root sätts till OID för HSA-id (1.2.752.129.2.1.4.1) extension sätts till HSA-id
  """
* insert RivNs(laboratoryOrderOutcome.header.author.rivId, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* insert RivXmlName(laboratoryOrderOutcome.header.author.rivId, id)
* laboratoryOrderOutcome.header.author.name 0..1 SEEHDSRivString "Författarens namn" """Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn."""
* insert RivNs(laboratoryOrderOutcome.header.author.name, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.header.author.timestamp 1..1 SEEHDSRivTimeStamp "Tidpunkt för dokumentation" """
    Tidpunkt då uppgiften dokumenterades eller senast uppdaterades. I de fall då uppgiften ursprungligen dokumenterats eller uppdaterats i ett annat informationssystem än tjänsteproducentens källsystem (t.ex. laboratorieinformationssystem), ska tidpunkten spegla informationen från systemet där uppgiften ursprungligen dokumenterades.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(laboratoryOrderOutcome.header.author.timestamp, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.header.author.byRole 0..1 SEEHDSRivCVTypeHealthcondActoutcome4 "Yrkesroll vid dokumentation" """
    Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid dokumentationstidpunkten. Anges med HSAs kodverk Befattning (OID: 1.2.752.129.2.2.1.4). Om kod inte är tillgänglig anges befattning som klartext i datatypens attribut originalText.
  """
* insert RivNs(laboratoryOrderOutcome.header.author.byRole, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.header.author.orgUnit 0..1 BackboneElement "Organisationsenhet" """Den organisation som hälso- och sjukvårdspersonalen är uppdragstagare på."""
* insert RivNs(laboratoryOrderOutcome.header.author.orgUnit, urn:riv:clinicalprocess:healthcond:actoutcome:4.1)
* laboratoryOrderOutcome.header.author.orgUnit.rivId 0..1 SEEHDSRivIITypeHealthcondActoutcome4 "OrgUnit HSA-id" """
    Id för organisationsenheten där vårdpersonen verkat på uppdrag av. Om tillgängligt skall HSAid anges. Notera att det är den verksamhet där utrustningen använts som avses, inte utrustningens ägare. I de fall HSAid saknas kan ett för källsystemet unikt id användas varvid fältet root sätts till källsystemets HSAid och fältet extions sätts till lokalt id i källsystemet. Om HSAid används sätts fältet root till OID för HSA-katalogen (1.2.752.129.2.1.4.1) och fältet extension sätts till HSAid. Om organisationsnummer används skall fältet root sättas till OID för Skatteverkets organisationsnummer (2.5.4.97) och fältet extension sättas till organisationsnumret.
  """
* insert RivNs(laboratoryOrderOutcome.header.author.orgUnit.rivId, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* insert RivXmlName(laboratoryOrderOutcome.header.author.orgUnit.rivId, id)
* laboratoryOrderOutcome.header.author.orgUnit.name 1..1 SEEHDSRivString "OrgUnit namn" """Namn på organisationsenhet. Om tillgängligt skall detta anges."""
* insert RivNs(laboratoryOrderOutcome.header.author.orgUnit.name, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.header.signature 0..1 BackboneElement "Signatär" """
    Information avseende signering av laboratoriesvaret. Laboratoriesvaret signeras av en medicinskt ansvarig hälso- och sjukvårdspersonal på den ansvariga enheten. Den ansvariga enheten kan vara den remissmottagande enheten eller den utförande enheten (exempelvis vid patientnära analyser).
  """
* insert RivNs(laboratoryOrderOutcome.header.signature, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.header.signature.rivId 0..1 SEEHDSRivIITypeHealthcondActoutcome4 "Signatärens HSA-id" """
    HSA-id för hälso- och sjukvårdspersonal som signerat uppgiften som tillgängliggörs. root sätts till OID för HSA-id (1.2.752.129.2.1.4.1) extension sätts till HSA-id
  """
* insert RivNs(laboratoryOrderOutcome.header.signature.rivId, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* insert RivXmlName(laboratoryOrderOutcome.header.signature.rivId, id)
* laboratoryOrderOutcome.header.signature.name 0..1 SEEHDSRivString "Signatärens namn" """Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn."""
* insert RivNs(laboratoryOrderOutcome.header.signature.name, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.header.signature.timestamp 1..1 SEEHDSRivTimeStamp "Signeringstidpunkt" """
    Tidpunkt då uppgiften signerades.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(laboratoryOrderOutcome.header.signature.timestamp, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.header.signature.byRole 0..1 SEEHDSRivCVTypeHealthcondActoutcome4 "Yrkesroll vid signering" """
    Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid signeringstidpunkten. Anges med HSAs kodverk Befattning (OID: 1.2.752.129.2.2.1.4). Om kod inte är tillgänglig anges befattning i klartext i datatypens attribut originalText.
  """
* insert RivNs(laboratoryOrderOutcome.header.signature.byRole, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.header.signature.orgUnit 0..0 BackboneElement "Signatärens organisationsenhet" """Anges ej för Signature"""
* insert RivNs(laboratoryOrderOutcome.header.signature.orgUnit, urn:riv:clinicalprocess:healthcond:actoutcome:4.1)
* laboratoryOrderOutcome.header.signature.orgUnit.rivId 0..1 SEEHDSRivIITypeHealthcondActoutcome4 "OrgUnit HSA-id" """
    Id för organisationsenheten där vårdpersonen verkat på uppdrag av. Om tillgängligt skall HSAid anges. Notera att det är den verksamhet där utrustningen använts som avses, inte utrustningens ägare. I de fall HSAid saknas kan ett för källsystemet unikt id användas varvid fältet root sätts till källsystemets HSAid och fältet extions sätts till lokalt id i källsystemet. Om HSAid används sätts fältet root till OID för HSA-katalogen (1.2.752.129.2.1.4.1) och fältet extension sätts till HSAid. Om organisationsnummer används skall fältet root sättas till OID för Skatteverkets organisationsnummer (2.5.4.97) och fältet extension sättas till organisationsnumret.
  """
* insert RivNs(laboratoryOrderOutcome.header.signature.orgUnit.rivId, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* insert RivXmlName(laboratoryOrderOutcome.header.signature.orgUnit.rivId, id)
* laboratoryOrderOutcome.header.signature.orgUnit.name 1..1 SEEHDSRivString "OrgUnit namn" """Namn på organisationsenhet. Om tillgängligt skall detta anges."""
* insert RivNs(laboratoryOrderOutcome.header.signature.orgUnit.name, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body 1..1 BackboneElement "Beställnings- och svarsinformation" """Information om laboratoriesvaret."""
* insert RivNs(laboratoryOrderOutcome.body, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.identifier 1..1 SEEHDSRivIITypeHealthcondActoutcome4 "Beställningens unika id" """Angivelse av identitetsbeteckning för laboratoriesvaret."""
* insert RivNs(laboratoryOrderOutcome.body.identifier, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.laboratoryIdentifier 0..1 SEEHDSRivIITypeHealthcondActoutcome4 "Laboratoriets beställningsnummer" """Angivelse av identitetsbeteckning för laboratoriets arbetsorder. Benämns även som LID."""
* insert RivNs(laboratoryOrderOutcome.body.laboratoryIdentifier, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.type 1..1 SEEHDSRivCVTypeHealthcondActoutcome4 "Typ av laboratoriebeställning" """
    Kod för status av laboratoriesvar. Använd FHIR value set Diagnostic Report Status. Giltiga koder är final, partial eller preliminary. Se kodverket för beskrivning av respektive kod. code: En av koderna final, partial eller preliminary codeSystem: 2.16.840.1.113883.4.642.3.235 displayName: Klartext motsvarande den använda koden.
  """
* insert RivNs(laboratoryOrderOutcome.body.type, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.text 0..1 SEEHDSRivString "Fritext om beställningen" """Angivelse av utlåtande eller kommentar som gäller hela laboratoriesvaret."""
* insert RivNs(laboratoryOrderOutcome.body.text, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.referral 0..1 BackboneElement "Kopplad remiss" """Den remiss som ligger till grund för svaret."""
* insert RivNs(laboratoryOrderOutcome.body.referral, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.referral.identifier 1..1 SEEHDSRivIITypeHealthcondActoutcome4 "Remissens id" """
    Angivelse av identitetsbeteckning för remissen. root: logisk adress extension: remissens id, även kallad RID
  """
* insert RivNs(laboratoryOrderOutcome.body.referral.identifier, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.referral.timestamp 1..1 SEEHDSRivTimeStamp "Remissens tidpunkt" """
    Tidsangivelse för när remiss skapats.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(laboratoryOrderOutcome.body.referral.timestamp, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.referral.version 0..1 SEEHDSRivInteger "Remissversion" """Version av remiss."""
* insert RivNs(laboratoryOrderOutcome.body.referral.version, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.referral.question 0..1 SEEHDSRivString "Frågeställning i remissen" """Remissens frågeställning."""
* insert RivNs(laboratoryOrderOutcome.body.referral.question, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.referral.requestedCareService 0..* SEEHDSRivCVTypeHealthcondActoutcome4 "Begärd vårdtjänst" """
    Kod för efterfrågad tjänst från utbudskatalog. Det finns inget kodverk eller urval utpekat för detta attribut. Regel 3.4 Om kod ej kan anges kan datatypens attribut originalText användas för en fritextrepresentation.
  """
* insert RivNs(laboratoryOrderOutcome.body.referral.requestedCareService, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.referral.requester 0..1 BackboneElement "Remittent" """Hälso- och sjukvårdspersonal som skrivit remiss."""
* insert RivNs(laboratoryOrderOutcome.body.referral.requester, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.referral.requester.rivId 0..1 SEEHDSRivIITypeHealthcondActoutcome4 "Remittentens HSA-id" """
    HSA-id för hälso- och sjukvårdspersonal. root sätts till OID för HSA-id (1.2.752.129.2.1.4.1) extension sätts till HSA-id
  """
* insert RivNs(laboratoryOrderOutcome.body.referral.requester.rivId, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* insert RivXmlName(laboratoryOrderOutcome.body.referral.requester.rivId, id)
* laboratoryOrderOutcome.body.referral.requester.name 0..1 SEEHDSRivString "Remittentens namn" """Namn på hälso- och sjukvårdspersonal"""
* insert RivNs(laboratoryOrderOutcome.body.referral.requester.name, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.referral.requester.byRole 0..1 SEEHDSRivCVTypeHealthcondActoutcome4 "Remittentens yrkesroll" """
    Information om hälso- och sjukvårdspersonalens befattning. Om möjligt skall kod från HSA:s kodverk Befattning (OID: 1.2.752.129.2.2.1.4) [R3] användas för att ange personens befattning så som den var angiven i HSA-katalogen vid tidpunkten. Om kod inte är tillgänglig anges befattning i klartext i CV-typens attribut originalText.
  """
* insert RivNs(laboratoryOrderOutcome.body.referral.requester.byRole, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.referral.requester.orgUnit 0..1 BackboneElement "Remittentens org-enhet" """
    Den organisation som remittenten är uppdragstagare på. För detta fält är det obligatoriskt att ange både orgUnitType.id samt orgUnitType.name.
  """
* insert RivNs(laboratoryOrderOutcome.body.referral.requester.orgUnit, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.referral.requester.orgUnit.rivId 0..1 SEEHDSRivIITypeHealthcondActoutcome4 "OrgUnit HSA-id" """
    Id för organisationsenheten där vårdpersonen verkat på uppdrag av. Om tillgängligt skall HSAid anges. Notera att det är den verksamhet där utrustningen använts som avses, inte utrustningens ägare. I de fall HSAid saknas kan ett för källsystemet unikt id användas varvid fältet root sätts till källsystemets HSAid och fältet extions sätts till lokalt id i källsystemet. Om HSAid används sätts fältet root till OID för HSA-katalogen (1.2.752.129.2.1.4.1) och fältet extension sätts till HSAid. Om organisationsnummer används skall fältet root sättas till OID för Skatteverkets organisationsnummer (2.5.4.97) och fältet extension sättas till organisationsnumret.
  """
* insert RivNs(laboratoryOrderOutcome.body.referral.requester.orgUnit.rivId, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* insert RivXmlName(laboratoryOrderOutcome.body.referral.requester.orgUnit.rivId, id)
* laboratoryOrderOutcome.body.referral.requester.orgUnit.name 1..1 SEEHDSRivString "OrgUnit namn" """Namn på organisationsenhet. Om tillgängligt skall detta anges."""
* insert RivNs(laboratoryOrderOutcome.body.referral.requester.orgUnit.name, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.referral.referralInformation 0..1 BackboneElement "Remissinformation" """Ytterligare information från beställaren."""
* insert RivNs(laboratoryOrderOutcome.body.referral.referralInformation, urn:riv:clinicalprocess:healthcond:actoutcome:4.2)
* laboratoryOrderOutcome.body.referral.referralInformation.referralComment 0..1 SEEHDSRivString "Remisskommentar" """Kommentar på beställningen av laboratorieundersökningen."""
* insert RivNs(laboratoryOrderOutcome.body.referral.referralInformation.referralComment, urn:riv:clinicalprocess:healthcond:actoutcome:4.2)
* laboratoryOrderOutcome.body.referral.referralInformation.referralMedicalInformation 0..1 SEEHDSRivString "Medicinsk remissinformation" """
    Medicinsk information som angetts i beställningen relaterad till laboratorieundersökningen.
  """
* insert RivNs(laboratoryOrderOutcome.body.referral.referralInformation.referralMedicalInformation, urn:riv:clinicalprocess:healthcond:actoutcome:4.2)
* laboratoryOrderOutcome.body.groupOfAnalyses 0..* BackboneElement "Analysgrupp (panel)" """En grupp av relaterade analyser (t.ex. ett analyspaket). Kardinalitet: Valfri, lista."""
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.name 0..1 SEEHDSRivString "Gruppens namn" """Namn eller benämning för hela analysgruppen. Obligatorisk om attributet comment anges."""
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.name, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.comment 0..1 SEEHDSRivString "Kommentar till gruppen" """Kommentar för hela analysgruppen. Om en kommentar anges ska även attributet name anges."""
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.comment, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.code 0..1 SEEHDSRivCVTypeHealthcondActoutcome4 "Gruppens kod" """
    Listkoder (NPU) som fungerar som en rubrik-kod för de ingående analyserna. code.code: Kod från “Urval analyskoder laboratoriemedicin” (se [R16]) code.codeSystem: 1.2.752.108.1 Regel 3.5 Om kod ej kan anges kan datatypens attribut originalText användas för en fritextrepresentation.
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.code, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis 1..* BackboneElement "Enskild analys" """Utförd analys."""
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.identifier 0..1 SEEHDSRivIITypeHealthcondActoutcome4 "Analysens id" """Id för utförd analys."""
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.identifier, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.timestamp 0..1 SEEHDSRivTimeStamp "Tidpunkt för analysen" """
    Den tidpunkt då analysen utfördes.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.timestamp, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.code 1..1 SEEHDSRivCVTypeHealthcondActoutcome4 "Analysens kod (t.ex. NPU)" """
    Kod (NPU) för den analys som utförts. code.code: Kod från “Urval analyskoder laboratoriemedicin” (se [R16]) code.codeSystem: 1.2.752.108.1 Regel 3.5 Om kod ej kan anges kan datatypens attribut originalText användas för en fritextrepresentation.
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.code, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.method 0..1 SEEHDSRivCVTypeHealthcondActoutcome4 "Analysmetod" """
    Kod (SNOMED-CT-SE) för den typ av tillvägagångssätt för utförandet av analysen som avses. code.code: Kod från Urval analysmetod laboratoriemedicin (OID 1.2.752.129.5.1.18) (se [R10]) code.codeSystem: 1.2.752.116.2.1.1 Regel 3.5 Om kod ej kan anges kan datatypens attribut originalText användas för en fritextrepresentation.
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.method, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.status 0..1 SEEHDSRivCVTypeHealthcondActoutcome4 "Analysstatus" """
    Kod (SNOMED-CT-SE) för analysens status. code.code: Kod från Urval analysstatus laboratoriemedicin (OID 1.2.752.129.5.1.6) (se [R10]) code.codeSystem: 1.2.752.116.2.1.1 Regel 3.5 Om status utelämnas ska detta tolkas som att analysen är slutförd. Fritextalternativ kan ej anges i datatypens attribut originalText.
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.status, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.comment 0..1 SEEHDSRivString "Kommentar till analysen" """Kommentar för enskild analys, exempelvis att svaret inte får användas för biobanksinfo."""
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.comment, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.accredited 0..1 SEEHDSRivBoolean "Ackrediterad analys" """
    Om analysen är ackrediterad sätts fältet till true. Om analysen inte är ackrediterad sätts fältet till false. Om analysens ackrediteringsstatus är okänd utelämnas elementet.
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.accredited, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen 0..* BackboneElement "Prov" """Information om ett prov."""
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.identifier 0..1 SEEHDSRivIITypeHealthcondActoutcome4 "Provnummer" """Identitetsbeteckning för ett prov."""
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.identifier, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.material 0..1 SEEHDSRivCVTypeHealthcondActoutcome4 "Provmaterial" """
    Kod (SNOMED-CT-SE) för typ av provmaterial. Koden för provmaterial kan även innefatta information om provtagningsmetod. code: Kod från Urval provtyp laboratoriemedicin (OID 1.2.752.129.5.1.13) (se [R10]) codeSystem: 1.2.752.116.2.1.1 Regel 3.5 Om kodad representation av provmaterialtyp från nationellt urval saknas kan datatypens attribut originalText användas för en fritextrepresentation.
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.material, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.timestamp 1..1 SEEHDSRivTimeStamp "Provtagningstidpunkt" """
    Angivelse av den tidpunkt då provet är taget.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.timestamp, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.anatomicalLocation 0..1 SEEHDSRivCVTypeHealthcondActoutcome4 "Anatomisk plats" """
    Kod (SNOMED-CT-SE) som anger var provet är taget. Exempel: höger arm, vänster njure. code: Kod från Urval anatomisk lokalisation laboratoriemedicin (OID 1.2.752.129.5.1.7) (se [R10]) codeSystem: 1.2.752.116.2.1.1 Regel 3.5 Om kodad representation av lokalisation från nationellt urval saknas används endast CV-attributet originalText för att ange textuellt alternativ.
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.anatomicalLocation, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.comment 0..1 SEEHDSRivString "Kommentar om provet" """Angivelse av kommentar om enskilt prov."""
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.comment, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity 0..* BackboneElement "Provrelaterad aktivitet" """
    Håller information om aktiviteter relaterade till hantering av provet. Inkluderar även t.ex. aktiviteter i samband med transport, frysning, förvaring, bearbetning och delning i sekundärprov.
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity.code 1..1 SEEHDSRivCVTypeHealthcondActoutcome4 "Aktivitetskod" """
    Kod (SNOMED-CT-SE) för provrelaterad aktivitet. code: Kod från SNOMED-CT-SE codeSystem: 1.2.752.116.2.1.1 Det finns inget urval utpekat för detta attribut. Regel 3.4
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity.code, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity.time 1..1 SEEHDSRivTimePeriodTypeHealthcondActoutcome4 "Aktivitetens tidsperiod" """
    Angivelse av tidpunkt eller tidsintervall då den provrelaterade aktiviteten utfördes. Om tidpunkt anges sätts start- och sluttid till samma tidpunkt.
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity.time, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity.method 0..1 SEEHDSRivCVTypeHealthcondActoutcome4 "Aktivitetsmetod" """
    Kod (SNOMED-CT-SE) för metod för provrelaterad aktivitet. code: Kod från SNOMED-CT-SE codeSystem: 1.2.752.116.2.1.1 Det finns inget urval utpekat för detta attribut. Regel 3.4
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity.method, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.container 0..* BackboneElement "Provbehållare" """Information om den eller de provbehållare som provet förvaras i."""
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.container, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.container.identifier 0..* SEEHDSRivIITypeHealthcondActoutcome4 "Behållarens id" """Identitetsbeteckning för en provbehållare."""
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.container.identifier, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.container.type 1..1 SEEHDSRivCVTypeHealthcondActoutcome4 "Behållartyp" """
    Kod (SNOMED-CT-SE) för typ av provbehållare. code: Kod från Urval provbehållare laboratoriemedicin (OID 1.2.752.129.5.1.12) (se [R10]) codeSystem: 1.2.752.116.2.1.1 Regel 3.5 Om kod saknas anges typ av provbehållare i orginalText Om typ av provbehållartyp är okänd anges ”ospecificerad” i attributet originalText
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.container.type, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.device 0..* BackboneElement "Mätinstrument" """Information om den utrustning som använts för att utföra analysen."""
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.device, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.device.identifier 1..1 SEEHDSRivIITypeHealthcondActoutcome4 "Instrumentets id" """Identitetsbeteckningen för en analysutrustning."""
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.device.identifier, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result 0..* BackboneElement "Analysresultat" """
    Klassen LaboratoryAnalysisResultType håller information om resultat av den utförda analysen. Detta resultat kan exempelvis bestå av ett mätvärde inom laboratoriedisciplinen kemi, ett fynd av en viss bakterieart eller en textuell beskrivning av analysresultatet. Utöver detta kan en kommentar avseende analysresultatet anges separat.
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.type 0..1 SEEHDSRivCVTypeHealthcondActoutcome4 "Resultattyp" """
    Kod för typ av laboratorieanalysresultat. code: Enligt urval från tillämpningsanvisning codeSystem: 1.2.752.108.1 (om NPU-kod) eller 1.2.752.116.2.1.1 (om Snomed CT)
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.type, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.value 1..1 BackboneElement "Resultatvärde (AnyValueType — se anmärkning)" """
    ASSUME-001: AnyValueType kan innehålla PQ, string, boolean eller kodad typ.
    Modellerad som string i avvaktan på mappningsverifiering. Se QUESTIONS.md.
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.value, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.value.cv 0..1 SEEHDSRivCVTypeHealthcondActoutcome4 "cv"
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.value.cv, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.value.pq 0..1 SEEHDSRivPQTypeHealthcondActoutcome4 "pq"
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.value.pq, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.value.intervalPQ 0..1 SEEHDSRivPQIntervalTypeHealthcondActoutcome4 "intervalPQ"
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.value.intervalPQ, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.value.st 0..1 SEEHDSRivString "st"
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.value.st, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.comment 0..1 SEEHDSRivString "Kommentar till resultatet" """Angivelse av kommentar som rör laboratorieanalysresultatet."""
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.comment, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.interpretation 0..* SEEHDSRivCVTypeHealthcondActoutcome4 "Tolkning av resultatet" """
    Kod (SNOMED-CT-SE) för en tolkning av laboratorieanalysresultatet. code: Kod från Urval tolkning resultat laboratoriemedicin (OID 1.2.752.129.5.1.14) (se [R10]) codeSystem: 1.2.752.116.2.1.1 En sådan tolkning kan vara att analysresultatet ligger utanför aktuellt referensintervall, vilket även benämns som patologisk markör. Regel 3.5 Om kod ej kan anges används CV-typens attribut originalText som fritextalternativ.
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.interpretation, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference 0..1 BackboneElement "Referensintervall" """Information om vilket referensintervall eller referensvärde som gäller för ett resultat."""
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.interval 0..1 SEEHDSRivPQIntervalTypeHealthcondActoutcome4 "Referensintervall (PQIntervalType)" """
    Angivelse av referensintervall som numeriskt värde av mätvärden. Ett referensvärde anges genom att antingen ange ett intervall från det lägre värdet till det högre värdet som sätts till referensvärdet, alternativt från referensvärde som start på intervallet utan angivelse av intervallets slut för att ange att normalvärde ligger över referensvärdet.
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.interval, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.description 0..1 SEEHDSRivString "Beskrivning av referensintervall" """
    Textuell beskrivning av referensintervall. Ett och endast ett av attributen interval och description ska anges.
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.description, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.population 0..1 SEEHDSRivString "Population för referensintervall" """Angivelse av den referenspopulation som ligger till grund för angivet referensintervall."""
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.population, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.comment 0..1 SEEHDSRivString "Kommentar till referensintervall" """Angivelse av kommentar för det angivna referensintervallet."""
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.comment, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature 0..1 BackboneElement "Mottagarsignatur" """
    Information avseende signering av en enskild analys. Analysen signeras av hälso- och sjukvårdspersonal på den remissvarsmottagande enheten när den förs in i patientjournalen.
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.rivId 0..1 SEEHDSRivIITypeHealthcondActoutcome4 "Signatärens id" """
    Root sätts till OID för HSA (1.2.752.129.2.1.4.1) Extension sätts till HSA-id för hälso- och sjukvårdspersonal
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.rivId, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* insert RivXmlName(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.rivId, id)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.name 0..1 SEEHDSRivString "Signatärens namn" """Namn på hälso- och sjukvårdspersonal."""
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.name, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.timestamp 1..1 SEEHDSRivTimeStamp "Signeringstidpunkt" """
    Tidpunkt för signering.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.timestamp, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.byRole 0..1 SEEHDSRivCVTypeHealthcondActoutcome4 "Yrkesroll" """
    Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid dokumentationstidpunkten. Anges med HSAs kodverk Befattning (OID: 1.2.752.129.2.2.1.4). Om kod inte är tillgänglig anges befattning som klartext i datatypens attribut originalText.
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.byRole, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature 0..1 BackboneElement "Utförarsignatur" """
    Information avseende signering av en enskild analys. Analysen signeras av den hälso- och sjukvårdspersonal som utför analysen.
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.rivId 0..1 SEEHDSRivIITypeHealthcondActoutcome4 "Signatärens id" """
    Root sätts till OID för HSA (1.2.752.129.2.1.4.1) Extension sätts till HSA-id för hälso- och sjukvårdspersonal
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.rivId, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* insert RivXmlName(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.rivId, id)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.name 0..1 SEEHDSRivString "Signatärens namn" """Namn på hälso- och sjukvårdspersonal."""
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.name, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.timestamp 1..1 SEEHDSRivTimeStamp "Signeringstidpunkt" """
    Tidpunkt då signering genomfördes.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.timestamp, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.byRole 0..1 SEEHDSRivCVTypeHealthcondActoutcome4 "Yrkesroll" """
    Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid dokumentationstidpunkten. Anges med HSAs kodverk Befattning (OID: 1.2.752.129.2.2.1.4). Om kod inte är tillgänglig anges befattning som klartext i datatypens attribut originalText.
  """
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.byRole, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.related 0..* contentReference #SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis "Relaterade analyser"
* insert RivNs(laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.related, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.recipientUnit 1..1 BackboneElement "Mottagande enhet" """Mottagande enhet."""
* insert RivNs(laboratoryOrderOutcome.body.recipientUnit, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.recipientUnit.rivId 0..1 SEEHDSRivIITypeHealthcondActoutcome4 "Enhetens HSA-id" """Identitet för mottagande enhet."""
* insert RivNs(laboratoryOrderOutcome.body.recipientUnit.rivId, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* insert RivXmlName(laboratoryOrderOutcome.body.recipientUnit.rivId, id)
* laboratoryOrderOutcome.body.recipientUnit.name 1..1 SEEHDSRivString "Enhetens namn" """Namn på mottagande enhet."""
* insert RivNs(laboratoryOrderOutcome.body.recipientUnit.name, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.recipientSignature 0..1 BackboneElement "Beställarens signatur" """
    Information avseende signering av laboratoriesvaret. Laboratoriesvaret signeras av hälso- och sjukvårdspersonal på den remissvarsmottagande enheten när det förs in i patientjournalen.
  """
* insert RivNs(laboratoryOrderOutcome.body.recipientSignature, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.recipientSignature.rivId 0..1 SEEHDSRivIITypeHealthcondActoutcome4 "Signatärens id" """
    Root sätts till OID för HSA (1.2.752.129.2.1.4.1) Extension sätts till HSA-id för hälso- och sjukvårdspersonal
  """
* insert RivNs(laboratoryOrderOutcome.body.recipientSignature.rivId, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* insert RivXmlName(laboratoryOrderOutcome.body.recipientSignature.rivId, id)
* laboratoryOrderOutcome.body.recipientSignature.name 0..1 SEEHDSRivString "Signatärens namn" """Namn på hälso- och sjukvårdspersonal"""
* insert RivNs(laboratoryOrderOutcome.body.recipientSignature.name, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.recipientSignature.timestamp 1..1 SEEHDSRivTimeStamp "Signeringstidpunkt" """
    Tidpunkt för signering.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(laboratoryOrderOutcome.body.recipientSignature.timestamp, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.recipientSignature.byRole 0..1 SEEHDSRivCVTypeHealthcondActoutcome4 "Yrkesroll" """
    Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid dokumentationstidpunkten. Anges med HSAs kodverk Befattning (OID: 1.2.752.129.2.2.1.4). Om kod inte är tillgänglig anges befattning som klartext i datatypens attribut originalText.
  """
* insert RivNs(laboratoryOrderOutcome.body.recipientSignature.byRole, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.contactInformation 0..1 BackboneElement "Kontaktinformation" """Information om var eller till vem vården kan vända sig vid frågor om laboratoriesvaret."""
* insert RivNs(laboratoryOrderOutcome.body.contactInformation, urn:riv:clinicalprocess:healthcond:actoutcome:4)
* laboratoryOrderOutcome.body.contactInformation.text 1..1 SEEHDSRivString "Kontaktinformationstext" """
    Textuell beskrivning av kontaktinformation. Det kan t.ex. vara telefonnummer och öppettider till en kundtjänst, ett namn på en kontaktperson.
  """
* insert RivNs(laboratoryOrderOutcome.body.contactInformation.text, urn:riv:clinicalprocess:healthcond:actoutcome:4)
