// RIV-TA GetAlertInformation 3.0 – svarsmeddelandet GetAlertInformationResponse.
// Struktur, namn, ordning, namnrymder och XSD-kardinaliteter är genererade från
// riv.clinicalprocess.healthcond.description/schemas/interactions/GetAlertInformationInteraction/GetAlertInformationResponder_3.0.xsd @ feature-GAI_3.0 (bitbucket.org/rivta-domains).
// Kardinaliteter är verifierade mot TKB_clinicalprocess_healthcond_description_GetAlertInformation.docx; texter är sammanslagna från tidigare modell och TKB.

Invariant: getalertinformation3-body-choice
Description: "En och endast en av hypersensitivity, activity, condition, decisionNonstandardCareProcedure, informationNonstandardCareProcedure, contagion och unstructuredAlertInformation ska anges"
Expression: "hypersensitivity.combine(activity).combine(condition).combine(decisionNonstandardCareProcedure).combine(informationNonstandardCareProcedure).combine(contagion).combine(unstructuredAlertInformation).count() = 1"
Severity: #error

Invariant: getalertinformation3-time-choice
Description: "Ett och endast ett av timestamp och timePeriod ska anges"
Expression: "timestamp.exists() xor timePeriod.exists()"
Severity: #error

Logical: SEEHDSLMAlertInformationV30
Id: SEEHDSLMAlertInformationV30
Title: "GetAlertInformation 3.0"
Description: """
  Logisk modell för version 3.0 av tjänstekontraktet GetAlertInformation
  (urn:riv:clinicalprocess:healthcond:description:GetAlertInformationResponder:3).
  Mappningen utgår från versionen i SEEHDSLMAlertInformation. Skillnaderna mot den och hur de
  påverkar mappningen beskrivs på tjänstekontraktets mappningssida.
"""
* insert RivRoot(GetAlertInformationResponse, urn:riv:clinicalprocess:healthcond:description:GetAlertInformationResponder:3)
* alertInformation 0..* BackboneElement "Den uppmärksamhetsinformation som matchar begäran" """Den uppmärksamhetsinformation som matchar begäran."""
* alertInformation.header 1..1 BackboneElement "JoL-header" """
    JoL-header. Innehåller metainformation som är gemensam för patientjournalinformation, exempelvis uppgift om vilken hälso- och sjukvårdspersonal som är angiven som författare av informationen och information om signering.
  """
* alertInformation.header.accessControlHeader 1..1 BackboneElement "Information för kontroll av åtkomst" """
    Information för kontroll av åtkomst. Syftet med denna del av headern är att den ska innehålla den information som behövs för konsumentens filtrering av informationen innan den visas upp för slutanvändaren eller på annat vis behandlas vidare, exempelvis för kontroll av spärrar (avseende vårdpersonals åtkomst till information; PDL) eller om informationen får visas för patienten eller inte (verksamhetens rätt till rådrum och menprövning). En konsument (en konsumerande tjänst/applikation) har inte rätt att ta del av något annat än innehållet i accessControlHeader innan de för ändamålet nödvändiga säkerhetskontrollerna har utförts.
  """
* insert RivNs(alertInformation.header.accessControlHeader, urn:riv:clinicalprocess:healthcond:description:3)
* alertInformation.header.accessControlHeader.accountableHealthcareProvider 0..1 SEEHDSRivIITypeHealthcondDescription3 "Id för informationsägande vårdgivare" """
    Id för informationsägande vårdgivare. I första hand HSAid alternativt i andra hand organisationsnummer. Om HSA-id används sätts fältet root till oid för HSA-katalogen (1.2.752.129.2.1.4.1) och fältet extension sätts till HSA-id. Om organisationsnummer används skall fältet root sättas till OID för organisationsnummer (1.2.752.29.4.3) och fältet extension sättas till organisationsnumret. Enskild näringsidkare har i rollen som juridisk person sitt personnummer som organisationsnummer. Se även regel Spärrhantering.
  """
* insert RivNs(alertInformation.header.accessControlHeader.accountableHealthcareProvider, urn:riv:clinicalprocess:healthcond:description:3)
* alertInformation.header.accessControlHeader.accountableCareUnit 0..1 SEEHDSRivIITypeHealthcondDescription3 "Id för informationsägande vårdenhet angivet med HSA-id" """
    Id för informationsägande vårdenhet angivet med HSA-id. Fältet root sätts OID för HSA-katalogen (1.2.752.129.2.1.4.1) och fältet extension sätts till HSA-id. Fältet används för spärrkontroll och är obligatorisk om uppgiften i patientjournal ska kunna ses via sammanhållen journalföring. Se även regel Spärrhantering.
  """
* insert RivNs(alertInformation.header.accessControlHeader.accountableCareUnit, urn:riv:clinicalprocess:healthcond:description:3)
* alertInformation.header.accessControlHeader.patientId 1..1 SEEHDSRivIITypeHealthcondDescription3 "Patientens identitetsbeteckning" """
    Patientens identitetsbeteckning. Den identitetsbeteckning som denna uppgift lagrades under när uppgiften skapades ska om möjligt anges. Exempel på en situation då detta förekommer är exempelvis då patienten tidigare erhållit vård dokumenterat under ett samordningsnummer för att sedan bli folkbokförd i Sverige och få ett personnummer. Fältet root sätts till OID för kodverket för identifieraren: 1) För personnummer skall Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas. 2) För samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas. Fältet extension sätts till patientens identifierare. Anges med 12 tecken utan avskiljare.
  """
* insert RivNs(alertInformation.header.accessControlHeader.patientId, urn:riv:clinicalprocess:healthcond:description:3)
* alertInformation.header.accessControlHeader.careProcessId 0..1 SEEHDSRivIITypeHealthcondDescription3 "Id för den individanpassad vårdprocess som informationen journalförts inom ramen för" """
    Id för den individanpassad vårdprocess som informationen journalförts inom ramen för. Består av ett lokalt genererat UUID. UUID anges i root och extension lämnas tomt.
  """
* insert RivNs(alertInformation.header.accessControlHeader.careProcessId, urn:riv:clinicalprocess:healthcond:description:3)
* alertInformation.header.accessControlHeader.blockComparisonTime 1..1 SEEHDSRivTimeStamp "Den tidpunkt mot vilken spärrkontroll sker vid åtkomst med syftet sammanhållen journalföring för kontroll av …" """
    Den tidpunkt mot vilken spärrkontroll sker vid åtkomst med syftet sammanhållen journalföring för kontroll av patientens (ev.) spärrade information, såväl yttre (mellan vårdgivare) som inre (mellan vårdenheter) spärr. Vad som sätts i blockComparisonTime beror på vilken typ av uppmärksamhetsinformation som anges enligt följande: Hypersensitivity body/hypersensitivity/time/ timestamp eller body/hypersensitivity/time/ timePeriod/start activity body/activity/time/timestamp eller body/activity/time/timePeriod/start condition body/condition/time/timestamp eller body/condition/time/timePeriod/start decisionNonstandardCareProcedure body/decisionNonstandard CareProcedure/time/timestamp informationNonstandardCareProcedure body/informationNonstandard CareProcedure/time/timestamp eller body/informationNonstandard CareProcedure/time/timePeriod/start Contagion body/contagion/time/timestamp eller body/contagion/time/timePeriod/start unstructuredAlertInformation header/record/timestamp
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(alertInformation.header.accessControlHeader.blockComparisonTime, urn:riv:clinicalprocess:healthcond:description:3)
* alertInformation.header.accessControlHeader.approvedForPatient 1..1 SEEHDSRivBoolean "Ansvarig vårdpersonals beslut, alternativt baserat på verksamhetens policy och regler …" """
    Ansvarig vårdpersonals beslut, alternativt baserat på verksamhetens policy och regler (men-/sekretessprövning), huruvida informationen får delas till patient för ändamålet Patients åtkomst (Individens direktåtkomst). Om information beslutas delas sätts värdet i sådant fall till true, i annat fall till false. False innebär att informationen inte får delas till patient. Notera att flaggans värde kan, för samma information, förändras med tiden på grund av att rådrumstid har passerats, eller att verksamheten ändrat policy för vad som lämnas ut till patient. I sådana fall skall källsystemet uppdatera engagemangsindex för att konsumenter skall kunna bli notifierade därom.
  """
* insert RivNs(alertInformation.header.accessControlHeader.approvedForPatient, urn:riv:clinicalprocess:healthcond:description:3)
* alertInformation.header.sourceSystemId 1..1 SEEHDSRivIITypeHealthcondDescription3 "Det källsystem som informationen lagras i" """
    Det källsystem som informationen lagras i. Fältet root sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1) och fältet extension sätts till källsystemets HSA-id.
  """
* insert RivNs(alertInformation.header.sourceSystemId, urn:riv:clinicalprocess:healthcond:description:3)
* alertInformation.header.record 1..1 BackboneElement "Uppgift i patientjournal" """Metainformation avseende den dokumenterade informationen."""
* insert RivNs(alertInformation.header.record, urn:riv:clinicalprocess:healthcond:description:3)
* alertInformation.header.record.rivId 1..1 SEEHDSRivIITypeHealthcondDescription3 "Unik och beständig identifierare för uppgift i patientjournal" """
    Unik och beständig identifierare för uppgift i patientjournal. För att vara konsistent och beständig med tidigare majorversionen av GetAlertInformation ska endast root anges på samma sätt som documentId i tidigare majorversioner.Extension utelämnas. Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. Se även regel Verify unique recordId.
  """
* insert RivNs(alertInformation.header.record.rivId, urn:riv:clinicalprocess:healthcond:description:3)
* insert RivXmlName(alertInformation.header.record.rivId, id)
* alertInformation.header.record.timestamp 1..1 SEEHDSRivTimeStamp "Första tidpunkten då denna journalinformation skapades hos tjänsteproducenten" """
    Första tidpunkten då denna journalinformation skapades hos tjänsteproducenten.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(alertInformation.header.record.timestamp, urn:riv:clinicalprocess:healthcond:description:3)
* alertInformation.header.author 0..1 BackboneElement "Hälso- och sjukvårdspersonal som ansvarar för information i patientjournal" """
    Hälso- och sjukvårdspersonal som ansvarar för information i patientjournal. Notera att den som registrerar informationen från annan källa, exempelvis en medicinsk sekreterare som transkriberar ett diktat, inte är författare.
  """
* insert RivNs(alertInformation.header.author, urn:riv:clinicalprocess:healthcond:description:3)
* alertInformation.header.author.rivId 0..1 SEEHDSRivIITypeHealthcondDescription3 "HSA-id för hälso- och sjukvårdspersonal" """
    HSA-id för hälso- och sjukvårdspersonal. Fältet root sätts till oid för HSA-id (1.2.752.129.2.1.4.1) och fältet extension sätts till HSA-id.
  """
* insert RivNs(alertInformation.header.author.rivId, urn:riv:clinicalprocess:healthcond:description:3)
* insert RivXmlName(alertInformation.header.author.rivId, id)
* alertInformation.header.author.name 0..1 SEEHDSRivString "Namn på hälso- och sjukvårdspersonal"
* insert RivNs(alertInformation.header.author.name, urn:riv:clinicalprocess:healthcond:description:3)
* alertInformation.header.author.timestamp 1..1 SEEHDSRivTimeStamp "Tidpunkt vid vilken journalinformationen skapades eller senast uppdaterades hos tjänsteproducenten" """
    Tidpunkt vid vilken journalinformationen skapades eller senast uppdaterades hos tjänsteproducenten. I de fall då journalinformationen skapats i ett annat informationssystem (t.ex. laboratoriesystem eller annan remittents journalsystem) är det tidpunkten då journalinformationen ursprungligen skapades som ska anges.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(alertInformation.header.author.timestamp, urn:riv:clinicalprocess:healthcond:description:3)
* alertInformation.header.author.byRole 0..1 SEEHDSRivCVTypeHealthcondDescription3 "Information om hälso- och sjukvårdspersonalens befattning vid författandet av informationen" """
    Information om hälso- och sjukvårdspersonalens befattning vid författandet av informationen. Om möjligt skall kod från kodverket KV Befattning användas för att ange personens befattning så som den var angiven i HSA-katalogen vid tidpunkten. Om kod inte är tillgänglig anges befattning i klartext i CV-typens attribut originalText.
  """
* insert RivNs(alertInformation.header.author.byRole, urn:riv:clinicalprocess:healthcond:description:3)
* alertInformation.header.author.orgUnit 0..1 BackboneElement "Den organisation som författaren är uppdragstagare på" """Den organisation som författaren är uppdragstagare på."""
* insert RivNs(alertInformation.header.author.orgUnit, urn:riv:clinicalprocess:healthcond:description:3)
* alertInformation.header.author.orgUnit.orgUnitHSAId 0..1 SEEHDSRivString "HSA-id för organisationsenhet" """
    HSA-id för organisationsenhet. Om tillgängligt skall detta anges. I de fall HSA-id saknas kan ett för källsystemet unikt id användas.
  """
* insert RivNs(alertInformation.header.author.orgUnit.orgUnitHSAId, urn:riv:clinicalprocess:healthcond:description:3)
* alertInformation.header.author.orgUnit.orgUnitName 0..1 SEEHDSRivString "Namn på organisationsenhet" """Namn på organisationsenhet. Om tillgängligt skall detta anges."""
* insert RivNs(alertInformation.header.author.orgUnit.orgUnitName, urn:riv:clinicalprocess:healthcond:description:3)
* alertInformation.header.author.orgUnit.orgUnitTelecom 0..1 SEEHDSRivString "Telefon till organisationsenhet" """Telefon till organisationsenhet."""
* insert RivNs(alertInformation.header.author.orgUnit.orgUnitTelecom, urn:riv:clinicalprocess:healthcond:description:3)
* alertInformation.header.author.orgUnit.orgUnitEmail 0..1 SEEHDSRivString "Epost till organisationsenhet" """Epost till organisationsenhet."""
* insert RivNs(alertInformation.header.author.orgUnit.orgUnitEmail, urn:riv:clinicalprocess:healthcond:description:3)
* alertInformation.header.author.orgUnit.orgUnitAddress 0..1 SEEHDSRivString "Postadress till organisationsenhet" """
    Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis:”Storgatan 12468 91 Lilleby”
  """
* insert RivNs(alertInformation.header.author.orgUnit.orgUnitAddress, urn:riv:clinicalprocess:healthcond:description:3)
* alertInformation.header.author.orgUnit.orgUnitLocation 0..1 SEEHDSRivString "Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering"
* insert RivNs(alertInformation.header.author.orgUnit.orgUnitLocation, urn:riv:clinicalprocess:healthcond:description:3)
* alertInformation.header.signature 0..1 BackboneElement "Signeringsinformation"
* insert RivNs(alertInformation.header.signature, urn:riv:clinicalprocess:healthcond:description:3)
* alertInformation.header.signature.rivId 0..1 SEEHDSRivIITypeHealthcondDescription3 "rivId"
* insert RivNs(alertInformation.header.signature.rivId, urn:riv:clinicalprocess:healthcond:description:3)
* insert RivXmlName(alertInformation.header.signature.rivId, id)
* alertInformation.header.signature.name 0..1 SEEHDSRivString "name"
* insert RivNs(alertInformation.header.signature.name, urn:riv:clinicalprocess:healthcond:description:3)
* alertInformation.header.signature.timestamp 1..1 SEEHDSRivTimeStamp "timestamp" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(alertInformation.header.signature.timestamp, urn:riv:clinicalprocess:healthcond:description:3)
* alertInformation.header.signature.byRole 0..1 SEEHDSRivCVTypeHealthcondDescription3 "byRole"
* insert RivNs(alertInformation.header.signature.byRole, urn:riv:clinicalprocess:healthcond:description:3)
* alertInformation.body 1..1 BackboneElement "Uppmärksamhetsinformation" """Uppmärksamhetsinformation."""
* alertInformation.body obeys getalertinformation3-body-choice
* alertInformation.body.specificationVersion 1..1 SEEHDSRivString "Version av Socialstyrelsens informationspecifikation för uppmärksamhetsinformation som används när …" """
    Version av Socialstyrelsens informationspecifikation för uppmärksamhetsinformation som används när information produceras i detta kontrakt. T.ex. ”5.1”
  """
* alertInformation.body.hypersensitivity 0..1 BackboneElement "Uppmärksamhetsinformation av typ överkänslighet" """
    Uppmärksamhetsinformation av typ överkänslighet. Se även regel Verify unique alert information.
  """
* alertInformation.body.hypersensitivity.value 1..1 SEEHDSRivCVTypeHealthcondDescription3 "Kod för att ange att det som har observerats är en substansöverkänslighet" """
    Kod för att ange att det som har observerats är en substansöverkänslighet. Se även följande regler pattern.CVType.CodedWithNoExceptions Verifiera att angivet kodsystem är ok att använda [sch]
  """
* alertInformation.body.hypersensitivity.status 1..1 SEEHDSRivCVTypeHealthcondDescription3 "Kod för observationens status, exempelvis för att dokumentera om det tillstånd som beskrivs har funnits eller …" """
    Kod för observationens status, exempelvis för att dokumentera om det tillstånd som beskrivs har funnits eller är ett potentiellt tillstånd. En instans av klassen observation kan inte byta status. Om man exempelvis vill dokumentera ett måltillstånd som senare uppfylls så dokumenteras detta som två instanser av klassen observation, en med status måltillstånd och en med status observerat. Se även följande regler pattern.CVType.CodedWithNoExceptions Verifiera att angivet kodsystem är ok att använda [sch]
  """
* alertInformation.body.hypersensitivity.time 1..1 BackboneElement "Angivelse av den tid då överkänslighet som observerats faktiskt förekom eller förväntas förekomma" """
    Angivelse av den tid då överkänslighet som observerats faktiskt förekom eller förväntas förekomma. Se även regel Verify TimeType.
  """
* alertInformation.body.hypersensitivity.time obeys getalertinformation3-time-choice
* alertInformation.body.hypersensitivity.time.timestamp 0..1 SEEHDSRivTimeStamp "timestamp" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* alertInformation.body.hypersensitivity.time.timePeriod 0..1 SEEHDSRivTimePeriodTypeHealthcondDescription3 "Används för att specificera ett datumintervall med hjälp av start- och slutdatum" """
    Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet YYYYMMDDhhmmss end: Slutdatum på formatet YYYYMMDDhhmmss
  """
* alertInformation.body.hypersensitivity.degreeOfSeverity 1..1 SEEHDSRivCVTypeHealthcondDescription3 "Kod som beskriver hur allvarligt patienten reagerar på angivet ämne" """
    Kod som beskriver hur allvarligt patienten reagerar på angivet ämne. Se även följande regler pattern.CVType.CodedWithNoExceptions Verifiera att angivet kodsystem är ok att använda [sch]
  """
* alertInformation.body.hypersensitivity.degreeOfCertainty 0..1 SEEHDSRivCVTypeHealthcondDescription3 "Beskriver med vilken visshetsgrad överkänsligheten har konstaterats" """
    Beskriver med vilken visshetsgrad överkänsligheten har konstaterats. Se även följande regler pattern.CVType.CodedWithNoExceptions Verifiera att angivet kodsystem är ok att använda [sch]
  """
* alertInformation.body.hypersensitivity.negation 1..1 SEEHDSRivBoolean "Flagga som negerar förekomsten av det som beskrivs av attribut värde" """
    Flagga som negerar förekomsten av det som beskrivs av attribut värde. Vid förekomst av överkänslighet ska negation ha värde ’false. Vid konstaterande av att patient inte har smittsam sjukdom eller inte bär på smittämne ska negation ha värde ’true’.
  """
* alertInformation.body.hypersensitivity.verificationMethod 0..1 BackboneElement "Håller information om en specifik verifieringsmetod, exempelvis antikroppstest, pricktest eller …" """
    Håller information om en specifik verifieringsmetod, exempelvis antikroppstest, pricktest eller provokationstest.
  """
* alertInformation.body.hypersensitivity.verificationMethod.code 1..1 SEEHDSRivCVTypeHealthcondDescription3 "Kod för den typ av aktivitet som avses, exempelvis Snomed-kod för pricktest" """
    Kod för den typ av aktivitet som avses, exempelvis Snomed-kod för pricktest. Se även regel pattern.CVType.CodedWithNoExceptions
  """
* alertInformation.body.hypersensitivity.verificationMethod.status 1..1 SEEHDSRivCVTypeHealthcondDescription3 "Kod för aktivitetens status som anger om en aktivitet exempelvis är rekommenderad, planerad eller utförd" """
    Kod för aktivitetens status som anger om en aktivitet exempelvis är rekommenderad, planerad eller utförd. En instans av klassen aktivitet kan inte byta status. Om man exempelvis vill dokumentera en planerad utredning som senare utförs så dokumenteras detta som två instanser av klassen aktivitet, en med status planerad och en med status utförd. Se även regel pattern.CVType.CodedWithNoExceptions
  """
* alertInformation.body.hypersensitivity.verificationMethod.time 0..1 BackboneElement "Angivelse av vilken tid en aktivitet utförts, är planerad att utföras eller önskas utföras" """
    Angivelse av vilken tid en aktivitet utförts, är planerad att utföras eller önskas utföras. Se även regel Verify TimeType.
  """
* alertInformation.body.hypersensitivity.verificationMethod.time obeys getalertinformation3-time-choice
* alertInformation.body.hypersensitivity.verificationMethod.time.timestamp 0..1 SEEHDSRivTimeStamp "timestamp" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* alertInformation.body.hypersensitivity.verificationMethod.time.timePeriod 0..1 SEEHDSRivTimePeriodTypeHealthcondDescription3 "Används för att specificera ett datumintervall med hjälp av start- och slutdatum" """
    Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet YYYYMMDDhhmmss end: Slutdatum på formatet YYYYMMDDhhmmss
  """
* alertInformation.body.hypersensitivity.resource 1..1 BackboneElement "Håller information om något som förekommer som del i en aktivitet, observation eller process inom hälso- och …" """
    Håller information om något som förekommer som del i en aktivitet, observation eller process inom hälso- och sjukvård och som inte avser personer eller organisationer. Exempel är olika typer av medicintekniska produkter, hjälpmedel, läkemedel, organ och blod. Exempel som särskilt pekas ut som resurser som det i tillämpliga fall ska dokumenteras om är TNS-maskin, implantat och läkemedel.
  """
* alertInformation.body.hypersensitivity.resource.rivId 0..1 SEEHDSRivIITypeHealthcondDescription3 "Identifierare på en viss verklig instans av resurs, exempelvis identifierare för ett implantat eller …" """
    Identifierare på en viss verklig instans av resurs, exempelvis identifierare för ett implantat eller transplantat.
  """
* insert RivXmlName(alertInformation.body.hypersensitivity.resource.rivId, id)
* alertInformation.body.hypersensitivity.resource.type 0..1 SEEHDSRivCVTypeHealthcondDescription3 "Kod för typ av resurs, exempelvis NSL-id för hjälpämne eller aktiv läkemedelssubstans" """
    Kod för typ av resurs, exempelvis NSL-id för hjälpämne eller aktiv läkemedelssubstans. Se även regel pattern.CVType.CodedWithNoExceptions
  """
* alertInformation.body.hypersensitivity.resource.productId 0..1 SEEHDSRivCVTypeHealthcondDescription3 "Identifierare för viss produkt, t.ex." """
    Identifierare för viss produkt, t.ex. NPL-id för läkemedelsprodukt. Se även regel pattern.CVType.CodedWithNoExceptions
  """
* alertInformation.body.hypersensitivity.resource.resourceProperty 0..* BackboneElement "Angivelse av egenskaper som en resurs kan ha, som inte kan utläsas från resursattributet typ" """
    Angivelse av egenskaper som en resurs kan ha, som inte kan utläsas från resursattributet typ.
  """
* alertInformation.body.hypersensitivity.resource.resourceProperty.type 0..1 SEEHDSRivCVTypeHealthcondDescription3 "Kod för den typ av resursegenskap som avses i de fall detta inte framgår av attributet värde" """
    Kod för den typ av resursegenskap som avses i de fall detta inte framgår av attributet värde. Exempel är läkemedelsform eller tillverkare. Se även regel pattern.CVType
  """
* alertInformation.body.hypersensitivity.resource.resourceProperty.value 1..1 SEEHDSRivString "Angivelse av värdet för den typ av egenskap som anges i attributet typ" """
    Angivelse av värdet för den typ av egenskap som anges i attributet typ. Exempelvis läkemedlets form enligt NPL för resursegenskap av typ ”läkemedelsform”, eller tillverkarens företagsnamn för resursegenskap av typ ”tillverkare”.
  """
* alertInformation.body.activity 0..1 BackboneElement "Uppmärksamhetsinformation av typ aktivitet, som kan avse behandlingar eller åtgärder" """
    Uppmärksamhetsinformation av typ aktivitet, som kan avse behandlingar eller åtgärder. Se även regel Verify unique alert information.
  """
* alertInformation.body.activity.code 1..1 SEEHDSRivCVTypeHealthcondDescription3 "Kod för den typ av aktivitet som avses" """
    Kod för den typ av aktivitet som avses. Se även följande regler pattern.CVType.CodedWithNoExceptionsVerifiera att angivet kodsystem är ok att använda [sch]
  """
* alertInformation.body.activity.status 1..1 SEEHDSRivCVTypeHealthcondDescription3 "Kod för aktivitetens status som anger om en aktivitet exempelvis är rekommenderad, planerad eller utförd" """
    Kod för aktivitetens status som anger om en aktivitet exempelvis är rekommenderad, planerad eller utförd. En instans av klassen aktivitet kan inte byta status. Om man exempelvis vill dokumentera en planerad utredning som senare utförs så dokumenteras detta som två instanser av klassen aktivitet, en med status planerad och en med status utförd. Se även följande regler pattern.CVType.CodedWithNoExceptions Verifiera att angivet kodsystem är ok att använda [sch]
  """
* alertInformation.body.activity.time 1..1 BackboneElement "Angivelse av vilken tid en aktivitet utförts, är planerad att utföras eller önskas utföras" """
    Angivelse av vilken tid en aktivitet utförts, är planerad att utföras eller önskas utföras. Se även regel Verify TimeType.
  """
* alertInformation.body.activity.time obeys getalertinformation3-time-choice
* alertInformation.body.activity.time.timestamp 0..1 SEEHDSRivTimeStamp "timestamp" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* alertInformation.body.activity.time.timePeriod 0..1 SEEHDSRivTimePeriodTypeHealthcondDescription3 "Används för att specificera ett datumintervall med hjälp av start- och slutdatum" """
    Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet YYYYMMDDhhmmss end: Slutdatum på formatet YYYYMMDDhhmmss
  """
* alertInformation.body.activity.resource 0..* BackboneElement "Håller information om något som förekommer som del i en aktivitet, observation eller process inom hälso- och …" """
    Håller information om något som förekommer som del i en aktivitet, observation eller process inom hälso- och sjukvård och som inte avser personer eller organisationer. Exempel är olika typer av medicintekniska produkter, hjälpmedel, läkemedel, organ och blod. Exempel som särskilt pekas ut som resurser som det i tillämpliga fall ska dokumenteras om är TNS-maskin, implantat och läkemedel.
  """
* alertInformation.body.activity.resource.rivId 0..1 SEEHDSRivIITypeHealthcondDescription3 "Identifierare på en viss verklig instans av resurs, exempelvis identifierare för ett implantat eller …" """
    Identifierare på en viss verklig instans av resurs, exempelvis identifierare för ett implantat eller transplantat.
  """
* insert RivXmlName(alertInformation.body.activity.resource.rivId, id)
* alertInformation.body.activity.resource.type 0..1 SEEHDSRivCVTypeHealthcondDescription3 "Kod för typ av resurs, exempelvis NSL-id för hjälpämne eller aktiv läkemedelssubstans" """
    Kod för typ av resurs, exempelvis NSL-id för hjälpämne eller aktiv läkemedelssubstans. Se även regel pattern.CVType.CodedWithNoExceptions
  """
* alertInformation.body.activity.resource.productId 0..1 SEEHDSRivCVTypeHealthcondDescription3 "Identifierare för viss produkt, t.ex." """
    Identifierare för viss produkt, t.ex. NPL-id för läkemedelsprodukt. Se även regel pattern.CVType.CodedWithNoExceptions
  """
* alertInformation.body.activity.resource.resourceProperty 0..* BackboneElement "Angivelse av egenskaper som en resurs kan ha, som inte kan utläsas från resursattributet typ" """
    Angivelse av egenskaper som en resurs kan ha, som inte kan utläsas från resursattributet typ.
  """
* alertInformation.body.activity.resource.resourceProperty.type 0..1 SEEHDSRivCVTypeHealthcondDescription3 "Kod för den typ av resursegenskap som avses i de fall detta inte framgår av attributet värde" """
    Kod för den typ av resursegenskap som avses i de fall detta inte framgår av attributet värde. Exempel är läkemedelsform eller tillverkare. Se även regel pattern.CVType
  """
* alertInformation.body.activity.resource.resourceProperty.value 1..1 SEEHDSRivString "Angivelse av värdet för den typ av egenskap som anges i attributet typ" """
    Angivelse av värdet för den typ av egenskap som anges i attributet typ. Exempelvis läkemedlets form enligt NPL för resursegenskap av typ ”läkemedelsform”, eller tillverkarens företagsnamn för resursegenskap av typ ”tillverkare”.
  """
* alertInformation.body.activity.bodyStructure 0..1 BackboneElement "Håller information om kroppens anatomiska delar såsom organ, lemmar och deras komponenter, inklusive …" """
    Håller information om kroppens anatomiska delar såsom organ, lemmar och deras komponenter, inklusive sidoangivelse (lateralitet) och ytterligare precisering
  """
* alertInformation.body.activity.bodyStructure.code 0..1 SEEHDSRivCVTypeHealthcondDescription3 "Kod för angivelse av kroppens anatomiska delar såsom organ, lemmar och deras komponenter" """
    Kod för angivelse av kroppens anatomiska delar såsom organ, lemmar och deras komponenter. Se även följande regler pattern.CVType.CodedWithNoExceptions Verifiera att angivet kodsystem är ok att använda [sch]
  """
* alertInformation.body.activity.bodyStructure.laterality 0..1 SEEHDSRivCVTypeHealthcondDescription3 "Kod för angivelse av lateralitet" """
    Kod för angivelse av lateralitet. Detta attribut används för att skilja på de anatomiska kroppsdelar som uppträder parvis, exempelvis ögon och armar. Om det finns behov av att ange en viss sida av ett givet organ, exempelvis höger ansiktshalva uttrycks detta i attributet precision. Giltiga värden är vänster, höger eller bilateralt. Se även följande regler pattern.CVType.CodedWithNoExceptions Verifiera att angivet kodsystem är ok att använda [sch]
  """
* alertInformation.body.activity.bodyStructure.specifiedLocation 0..* SEEHDSRivCVTypeHealthcondDescription3 "Kod för att vid behov ytterligare precisera lokalisation" """
    Kod för att vid behov ytterligare precisera lokalisation. Se även följande regler pattern.CVType.CodedWithNoExceptions Verifiera att angivet kodsystem är ok att använda [sch]
  """
* alertInformation.body.condition 0..1 BackboneElement "Uppmärksamhetsinformation av typ medicinskt tillstånd, som kan avse förekomst av implantat, förekomst av …" """
    Uppmärksamhetsinformation av typ medicinskt tillstånd, som kan avse förekomst av implantat, förekomst av transplantat eller annat medicinskt tillstånd. Se även regel Verify unique alert information.
  """
* alertInformation.body.condition.value 1..1 SEEHDSRivCVTypeHealthcondDescription3 "Angivelse av värde som alltid representerar det faktiska observerade hälsotillståndet" """
    Angivelse av värde som alltid representerar det faktiska observerade hälsotillståndet. Se även följande regler pattern.CVType.CodedWithNoExceptions Verifiera att angivet kodsystem är ok att använda [sch]
  """
* alertInformation.body.condition.status 1..1 SEEHDSRivCVTypeHealthcondDescription3 "Kod för observationens status, exempelvis för att dokumentera om det tillstånd som beskrivs har funnits eller …" """
    Kod för observationens status, exempelvis för att dokumentera om det tillstånd som beskrivs har funnits eller är ett potentiellt tillstånd. En instans av klassen observation kan inte byta status. Om man exempelvis vill dokumentera ett måltillstånd som senare uppfylls så dokumenteras detta som två instanser av klassen observation, en med status måltillstånd och en med status observerat. Se även följande regler pattern.CVType.CodedWithNoExceptions Verifiera att angivet kodsystem är ok att använda [sch]
  """
* alertInformation.body.condition.time 1..1 BackboneElement "Angivelse av den tid då det som observerats faktiskt förekom eller förväntas förekomma" """
    Angivelse av den tid då det som observerats faktiskt förekom eller förväntas förekomma. Se även regel Verify TimeType.
  """
* alertInformation.body.condition.time obeys getalertinformation3-time-choice
* alertInformation.body.condition.time.timestamp 0..1 SEEHDSRivTimeStamp "timestamp" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* alertInformation.body.condition.time.timePeriod 0..1 SEEHDSRivTimePeriodTypeHealthcondDescription3 "Används för att specificera ett datumintervall med hjälp av start- och slutdatum" """
    Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet YYYYMMDDhhmmss end: Slutdatum på formatet YYYYMMDDhhmmss
  """
* alertInformation.body.condition.negation 1..1 SEEHDSRivBoolean "Flagga som negerar förekomsten av det som beskrivs av attribut värde" """
    Flagga som negerar förekomsten av det som beskrivs av attribut värde. Vid förekomst av medicinskt tillstånd ska negation ha värde ’false’. Vid konstaterande av att patient inte har ett medicinskt tillstånd ska negation ha värde ’true’.
  """
* alertInformation.body.condition.bodyStructure 0..* BackboneElement "Håller information om kroppens anatomiska delar såsom organ, lemmar och deras komponenter, inklusive …" """
    Håller information om kroppens anatomiska delar såsom organ, lemmar och deras komponenter, inklusive sidoangivelse (lateralitet) och ytterligare precisering
  """
* alertInformation.body.condition.bodyStructure.code 0..1 SEEHDSRivCVTypeHealthcondDescription3 "Kod för angivelse av kroppens anatomiska delar såsom organ, lemmar och deras komponenter" """
    Kod för angivelse av kroppens anatomiska delar såsom organ, lemmar och deras komponenter. Se även följande regler pattern.CVType.CodedWithNoExceptions Verifiera att angivet kodsystem är ok att använda [sch]
  """
* alertInformation.body.condition.bodyStructure.laterality 0..1 SEEHDSRivCVTypeHealthcondDescription3 "Kod för angivelse av lateralitet" """
    Kod för angivelse av lateralitet. Detta attribut används för att skilja på de anatomiska kroppsdelar som uppträder parvis, exempelvis ögon och armar. Om det finns behov av att ange en viss sida av ett givet organ, exempelvis höger ansiktshalva uttrycks detta i attributet precision. Giltiga värden är vänster, höger eller bilateralt. Se även följande regler pattern.CVType.CodedWithNoExceptions Verifiera att angivet kodsystem är ok att använda [sch]
  """
* alertInformation.body.condition.bodyStructure.specifiedLocation 0..* SEEHDSRivCVTypeHealthcondDescription3 "Kod för att vid behov ytterligare precisera lokalisation" """
    Kod för att vid behov ytterligare precisera lokalisation. Se även följande regler pattern.CVType.CodedWithNoExceptions Verifiera att angivet kodsystem är ok att använda [sch]
  """
* alertInformation.body.condition.resource 0..1 BackboneElement "Håller information om något som förekommer som del i en aktivitet, observation eller process inom hälso- och …" """
    Håller information om något som förekommer som del i en aktivitet, observation eller process inom hälso- och sjukvård och som inte avser personer eller organisationer. Exempel är olika typer av medicintekniska produkter, hjälpmedel, läkemedel, organ och blod. Exempel som särskilt pekas ut som resurser som det i tillämpliga fall ska dokumenteras om är TNS-maskin, implantat och läkemedel.
  """
* alertInformation.body.condition.resource.rivId 0..1 SEEHDSRivIITypeHealthcondDescription3 "Identifierare på en viss verklig instans av resurs, exempelvis identifierare för ett implantat eller …" """
    Identifierare på en viss verklig instans av resurs, exempelvis identifierare för ett implantat eller transplantat.
  """
* insert RivXmlName(alertInformation.body.condition.resource.rivId, id)
* alertInformation.body.condition.resource.type 0..1 SEEHDSRivCVTypeHealthcondDescription3 "Kod för typ av resurs, exempelvis NSL-id för hjälpämne eller aktiv läkemedelssubstans" """
    Kod för typ av resurs, exempelvis NSL-id för hjälpämne eller aktiv läkemedelssubstans. Se även regel pattern.CVType.CodedWithNoExceptions
  """
* alertInformation.body.condition.resource.productId 0..1 SEEHDSRivCVTypeHealthcondDescription3 "Identifierare för viss produkt, t.ex." """
    Identifierare för viss produkt, t.ex. NPL-id för läkemedelsprodukt. Se även regel pattern.CVType.CodedWithNoExceptions
  """
* alertInformation.body.condition.resource.resourceProperty 0..* BackboneElement "Angivelse av egenskaper som en resurs kan ha, som inte kan utläsas från resursattributet typ" """
    Angivelse av egenskaper som en resurs kan ha, som inte kan utläsas från resursattributet typ.
  """
* alertInformation.body.condition.resource.resourceProperty.type 0..1 SEEHDSRivCVTypeHealthcondDescription3 "Kod för den typ av resursegenskap som avses i de fall detta inte framgår av attributet värde" """
    Kod för den typ av resursegenskap som avses i de fall detta inte framgår av attributet värde. Exempel är läkemedelsform eller tillverkare. Se även regel pattern.CVType
  """
* alertInformation.body.condition.resource.resourceProperty.value 1..1 SEEHDSRivString "Angivelse av värdet för den typ av egenskap som anges i attributet typ" """
    Angivelse av värdet för den typ av egenskap som anges i attributet typ. Exempelvis läkemedlets form enligt NPL för resursegenskap av typ ”läkemedelsform”, eller tillverkarens företagsnamn för resursegenskap av typ ”tillverkare”.
  """
* alertInformation.body.decisionNonstandardCareProcedure 0..1 BackboneElement "Uppmärksamhetsinformation av typ beslut som kan leda till särskild vårdrutin" """
    Uppmärksamhetsinformation av typ beslut som kan leda till särskild vårdrutin. Se även regel Verify unique alert information.
  """
* alertInformation.body.decisionNonstandardCareProcedure.code 1..1 SEEHDSRivCVTypeHealthcondDescription3 "Kod för det beslutet avser, exempelvis avvikelse från behandlingsrekommendation så som att i ett visst fall …" """
    Kod för det beslutet avser, exempelvis avvikelse från behandlingsrekommendation så som att i ett visst fall inte utföra en operation. Se även följande regler pattern.CVType.CodedWithNoExceptions Verifiera att angivet kodsystem är ok att använda [sch]
  """
* alertInformation.body.decisionNonstandardCareProcedure.description 0..1 SEEHDSRivString "Textuell beskrivning av det beslut som avses" """
    Textuell beskrivning av det beslut som avses. Beskrivningen kan i förekommande fall även innehålla särskilda villkor som hänger samman med beslutet.
  """
* alertInformation.body.decisionNonstandardCareProcedure.approval 1..1 SEEHDSRivBoolean "Anger huruvida det som avses i attributet kod bifalls eller inte" """
    Anger huruvida det som avses i attributet kod bifalls eller inte. Exempelvis ett beslut med kod = palliativ vård och bifall = sant innebär att patienten ska få palliativ vård, medan ett beslut med kod = palliativ vård och bifall = falskt innebär att patienten ej ska få palliativ vård.
  """
* alertInformation.body.decisionNonstandardCareProcedure.timestamp 1..1 SEEHDSRivTimeStamp "Angivelse av tidpunkt när beslutet fattades" """
    Angivelse av tidpunkt när beslutet fattades.
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* alertInformation.body.informationNonstandardCareProcedure 0..1 BackboneElement "Uppmärksamhetsinformation av typ information som kan leda till särskild vårdrutin" """
    Uppmärksamhetsinformation av typ information som kan leda till särskild vårdrutin. Se även regel Verify unique alert information.
  """
* alertInformation.body.informationNonstandardCareProcedure.value 1..1 SEEHDSRivCVTypeHealthcondDescription3 "Angivelse av värde som alltid representerar det faktiska observerade hälsotillståndet" """
    Angivelse av värde som alltid representerar det faktiska observerade hälsotillståndet. Se även följande regler pattern.CVType.CodedWithNoExceptions Verifiera att angivet kodsystem är ok att använda [sch]
  """
* alertInformation.body.informationNonstandardCareProcedure.status 1..1 SEEHDSRivCVTypeHealthcondDescription3 "Kod för observationens status, exempelvis för att dokumentera om det tillstånd som beskrivs har funnits eller …" """
    Kod för observationens status, exempelvis för att dokumentera om det tillstånd som beskrivs har funnits eller är ett potentiellt tillstånd. En instans av klassen observation kan inte byta status. Om man exempelvis vill dokumentera ett måltillstånd som senare uppfylls så dokumenteras detta som två instanser av klassen observation, en med status måltillstånd och en med status observerat. Se även följande regler pattern.CVType.CodedWithNoExceptions Verifiera att angivet kodsystem är ok att använda [sch]
  """
* alertInformation.body.informationNonstandardCareProcedure.time 1..1 BackboneElement "Angivelse av den tid då det som observerats faktiskt förekom eller förväntas förekomma" """
    Angivelse av den tid då det som observerats faktiskt förekom eller förväntas förekomma. Se även regel Verify TimeType.
  """
* alertInformation.body.informationNonstandardCareProcedure.time obeys getalertinformation3-time-choice
* alertInformation.body.informationNonstandardCareProcedure.time.timestamp 0..1 SEEHDSRivTimeStamp "timestamp" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* alertInformation.body.informationNonstandardCareProcedure.time.timePeriod 0..1 SEEHDSRivTimePeriodTypeHealthcondDescription3 "Används för att specificera ett datumintervall med hjälp av start- och slutdatum" """
    Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet YYYYMMDDhhmmss end: Slutdatum på formatet YYYYMMDDhhmmss
  """
* alertInformation.body.informationNonstandardCareProcedure.negation 1..1 SEEHDSRivBoolean "Flagga som negerar förekomsten av det som beskrivs av attribut värde" """Flagga som negerar förekomsten av det som beskrivs av attribut värde."""
* alertInformation.body.contagion 0..1 BackboneElement "Uppmärksamhetsinformation av typ smitta, som kan avse smittsam sjukdom eller smittämne" """
    Uppmärksamhetsinformation av typ smitta, som kan avse smittsam sjukdom eller smittämne. Se även regel Verify unique alert information.
  """
* alertInformation.body.contagion.value 1..1 SEEHDSRivCVTypeHealthcondDescription3 "Kod för den smittsamma sjukdom eller det smittämne som observerats" """
    Kod för den smittsamma sjukdom eller det smittämne som observerats. Se även följande regler pattern.CVType.CodedWithNoExceptions Verifiera att angivet kodsystem är ok att använda [sch]
  """
* alertInformation.body.contagion.status 1..1 SEEHDSRivCVTypeHealthcondDescription3 "Kod för observationens status, exempelvis för att dokumentera om det tillstånd som beskrivs har funnits eller …" """
    Kod för observationens status, exempelvis för att dokumentera om det tillstånd som beskrivs har funnits eller är ett potentiellt tillstånd. En instans av klassen observation kan inte byta status. Om man exempelvis vill dokumentera ett måltillstånd som senare uppfylls så dokumenteras detta som två instanser av klassen observation, en med status måltillstånd och en med status observerat. Se även följande regler pattern.CVType.CodedWithNoExceptions Verifiera att angivet kodsystem är ok att använda [sch]
  """
* alertInformation.body.contagion.time 1..1 BackboneElement "Angivelse av den tid då den smittsamma sjukdomen eller smittämnet som observerats faktiskt förekom eller …" """
    Angivelse av den tid då den smittsamma sjukdomen eller smittämnet som observerats faktiskt förekom eller förväntas förekomma. Se även regel Verify TimeType.
  """
* alertInformation.body.contagion.time obeys getalertinformation3-time-choice
* alertInformation.body.contagion.time.timestamp 0..1 SEEHDSRivTimeStamp "timestamp" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* alertInformation.body.contagion.time.timePeriod 0..1 SEEHDSRivTimePeriodTypeHealthcondDescription3 "Används för att specificera ett datumintervall med hjälp av start- och slutdatum" """
    Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet YYYYMMDDhhmmss end: Slutdatum på formatet YYYYMMDDhhmmss
  """
* alertInformation.body.contagion.negation 1..1 SEEHDSRivBoolean "Flagga som negerar förekomsten av det som beskrivs av attribut värde" """
    Flagga som negerar förekomsten av det som beskrivs av attribut värde. Vid förekomst av smittsam sjukdom eller smittämne ska negation ha värde ’false’. Vid konstaterande av att patient inte har smittsam sjukdom eller inte bär på smittämne ska negation ha värde ’true’.
  """
* alertInformation.body.unstructuredAlertInformation 0..1 BackboneElement "Uppmärksamhetsinformation av typ ej strukturanpassad uppmärksamhetsinformation" """
    Uppmärksamhetsinformation av typ ej strukturanpassad uppmärksamhetsinformation. Se även regel Verify unique alert information.
  """
* alertInformation.body.unstructuredAlertInformation.title 0..1 SEEHDSRivString "Ord eller fras avsedd för identifikation av uppmärksamhetsinformation" """Ord eller fras avsedd för identifikation av uppmärksamhetsinformation."""
* alertInformation.body.unstructuredAlertInformation.description 0..1 SEEHDSRivString "Textuellt beskriven historisk uppmärksamhetsinformation" """Textuellt beskriven historisk uppmärksamhetsinformation."""
* result 1..1 BackboneElement "Innehåller information om det gick bra eller ej att besvara förfrågan" """
    Innehåller information om det gick bra eller ej att besvara förfrågan. Se avsnitt 7.1.7 för beskrivning av hantering vid logiska fel.
  """
* result.resultCode 1..1 SEEHDSRivString "Anger resultatet av besvarad förfrågan" """
    Anger resultatet av besvarad förfrågan. Kan endast vara OK, INFO eller ERROR.
    Tillåtna värden enligt XSD: OK, ERROR, INFO.
  """
* insert RivNs(result.resultCode, urn:riv:clinicalprocess:healthcond:description:3)
* result.resultText 1..1 SEEHDSRivString "Optionellt felmeddelande som innehåller information om felet som uppstod" """Optionellt felmeddelande som innehåller information om felet som uppstod."""
* insert RivNs(result.resultText, urn:riv:clinicalprocess:healthcond:description:3)
