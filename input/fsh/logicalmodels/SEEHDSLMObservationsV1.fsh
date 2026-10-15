// RIV-TA GetObservations 1.2 – svarsmeddelandet GetObservationsResponse.
// Struktur, namn, ordning, namnrymder och XSD-kardinaliteter är genererade från
// riv.clinicalprocess.healthcond.basic@1.2.3/schemas/interactions/GetObservationsInteraction/GetObservationsResponder_1.2.xsd (bitbucket.org/rivta-domains).
// Kardinaliteter är verifierade mot TKB_clinicalprocess_healthcond_basic.docx; texter är sammanslagna från tidigare modell och TKB.

Logical: SEEHDSLMObservationsV1
Id: SEEHDSLMObservationsV1
Title: "GetObservations 1.2"
Description: """
  Logisk modell för svaret i tjänstekontraktet GetObservations 1.2
  (RIV-TA urn:riv:clinicalprocess:healthcond:basic:GetObservationsResponder:1), domänversion 1.2.3.
  Äldre majorversion som fortfarande används. Senaste versionen beskrivs i SEEHDSLMObservations.
"""
* insert RivRoot(GetObservationsResponse, urn:riv:clinicalprocess:healthcond:basic:GetObservationsResponder:1)
* observationGroup 0..* BackboneElement "Grupp av observationer som delar samma patient, utförare (m" """
    Grupp av observationer som delar samma patient, utförare (m. tillhörande organisatorisk knytning), signerare, ytterligare deltagare, källsystem, vårdprocess-id, utrustning, samt plats. Denna nivå är framförallt till för att kunna begränsa mängden redundant data i överföringen i de fall då flera observationer gjorts med samma medverkande (exempelvis mätning av systoliskt och diastoliskt blodtryck). Denna klass är en teknisk optimering som inte speglas i NI 2015:1.
  """
* observationGroup.patient 1..1 BackboneElement "Den patient som observationsgruppen avser" """Den patient som observationsgruppen avser."""
* insert RivNs(observationGroup.patient, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.patient.rivId 1..1 SEEHDSRivIITypeHealthcondBasic1 "Id för patienten, 12 tecken utan avskiljare (IIType)" """
    - root: OID för typ av identifierare. Personnummer 1.2.752.129.2.1.3.1, samordningsnummer 1.2.752.129.2.1.3.3, reservnummer lokalt definierad OID (t.ex. SLL reservnummer 1.2.752.97.3.1.3). - extension: personnummer/samordningsnummer/reservnummer.
  """
* insert RivNs(observationGroup.patient.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.patient.rivId, id)
* observationGroup.patient.name 0..1 SEEHDSRivString "Personens namn" """Personens namn."""
* insert RivNs(observationGroup.patient.name, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.patient.dateOfBirth 1..1 SEEHDSRivDate "Patientens födelseår, månad och dag. Ej personnummer. Format ÅÅÅÅMMDD (DateType)" """
    Patientens födelseår, månad och dag. Ej personnummer. Format ÅÅÅÅMMDD (DateType).
    Format enligt XSD (DateType): ÅÅÅÅMMDD.
  """
* insert RivNs(observationGroup.patient.dateOfBirth, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.patient.gender 0..1 SEEHDSRivCVTypeHealthcondBasic1 "Patientens kön (CVType). KV kön, OID 1.2.752.129.2.2.1.1" """Koder: 0 okänt, 1 man, 2 kvinna, 9 ej tillämpligt. Kodverket finns i [R9]."""
* insert RivNs(observationGroup.patient.gender, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.performerRole 1..1 BackboneElement "Den som utfört observationerna inom gruppen" """Den som utfört observationerna inom gruppen."""
* insert RivNs(observationGroup.performerRole, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.performerRole.rivId 0..1 SEEHDSRivIITypeHealthcondBasic1 "HSA-id för personen som utfört observationen (IIType). Regel 2.1" """
    Anges enbart om observationen utförts av hälso- och sjukvårdspersonal. root = 1.2.752.129.2.1.4.1 (HSA-katalogen), extension = HSA-id.
  """
* insert RivNs(observationGroup.performerRole.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.performerRole.rivId, id)
* observationGroup.performerRole.code 1..1 SEEHDSRivCVTypeHealthcondBasic1 "Den roll som utföraren agerar i under observationen (CVType)" """Den roll som utföraren agerar i under observationen (CVType)."""
* insert RivNs(observationGroup.performerRole.code, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.performerRole.person 0..1 BackboneElement "Den person som utfört observationen (PersonType). Regel 2.1" """
    Används då det finns behov av att beskriva egenskaper hos personen som inte beskrivs i performerRole (t.ex. namn på hälso- och sjukvårdspersonal), eller då observationen utförts av en person som inte klassas som hälso- och sjukvårdspersonal.
  """
* insert RivNs(observationGroup.performerRole.person, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.performerRole.person.rivId 0..1 SEEHDSRivIITypeHealthcondBasic1 "Identifierare för personen (IIType)" """
    Anges endast om observationen utförts av person som INTE klassas som hälso- och sjukvårdspersonal. root: OID för personnummer (1.2.752.129.2.1.3.1), samordningsnummer (1.2.752.129.2.1.3.3) eller lokalt definierat reservnummer. extension: personnummer/samordningsnummer/reservnummer.
  """
* insert RivNs(observationGroup.performerRole.person.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.performerRole.person.rivId, id)
* observationGroup.performerRole.person.name 0..1 SEEHDSRivString "För- och efternamn i klartext. Regel 2.1" """För- och efternamn i klartext. Regel 2.1."""
* insert RivNs(observationGroup.performerRole.person.name, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.performerRole.careUnit 0..1 BackboneElement "PDL-vårdenhet och vårdgivare som observationen utförs på uppdrag av (CareUnitType). Regel 2.1, 2.5" """
    Ska endast anges då den person som utfört observationen är hälso- och sjukvårdspersonal. Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL.
  """
* insert RivNs(observationGroup.performerRole.careUnit, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.performerRole.careUnit.rivId 1..1 SEEHDSRivIITypeHealthcondBasic1 "HSA-id för PDL-vårdenhet med medicinskt ansvar för observationen (IIType)" """HSA-id för PDL-vårdenhet med medicinskt ansvar för observationen (IIType)."""
* insert RivNs(observationGroup.performerRole.careUnit.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.performerRole.careUnit.rivId, id)
* observationGroup.performerRole.careUnit.name 0..1 SEEHDSRivString "Vårdenhetens namn" """Vårdenhetens namn."""
* insert RivNs(observationGroup.performerRole.careUnit.name, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.performerRole.careUnit.careGiver 1..1 BackboneElement "Den vårdgivare som enheten är knuten till (CareGiverType)" """Den vårdgivare som enheten är knuten till (CareGiverType)."""
* insert RivNs(observationGroup.performerRole.careUnit.careGiver, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.performerRole.careUnit.careGiver.rivId 1..1 SEEHDSRivIITypeHealthcondBasic1 "HSA-id för vårdgivaren (IIType)" """HSA-id för vårdgivaren (IIType)."""
* insert RivNs(observationGroup.performerRole.careUnit.careGiver.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.performerRole.careUnit.careGiver.rivId, id)
* observationGroup.performerRole.careUnit.careGiver.name 0..1 SEEHDSRivString "Vårdgivarens namn" """Vårdgivarens namn."""
* insert RivNs(observationGroup.performerRole.careUnit.careGiver.name, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.legalAuthenticator 0..1 BackboneElement "Den som signerat observationerna inom gruppen" """Den som signerat observationerna inom gruppen."""
* insert RivNs(observationGroup.legalAuthenticator, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.legalAuthenticator.rivId 0..1 SEEHDSRivIITypeHealthcondBasic1 "HSA-id för personen som signerat (IIType). root = 1.2.752.129.2.1.4.1" """HSA-id för personen som signerat (IIType). root = 1.2.752.129.2.1.4.1."""
* insert RivNs(observationGroup.legalAuthenticator.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.legalAuthenticator.rivId, id)
* observationGroup.legalAuthenticator.time 1..1 SEEHDSRivPartialTimeStampTypeHealthcondBasic1 "Tid för signeringen (PartialTimeStampType). Format ÅÅÅÅMMDDttmmss där klockslaget är frivilligt" """
    Tid för signeringen (PartialTimeStampType). Format ÅÅÅÅMMDDttmmss där klockslaget är frivilligt.
  """
* insert RivNs(observationGroup.legalAuthenticator.time, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.legalAuthenticator.name 0..1 SEEHDSRivString "För- och efternamn i klartext för signerande person. Regel 2.3" """För- och efternamn i klartext för signerande person. Regel 2.3."""
* insert RivNs(observationGroup.legalAuthenticator.name, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant 0..* BackboneElement "Övriga deltagare relaterat till observationerna inom gruppen" """Övriga deltagare relaterat till observationerna inom gruppen."""
* insert RivNs(observationGroup.additionalParticipant, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.rivId 0..1 SEEHDSRivIITypeHealthcondBasic1 "HSA-id för ytterligare deltagare som är hälso- och sjukvårdspersonal (IIType)" """HSA-id för ytterligare deltagare som är hälso- och sjukvårdspersonal (IIType)."""
* insert RivNs(observationGroup.additionalParticipant.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.additionalParticipant.rivId, id)
* observationGroup.additionalParticipant.type 1..1 SEEHDSRivCVTypeHealthcondBasic1 "Typ av deltagande (CVType), t.ex. sekundär utförare/assistent" """codeSystemName, codeSystemVersion och displayName ska ej anges (0..0)."""
* insert RivNs(observationGroup.additionalParticipant.type, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.role 1..1 SEEHDSRivCVTypeHealthcondBasic1 "Den roll deltagaren agerar i (CVType), t.ex. anhörig eller vårdpersonal" """codeSystemName, codeSystemVersion och displayName ska ej anges (0..0)."""
* insert RivNs(observationGroup.additionalParticipant.role, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.time 0..1 SEEHDSRivTimePeriodTypeHealthcondBasic1 "Deltagandetid om den inte överensstämmer med observationens (TimePeriodType)" """Deltagandetid om den inte överensstämmer med observationens (TimePeriodType)."""
* insert RivNs(observationGroup.additionalParticipant.time, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.person 0..1 BackboneElement "Deltagande övrig person (PersonType)" """Deltagande övrig person (PersonType)."""
* insert RivNs(observationGroup.additionalParticipant.person, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.person.rivId 0..1 SEEHDSRivIITypeHealthcondBasic1 "Identifierare för personen (IIType)" """Identifierare för personen (IIType)."""
* insert RivNs(observationGroup.additionalParticipant.person.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.additionalParticipant.person.rivId, id)
* observationGroup.additionalParticipant.person.name 0..1 SEEHDSRivString "För- och efternamn i klartext" """För- och efternamn i klartext."""
* insert RivNs(observationGroup.additionalParticipant.person.name, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.organisation 0..1 BackboneElement "Deltagande övrig organisation (OrganisationType)" """Deltagande övrig organisation (OrganisationType)."""
* insert RivNs(observationGroup.additionalParticipant.organisation, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.organisation.rivId 0..1 SEEHDSRivIITypeHealthcondBasic1 "Id för organisation, vanligtvis HSA-id (root 1.2.752.129.2.1.4.1)" """Id för organisation, vanligtvis HSA-id (root 1.2.752.129.2.1.4.1)."""
* insert RivNs(observationGroup.additionalParticipant.organisation.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.additionalParticipant.organisation.rivId, id)
* observationGroup.additionalParticipant.organisation.name 0..1 SEEHDSRivString "Organisationens namn" """Organisationens namn."""
* insert RivNs(observationGroup.additionalParticipant.organisation.name, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.device 0..1 BackboneElement "Deltagande utrustning (DeviceType)" """Deltagande utrustning (DeviceType)."""
* insert RivNs(observationGroup.additionalParticipant.device, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.device.rivId 0..1 SEEHDSRivIITypeHealthcondBasic1 "Identitetsbeteckning på en viss verklig instans av utrustning (IIType)" """Identitetsbeteckning på en viss verklig instans av utrustning (IIType)."""
* insert RivNs(observationGroup.additionalParticipant.device.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.additionalParticipant.device.rivId, id)
* observationGroup.additionalParticipant.device.type 0..1 SEEHDSRivCVTypeHealthcondBasic1 "Typ av deltagande utrustning (CVType)" """Typ av deltagande utrustning (CVType)."""
* insert RivNs(observationGroup.additionalParticipant.device.type, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.device.model 0..1 BackboneElement "Modell för angiven utrustning (SCType)" """Modell för angiven utrustning (SCType)."""
* insert RivNs(observationGroup.additionalParticipant.device.model, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.device.model.code 0..1 SEEHDSRivCVTypeHealthcondBasic1 "Modellbeteckning (CVType). codeSystemVersion ska ej anges" """Modellbeteckning (CVType). codeSystemVersion ska ej anges."""
* insert RivNs(observationGroup.additionalParticipant.device.model.code, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.device.model.value 0..1 SEEHDSRivString "Tillverkarens modellbeteckning i klartext; komplement eller i stället för modelCode" """Tillverkarens modellbeteckning i klartext; komplement eller i stället för modelCode."""
* insert RivNs(observationGroup.additionalParticipant.device.model.value, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.location 0..1 BackboneElement "Deltagande plats (LocationType). Sammanslagning av roll och plats enligt V-MIM" """Deltagande plats (LocationType). Sammanslagning av roll och plats enligt V-MIM."""
* insert RivNs(observationGroup.additionalParticipant.location, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.location.rivId 0..1 SEEHDSRivIITypeHealthcondBasic1 "HSA-id för platsen; anges om platsen är en vårdenhet (IIType)" """HSA-id för platsen; anges om platsen är en vårdenhet (IIType)."""
* insert RivNs(observationGroup.additionalParticipant.location.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.additionalParticipant.location.rivId, id)
* observationGroup.additionalParticipant.location.name 1..1 SEEHDSRivString "Namn på den plats där observationen har genomförts" """Namn på den plats där observationen har genomförts."""
* insert RivNs(observationGroup.additionalParticipant.location.name, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.location.address 0..* BackboneElement "Adress till plats (AddressType)" """Adress till plats (AddressType)."""
* insert RivNs(observationGroup.additionalParticipant.location.address, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.location.address.use 0..1 SEEHDSRivString "Adressens användning (PostalAddressUseEnum). Den primära adressen anges utan use-kod" """
    Adressens användning (PostalAddressUseEnum). Den primära adressen anges utan use-kod.
    Tillåtna värden enligt XSD: PHYS, H, HV, WP, TMP.
  """
* insert RivNs(observationGroup.additionalParticipant.location.address.use, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.location.address.part 1..* BackboneElement "Adressdel (AddressPartType). Delarna listas i ordningen CAR, POB, SAL, ZIP, CTY, CNT, PRE, CPA" """
    Adressdel (AddressPartType). Delarna listas i ordningen CAR, POB, SAL, ZIP, CTY, CNT, PRE, CPA.
  """
* insert RivNs(observationGroup.additionalParticipant.location.address.part, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.location.address.part.value 1..1 SEEHDSRivString "Adressdelens värde" """Adressdelens värde."""
* insert RivNs(observationGroup.additionalParticipant.location.address.part.value, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.location.address.part.type 0..1 SEEHDSRivString "Typ av adressdel (AddressPartTypeEnum, baserad på ISO 21090)" """
    Typ av adressdel (AddressPartTypeEnum, baserad på ISO 21090).
    Tillåtna värden enligt XSD: SAL, CAR, CEN, CNT, CPA, CTY, POB, ZIP, PRE, STA.
  """
* insert RivNs(observationGroup.additionalParticipant.location.address.part.type, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.location.electronicAddress 0..* BackboneElement "Elektronisk adress till plats (TelType)" """Elektronisk adress till plats (TelType)."""
* insert RivNs(observationGroup.additionalParticipant.location.electronicAddress, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.location.electronicAddress.use 1..1 SEEHDSRivString "Typ av elektronisk adress (TelTypeEnum): voice, fax, data, sms" """
    Typ av elektronisk adress (TelTypeEnum): voice, fax, data, sms.
    Tillåtna värden enligt XSD: voice, fax, data, sms.
  """
* insert RivNs(observationGroup.additionalParticipant.location.electronicAddress.use, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.location.electronicAddress.value 1..1 SEEHDSRivString "Elektronisk adress" """Elektronisk adress."""
* insert RivNs(observationGroup.additionalParticipant.location.electronicAddress.value, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.sourceSystem 1..1 BackboneElement "Källsystem som observationsgruppen lagras i" """Källsystem som observationsgruppen lagras i."""
* insert RivNs(observationGroup.sourceSystem, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.sourceSystem.rivId 1..1 SEEHDSRivIITypeHealthcondBasic1 "HSA-id för källsystemet (IIType). root = 1.2.752.129.2.1.4.1" """HSA-id för källsystemet (IIType). root = 1.2.752.129.2.1.4.1."""
* insert RivNs(observationGroup.sourceSystem.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.sourceSystem.rivId, id)
* observationGroup.observation 1..* BackboneElement "De observationer som ligger inom denna grupp av observationer" """De observationer som ligger inom denna grupp av observationer."""
* insert RivNs(observationGroup.observation, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.rivId 1..1 SEEHDSRivIITypeHealthcondBasic1 "Unik identifierare för observationen (IIType)" """
    Identifieraren ska vara konsistent och beständig mellan olika majorversioner av ett kontrakt och mellan olika kontrakt. root: vårdgivarens HSA-id. extension: den inom vårdgivaren eller källsystemet unika identifieraren för observationen.
  """
* insert RivNs(observationGroup.observation.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.observation.rivId, id)
* observationGroup.observation.type 1..1 SEEHDSRivCVTypeHealthcondBasic1 "NI 2015:1 Observation.typ — kod för typ av observation (CVType)" """
    Det som faktiskt är avsett, önskat eller observerat tillstånd dokumenteras i value. Exempelvis kan type vara "diagnos", vilket innebär att value håller diagnosen.
  """
* insert RivNs(observationGroup.observation.type, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.status 0..0 SEEHDSRivCVTypeHealthcondBasic1 "NI 2015:1 Observation.status (CVType). TKB: 0..0" """
    Denna version av specifikationen tillåter endast faktiskt utförda observationer; TKB anger kardinalitet 0..0 medan schemat tillåter 0..1. Om statuskoden utelämnas antas detta vara en faktisk observation.
  """
* insert RivNs(observationGroup.observation.status, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.time 1..1 BackboneElement "Används för att specificera ett datumintervall med hjälp av start- och slutdatum" """
    Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet YYYYMMDDhhmmss end: Slutdatum på formatet YYYYMMDDhhmmss
  """
* insert RivNs(observationGroup.observation.time, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.time.start 0..1 SEEHDSRivPartialTimeStampTypeHealthcondBasic1 "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss"
* insert RivNs(observationGroup.observation.time.start, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.time.end 0..1 SEEHDSRivPartialTimeStampTypeHealthcondBasic1 "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss"
* insert RivNs(observationGroup.observation.time.end, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.method 0..1 SEEHDSRivCVTypeHealthcondBasic1 "Kod för typ av tillvägagångssätt för genomförandet av observationen (CVType)" """Kod för typ av tillvägagångssätt för genomförandet av observationen (CVType)."""
* insert RivNs(observationGroup.observation.method, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.value 1..1 BackboneElement "NI 2015:1 Observation.värde — observationens utfall (ValueANYType)" """
    En och endast en av huvudtyperna cv, pq, ivl_pq, ts och ivl_ts. I schemat en xs:sequence av valfria element (av kompatibilitetsskäl i stället för xs:choice).
  """
* insert RivNs(observationGroup.observation.value, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.value.pq 0..1 SEEHDSRivPQTypeHealthcondBasic1 "Mätvärde (PQType), t.ex. 187 cm" """Mätvärde (PQType), t.ex. 187 cm."""
* insert RivNs(observationGroup.observation.value.pq, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.value.ts 0..1 SEEHDSRivPartialTimeStampTypeHealthcondBasic1 "Tidpunkt (PartialTimeStampType), precision ner till endast årtal" """Tidpunkt (PartialTimeStampType), precision ner till endast årtal."""
* insert RivNs(observationGroup.observation.value.ts, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.value.ivlTs 0..1 BackboneElement "Används för att specificera ett datumintervall med hjälp av start- och slutdatum" """
    Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet YYYYMMDDhhmmss end: Slutdatum på formatet YYYYMMDDhhmmss
  """
* insert RivNs(observationGroup.observation.value.ivlTs, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.observation.value.ivlTs, ivl_ts)
* observationGroup.observation.value.ivlTs.start 0..1 SEEHDSRivPartialTimeStampTypeHealthcondBasic1 "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss"
* insert RivNs(observationGroup.observation.value.ivlTs.start, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.value.ivlTs.end 0..1 SEEHDSRivPartialTimeStampTypeHealthcondBasic1 "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss"
* insert RivNs(observationGroup.observation.value.ivlTs.end, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.value.cv 0..1 SEEHDSRivCVTypeHealthcondBasic1 "Kodat värde (CVType), t.ex. diagnoskod enligt ICD-10 eller kliniskt fynd enligt Snomed CT" """
    Kodat värde (CVType), t.ex. diagnoskod enligt ICD-10 eller kliniskt fynd enligt Snomed CT.
  """
* insert RivNs(observationGroup.observation.value.cv, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.value.ivlPq 0..1 SEEHDSRivPQIntervalTypeHealthcondBasic12 "ivlPq"
* insert RivNs(observationGroup.observation.value.ivlPq, urn:riv:clinicalprocess:healthcond:basic:1.2)
* insert RivXmlName(observationGroup.observation.value.ivlPq, ivl_pq)
* observationGroup.observation.targetSite 0..1 SEEHDSRivCVTypeHealthcondBasic1 "NI 2015:1 Observation.lokalisation (CVType)" """
    Beskriver vad observationen avser gällande anatomi, funktion eller system. Används endast om inte type innefattar tillräcklig information om detta.
  """
* insert RivNs(observationGroup.observation.targetSite, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.valueNegation 1..1 SEEHDSRivBoolean "NI 2015:1 Observation.negation — negerar betydelsen av value. Normalvärde false" """NI 2015:1 Observation.negation — negerar betydelsen av value. Normalvärde false."""
* insert RivNs(observationGroup.observation.valueNegation, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.description 0..1 SEEHDSRivString "Fritextbeskrivning av observationen där sådan kompletterar kodbeteckningen" """Fritextbeskrivning av observationen där sådan kompletterar kodbeteckningen."""
* insert RivNs(observationGroup.observation.description, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.approvedForPatient 1..1 SEEHDSRivBoolean "Om informationen får delas till patient (menprövad)" """Om informationen får delas till patient (menprövad)."""
* insert RivNs(observationGroup.observation.approvedForPatient, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.registrationTime 0..1 SEEHDSRivTimeStamp "Dokumentationstidpunkt i patientens journal. Format ÅÅÅÅMMDDttmmss (TimeStampType)" """
    Dokumentationstidpunkt i patientens journal. Format ÅÅÅÅMMDDttmmss (TimeStampType).
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(observationGroup.observation.registrationTime, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.relation 0..* BackboneElement "Typade samband till andra informationsmängder (RelationType)" """Typade samband till andra informationsmängder (RelationType)."""
* insert RivNs(observationGroup.observation.relation, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.relation.code 1..1 SEEHDSRivCVTypeHealthcondBasic1 "Typ av relation den refererade informationen har till observationen (CVType)" """Typ av relation den refererade informationen har till observationen (CVType)."""
* insert RivNs(observationGroup.observation.relation.code, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.relation.referredInformation 1..1 BackboneElement "Den refererade informationen (ReferredInformationType)" """Den refererade informationen (ReferredInformationType)."""
* insert RivNs(observationGroup.observation.relation.referredInformation, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.relation.referredInformation.rivId 1..1 SEEHDSRivIITypeHealthcondBasic1 "Den refererade informationens identitet (IIType)" """
    root: HSA-id för källsystem där den refererade informationen är lagrad. extension: ett inom vårdgivaren unikt id.
  """
* insert RivNs(observationGroup.observation.relation.referredInformation.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.observation.relation.referredInformation.rivId, id)
* observationGroup.observation.relation.referredInformation.time 1..1 SEEHDSRivPartialTimeStampTypeHealthcondBasic1 "Starttid för refererad information (PartialTimeStampType). Regel 2.4" """Starttid för refererad information (PartialTimeStampType). Regel 2.4."""
* insert RivNs(observationGroup.observation.relation.referredInformation.time, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.relation.referredInformation.type 1..1 SEEHDSRivString "Typ av uppgift som sambandet pekar ut — kod från Categorization i engagemangsindex, t.ex. chb-o" """
    Typ av uppgift som sambandet pekar ut — kod från Categorization i engagemangsindex, t.ex. chb-o.
  """
* insert RivNs(observationGroup.observation.relation.referredInformation.type, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.relation.referredInformation.informationOwner 1..1 BackboneElement "Vårdgivare som är informationsägare av den refererade informationen (InformationOwnerType)" """
    Vårdgivare som är informationsägare av den refererade informationen (InformationOwnerType).
  """
* insert RivNs(observationGroup.observation.relation.referredInformation.informationOwner, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.relation.referredInformation.informationOwner.rivId 1..1 SEEHDSRivIITypeHealthcondBasic1 "Vårdgivarens HSA-id (IIType). root = 1.2.752.129.2.1.4.1" """Vårdgivarens HSA-id (IIType). root = 1.2.752.129.2.1.4.1."""
* insert RivNs(observationGroup.observation.relation.referredInformation.informationOwner.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.observation.relation.referredInformation.informationOwner.rivId, id)
