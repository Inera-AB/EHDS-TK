// RIV-TA GetRequestActivities 2.0 – svarsmeddelandet GetRequestActivitiesResponse.
// Struktur, namn, ordning, namnrymder och XSD-kardinaliteter är genererade från
// riv.crm.requeststatus/schemas/interactions/GetRequestActivitiesInteraction/GetRequestActivitiesResponder_2.0.xsd (bitbucket.org/rivta-domains).
// Kardinaliteter är verifierade mot TKB_crm_requeststatus.docx; texter är sammanslagna från tidigare modell och TKB.

Logical: SEEHDSLMRequestActivities
Id: SEEHDSLMRequestActivities
Title: "GetRequestActivities"
Description: "Logisk modell för remisstatus och processaktiviteter hämtad via GetRequestActivities (crm:requeststatus v2.0)."
* insert RivRoot(GetRequestActivitiesResponse, urn:riv:crm:requeststatus:GetRequestActivitiesResponder:2)
* requestActivity 0..* BackboneElement "Remisstatus som matchar begäran"
* requestActivity.header 1..1 BackboneElement "Innehåller information som är gemensam för remisstatusen som tillgängliggörs, exempelvis information om …" """
    Innehåller information som är gemensam för remisstatusen som tillgängliggörs, exempelvis information om vilken hälso- och sjukvårdspersonal som är angiven som författare av en remisstatus samt information om signering.
  """
* insert RivNs(requestActivity.header, urn:riv:crm:requeststatus:2)
* requestActivity.header.accessControlHeader 1..1 BackboneElement "Information som används för kontroll av åtkomst" """Information som används för kontroll av åtkomst."""
* insert RivNs(requestActivity.header.accessControlHeader, urn:riv:crm:requeststatus:2)
* requestActivity.header.accessControlHeader.accountableHealthcareProvider 1..1 SEEHDSRivIITypeCrmRequeststatus2 "Id för uppgiftsägande vårdgivare [R11]" """
    Id för uppgiftsägande vårdgivare [R11]. I första hand HSA-id, i andra hand organisationsnummer. Om HSA-id används: root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1) extension sätts till HSA-id Om organisationsnummer används: root sätts till OID för organisationsnummer (1.2.752.29.4.3) extension sätts till organisationsnumret. Enskild näringsidkare har i rollen som juridisk person sitt personnummer som organisationsnummer. Regel 2.1
  """
* insert RivNs(requestActivity.header.accessControlHeader.accountableHealthcareProvider, urn:riv:crm:requeststatus:2)
* requestActivity.header.accessControlHeader.accountableCareUnit 0..1 SEEHDSRivIITypeCrmRequeststatus2 "HSA-id för vårdenheten [R11] där uppgiften är dokumenterad" """
    HSA-id för vårdenheten [R11] där uppgiften är dokumenterad. root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1) extension sätts till HSA-id Regel 2.1
  """
* insert RivNs(requestActivity.header.accessControlHeader.accountableCareUnit, urn:riv:crm:requeststatus:2)
* requestActivity.header.accessControlHeader.originalPatientId 0..1 SEEHDSRivIITypeCrmRequeststatus2 "Personidentifieraren som den tillgängliggjorda remisstatusen lagrades under då den skapades" """
    Personidentifieraren som den tillgängliggjorda remisstatusen lagrades under då den skapades. Detta fält anges endast då det skiljer sig från patientId, exempelvis då patienten tidigare erhållit vård som dokumenterats under ett samordningsnummer för att sedan bli folkbokförd i Sverige och få ett personnummer. root sätts till OID för typ av personidentifierare. För personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. För andra typer av personidentifierare sätts root till aktuell OID. extension sätts till patientens identifierare. Anges med 12 tecken utan avskiljare.
  """
* insert RivNs(requestActivity.header.accessControlHeader.originalPatientId, urn:riv:crm:requeststatus:2)
* requestActivity.header.accessControlHeader.careProcessId 0..1 SEEHDSRivIITypeCrmRequeststatus2 "Id för den individanpassade vårdprocess som remisstatusen journalförts inom ramen för" """
    Id för den individanpassade vårdprocess som remisstatusen journalförts inom ramen för. Består av ett lokalt genererat UUID. root sätts till UUID extension anges ej
  """
* insert RivNs(requestActivity.header.accessControlHeader.careProcessId, urn:riv:crm:requeststatus:2)
* requestActivity.header.accessControlHeader.lockTime 0..0 SEEHDSRivTimeStamp "Ska ej användas!" """
    Regel 2.2
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(requestActivity.header.accessControlHeader.lockTime, urn:riv:crm:requeststatus:2)
* requestActivity.header.accessControlHeader.blockComparisonTime 1..1 SEEHDSRivTimeStamp "Den tidpunkt mot vilken spärrkontroll sker vid åtkomst med syftet sammanhållen journalföring" """
    Den tidpunkt mot vilken spärrkontroll sker vid åtkomst med syftet sammanhållen journalföring. Gäller både yttre (mellan vårdgivare) och inre (mellan vårdenheter) spärr. Informationsägaren väljer själv en lämplig tidpunkt, t.ex. tidpunkten då remissen först skickades.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(requestActivity.header.accessControlHeader.blockComparisonTime, urn:riv:crm:requeststatus:2)
* requestActivity.header.accessControlHeader.approvedForPatient 1..1 SEEHDSRivBoolean "Ansvarig vårdpersonals beslut, alternativt verksamhetens policy och regler (men- och sekretessprövning), …" """
    Ansvarig vårdpersonals beslut, alternativt verksamhetens policy och regler (men- och sekretessprövning), huruvida remisstatusen får delas till patient för ändamålet patients åtkomst (Individens direktåtkomst). Om remisstatusen beslutas delas sätts värdet till true, i annat fall till false. False innebär att uppgiften inte får delas till patient. Notera att värdet kan, för samma uppgift, förändras med tiden på grund av att rådrumstid har passerats, eller att verksamheten ändrat policy för vad som lämnas ut till patient. I sådana fall skall källsystemet uppdatera engagemangsindex.
  """
* insert RivNs(requestActivity.header.accessControlHeader.approvedForPatient, urn:riv:crm:requeststatus:2)
* requestActivity.header.sourceSystemId 1..1 SEEHDSRivIITypeCrmRequeststatus2 "Det källsystem som remisstatusen lagras i" """
    Det källsystem som remisstatusen lagras i. root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1) extension sätts till källsystemets HSA-id
  """
* insert RivNs(requestActivity.header.sourceSystemId, urn:riv:crm:requeststatus:2)
* requestActivity.header.record 1..1 BackboneElement "Information avseende remisstatusen som tillgängliggörs" """Information avseende remisstatusen som tillgängliggörs."""
* insert RivNs(requestActivity.header.record, urn:riv:crm:requeststatus:2)
* requestActivity.header.record.id 1..1 SEEHDSRivIITypeCrmRequeststatus2 "Identifierare för remisstatus" """
    Identifierare för remisstatus. Identifieraren ska vara konsistent och beständig mellan olika majorversioner av ett tjänstekontrakt. Detta för att en tjänstekonsument ska kunna ta bort dubbletter från de tjänsteproducenter som producerar via flera majorversioner. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. Identifieraren ska även vara konsistent och beständig mellan olika tjänstekontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. Root sätts till systemHSA-id Extension sätts till id för remissen
  """
* insert RivNs(requestActivity.header.record.id, urn:riv:crm:requeststatus:2)
* requestActivity.header.record.timestamp 1..1 SEEHDSRivTimeStamp "Den tidpunkt då remisstatusen skapades i tjänsteproducentens källsystem" """
    Den tidpunkt då remisstatusen skapades i tjänsteproducentens källsystem.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(requestActivity.header.record.timestamp, urn:riv:crm:requeststatus:2)
* requestActivity.header.author 0..1 BackboneElement "Information avseende dokumentation av remisstatus som tillgängliggörs" """
    Information avseende dokumentation av remisstatus som tillgängliggörs. Notera att den som registrerar uppgiften från annan källa, exempelvis en medicinsk sekreterare som transkriberar ett diktat, inte avses.
  """
* insert RivNs(requestActivity.header.author, urn:riv:crm:requeststatus:2)
* requestActivity.header.author.id 0..1 SEEHDSRivIITypeCrmRequeststatus2 "HSA-id för hälso- och sjukvårdspersonal som dokumenterat remisstatusen som tillgängliggörs" """
    HSA-id för hälso- och sjukvårdspersonal som dokumenterat remisstatusen som tillgängliggörs. root sätts till OID för HSA-id (1.2.752.129.2.1.4.1) extension sätts till HSA-id
  """
* insert RivNs(requestActivity.header.author.id, urn:riv:crm:requeststatus:2)
* requestActivity.header.author.name 0..1 SEEHDSRivString "Namn på hälso- och sjukvårdspersonal" """Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn."""
* insert RivNs(requestActivity.header.author.name, urn:riv:crm:requeststatus:2)
* requestActivity.header.author.timestamp 1..1 SEEHDSRivTimeStamp "Tidpunkt då remisstatusen dokumenterades eller senast uppdaterades" """
    Tidpunkt då remisstatusen dokumenterades eller senast uppdaterades. I de fall då remisstatusen ursprungligen dokumenterats eller uppdaterats i ett annat informationssystem än tjänsteproducentens källsystem (t.ex. laboratorieinformationssystem), ska tidpunkten spegla informationen från systemet där remisstatusen ursprungligen dokumenterades.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(requestActivity.header.author.timestamp, urn:riv:crm:requeststatus:2)
* requestActivity.header.author.byRole 0..1 SEEHDSRivCVTypeCrmRequeststatus2 "Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid …" """
    Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid dokumentationstidpunkten. Anges med HSAs kodverk Befattning (OID: 1.2.752.129.2.2.1.4). Om kod inte är tillgänglig anges befattning som klartext i datatypens attribut originalText.
  """
* insert RivNs(requestActivity.header.author.byRole, urn:riv:crm:requeststatus:2)
* requestActivity.body 1..1 BackboneElement "body"
* insert RivNs(requestActivity.body, urn:riv:crm:requeststatus:2)
* requestActivity.body.statusCode 1..1 SEEHDSRivCVTypeCrmRequeststatus2 "Angivelse av vilken status remissen befinner sig i" """
    Angivelse av vilken status remissen befinner sig i. Anges med Kv status vårdbegäran [R5] OID: 1.2.752.129.2.2.2.43 Kodverket kan komma att kompletteras över tid vilket medför att konsumenter av kontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på kontraktet uppdateras.
  """
* insert RivNs(requestActivity.body.statusCode, urn:riv:crm:requeststatus:2)
* requestActivity.body.eventTime 1..1 SEEHDSRivTimeStamp "Händelsetidpunkt" """
    Tidpunkt då en händelse inträffade, dvs när en ändring av remisstatus sker.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(requestActivity.body.eventTime, urn:riv:crm:requeststatus:2)
* requestActivity.body.request 1..1 BackboneElement "Den utfärdade remissen" """Den utfärdade remissen."""
* insert RivNs(requestActivity.body.request, urn:riv:crm:requeststatus:2)
* requestActivity.body.request.id 1..1 SEEHDSRivString "Remiss-id" """
    Remiss-id. Unik identifierare av remissen. Vid kännedom om remittentens id på remissen ska detta anges för att kunna koppla ihop flera status och följa remissens status-information över tid. I det fall kännedom om remittentens id på remissen saknas ska källsystemets unika id på remissen anges. I det fall remissens id (sträng) består av flera delar, t.ex. enligt formatet ”källsystem-Id(HSA-ID)#lokalt-id” så ska hela strängen anges.
  """
* insert RivNs(requestActivity.body.request.id, urn:riv:crm:requeststatus:2)
* requestActivity.body.request.type 0..1 SEEHDSRivCVTypeCrmRequeststatus2 "Remisstyp" """
    Remisstyp. Kod och klartext som anger vilken typ av remiss som avses. Anges med Kv framställantyp [R5] OID: 1.2.752.129.2.2.2.24 Giltiga värden: 1 = röntgenremiss 2 = labbremiss 4 = allmänremiss Exempel: request.type.codesystem = 1.2.752.129.2.2.2.24 request.type.code = 4 request.type.displayName = allmänremiss
  """
* insert RivNs(requestActivity.body.request.type, urn:riv:crm:requeststatus:2)
* requestActivity.body.request.medium 0..1 SEEHDSRivCVTypeCrmRequeststatus2 "Medium" """
    Medium. Kod och klartext som anger medium för remissen. Anges med Kv Form av framställan [R5] OID: 1.2.752.129.2.2.2.7 Giltiga värden: 3 = skriftligt elektroniskt 4 = skriftligt papper Exempel: medium.codesystem = 1.2.752.129.2.2.2.7 medium.code = 3 medium.displayName = skriftligt elektroniskt
  """
* insert RivNs(requestActivity.body.request.medium, urn:riv:crm:requeststatus:2)
* requestActivity.body.request.author 0..1 BackboneElement "Remittent" """Författare av remissen."""
* insert RivNs(requestActivity.body.request.author, urn:riv:crm:requeststatus:2)
* requestActivity.body.request.author.name 1..1 SEEHDSRivString "Remittentens namn"
* insert RivNs(requestActivity.body.request.author.name, urn:riv:crm:requeststatus:2)
* requestActivity.body.request.author.organization 1..1 BackboneElement "Remitterande enhet"
* insert RivNs(requestActivity.body.request.author.organization, urn:riv:crm:requeststatus:2)
* requestActivity.body.request.author.organization.id 0..1 SEEHDSRivIITypeCrmRequeststatus2 "Remitterande enhetens id" """root sätts till OID för HSA-id (1.2.752.129.2.1.4.1) extension sätts till HSA-id"""
* insert RivNs(requestActivity.body.request.author.organization.id, urn:riv:crm:requeststatus:2)
* requestActivity.body.request.author.organization.name 1..1 SEEHDSRivString "Remitterande enhetens namn" """Remitterande enhetens namn."""
* insert RivNs(requestActivity.body.request.author.organization.name, urn:riv:crm:requeststatus:2)
* requestActivity.body.request.receivingOrganization 1..1 BackboneElement "Remissmottagande enhet" """Remissmottagande enhet."""
* insert RivNs(requestActivity.body.request.receivingOrganization, urn:riv:crm:requeststatus:2)
* requestActivity.body.request.receivingOrganization.id 0..1 SEEHDSRivIITypeCrmRequeststatus2 "Remissmottagande enhets id" """
    Identitetsbeteckning för den som är angiven mottagare till remissen eller den faktiska mottagaren om detta ändras (om remissen har skickats vidare). root sätts till OID för HSA-id (1.2.752.129.2.1.4.1) extension sätts till HSA-id
  """
* insert RivNs(requestActivity.body.request.receivingOrganization.id, urn:riv:crm:requeststatus:2)
* requestActivity.body.request.receivingOrganization.name 1..1 SEEHDSRivString "Remissmottagande enhetens namn" """Remissmottagande enhetens namn."""
* insert RivNs(requestActivity.body.request.receivingOrganization.name, urn:riv:crm:requeststatus:2)
