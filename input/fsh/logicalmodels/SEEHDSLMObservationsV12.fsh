// RIV-TA GetObservations 1.2 – svarsmeddelandet GetObservationsResponse.
// Struktur, namn, ordning, namnrymder och XSD-kardinaliteter är genererade från
// riv.clinicalprocess.healthcond.basic/schemas/interactions/GetObservationsInteraction/GetObservationsResponder_1.2.xsd @ 1.2.3 (bitbucket.org/rivta-domains).
// Kardinaliteter är verifierade mot TKB_clinicalprocess_healthcond_basic.docx; texter är sammanslagna från tidigare modell och TKB.

Invariant: getobservations12-id-choice
Description: "Högst ett av id och person.id får anges"
Expression: "rivId.combine(person.rivId).count() <= 1"
Severity: #error

Invariant: getobservations12-participant-choice
Description: "En och endast en av person, organisation, device och location ska anges"
Expression: "person.combine(organisation).combine(device).combine(location).count() = 1"
Severity: #error

Logical: SEEHDSLMObservationsV12
Id: SEEHDSLMObservationsV12
Title: "GetObservations 1.2"
Description: """
  Logisk modell för version 1.2 av tjänstekontraktet GetObservations
  (urn:riv:clinicalprocess:healthcond:basic:GetObservationsResponder:1).
  Mappningen utgår från versionen i SEEHDSLMObservations. Skillnaderna mot den och hur de
  påverkar mappningen beskrivs på tjänstekontraktets mappningssida.
"""
* insert RivRoot(GetObservationsResponse, urn:riv:clinicalprocess:healthcond:basic:GetObservationsResponder:1)
* observationGroup 0..* BackboneElement "Grupp av observationer som delar samma patient, utförare (m" """
    Grupp av observationer som delar samma patient, utförare (m. tillhörande organisatorisk knytning), signerare, ytterligare deltagare, källsystem, vårdprocess-id, utrustning, samt plats. Denna nivå är framförallt till för att kunna begränsa mängden redundant data i överföringen i de fall då flera observationer gjorts med samma medverkande (exempelvis mätning av systoliskt och diastoliskt blodtryck). Denna klass är en teknisk optimering som inte speglas i NI 2015:1.
  """
* observationGroup.patient 1..1 BackboneElement "Den patient som observationsgruppen avser" """Den patient som observationsgruppen avser."""
* insert RivNs(observationGroup.patient, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.patient.rivId 1..1 SEEHDSRivIITypeHealthcondBasic1 "rivId"
* insert RivNs(observationGroup.patient.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.patient.rivId, id)
* observationGroup.patient.name 0..1 SEEHDSRivString "name"
* insert RivNs(observationGroup.patient.name, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.patient.dateOfBirth 1..1 SEEHDSRivDate "dateOfBirth" """Format enligt XSD (DateType): ÅÅÅÅMMDD."""
* insert RivNs(observationGroup.patient.dateOfBirth, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.patient.gender 0..1 SEEHDSRivCVTypeHealthcondBasic1 "gender"
* insert RivNs(observationGroup.patient.gender, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.performerRole 1..1 BackboneElement "Den som utfört observationerna inom gruppen" """Den som utfört observationerna inom gruppen."""
* insert RivNs(observationGroup.performerRole, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.performerRole obeys getobservations12-id-choice
* observationGroup.performerRole.rivId 0..1 SEEHDSRivIITypeHealthcondBasic1 "rivId"
* insert RivNs(observationGroup.performerRole.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.performerRole.rivId, id)
* observationGroup.performerRole.code 1..1 SEEHDSRivCVTypeHealthcondBasic1 "code"
* insert RivNs(observationGroup.performerRole.code, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.performerRole.person 0..1 BackboneElement "person"
* insert RivNs(observationGroup.performerRole.person, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.performerRole.person.rivId 0..1 SEEHDSRivIITypeHealthcondBasic1 "rivId"
* insert RivNs(observationGroup.performerRole.person.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.performerRole.person.rivId, id)
* observationGroup.performerRole.person.name 0..1 SEEHDSRivString "name"
* insert RivNs(observationGroup.performerRole.person.name, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.performerRole.careUnit 0..1 BackboneElement "careUnit"
* insert RivNs(observationGroup.performerRole.careUnit, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.performerRole.careUnit.rivId 1..1 SEEHDSRivIITypeHealthcondBasic1 "rivId"
* insert RivNs(observationGroup.performerRole.careUnit.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.performerRole.careUnit.rivId, id)
* observationGroup.performerRole.careUnit.name 0..1 SEEHDSRivString "name"
* insert RivNs(observationGroup.performerRole.careUnit.name, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.performerRole.careUnit.careGiver 1..1 BackboneElement "careGiver"
* insert RivNs(observationGroup.performerRole.careUnit.careGiver, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.performerRole.careUnit.careGiver.rivId 1..1 SEEHDSRivIITypeHealthcondBasic1 "rivId"
* insert RivNs(observationGroup.performerRole.careUnit.careGiver.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.performerRole.careUnit.careGiver.rivId, id)
* observationGroup.performerRole.careUnit.careGiver.name 0..1 SEEHDSRivString "name"
* insert RivNs(observationGroup.performerRole.careUnit.careGiver.name, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.legalAuthenticator 0..1 BackboneElement "Den som signerat observationerna inom gruppen" """Den som signerat observationerna inom gruppen."""
* insert RivNs(observationGroup.legalAuthenticator, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.legalAuthenticator.rivId 0..1 SEEHDSRivIITypeHealthcondBasic1 "rivId"
* insert RivNs(observationGroup.legalAuthenticator.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.legalAuthenticator.rivId, id)
* observationGroup.legalAuthenticator.time 1..1 SEEHDSRivPartialTimeStampTypeHealthcondBasic1 "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss"
* insert RivNs(observationGroup.legalAuthenticator.time, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.legalAuthenticator.name 0..1 SEEHDSRivString "name"
* insert RivNs(observationGroup.legalAuthenticator.name, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant 0..* BackboneElement "Övriga deltagare relaterat till observationerna inom gruppen" """Övriga deltagare relaterat till observationerna inom gruppen."""
* insert RivNs(observationGroup.additionalParticipant, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant obeys getobservations12-id-choice
* observationGroup.additionalParticipant obeys getobservations12-participant-choice
* observationGroup.additionalParticipant.rivId 0..1 SEEHDSRivIITypeHealthcondBasic1 "rivId"
* insert RivNs(observationGroup.additionalParticipant.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.additionalParticipant.rivId, id)
* observationGroup.additionalParticipant.type 1..1 SEEHDSRivCVTypeHealthcondBasic1 "type"
* insert RivNs(observationGroup.additionalParticipant.type, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.role 1..1 SEEHDSRivCVTypeHealthcondBasic1 "role"
* insert RivNs(observationGroup.additionalParticipant.role, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.time 0..1 SEEHDSRivTimePeriodTypeHealthcondBasic1 "Används för att specificera ett datumintervall med hjälp av start- och slutdatum" """
    Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet YYYYMMDDhhmmss end: Slutdatum på formatet YYYYMMDDhhmmss
  """
* insert RivNs(observationGroup.additionalParticipant.time, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.person 0..1 BackboneElement "person"
* insert RivNs(observationGroup.additionalParticipant.person, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.person.rivId 0..1 SEEHDSRivIITypeHealthcondBasic1 "rivId"
* insert RivNs(observationGroup.additionalParticipant.person.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.additionalParticipant.person.rivId, id)
* observationGroup.additionalParticipant.person.name 0..1 SEEHDSRivString "name"
* insert RivNs(observationGroup.additionalParticipant.person.name, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.organisation 0..1 BackboneElement "organisation"
* insert RivNs(observationGroup.additionalParticipant.organisation, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.organisation.rivId 0..1 SEEHDSRivIITypeHealthcondBasic1 "rivId"
* insert RivNs(observationGroup.additionalParticipant.organisation.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.additionalParticipant.organisation.rivId, id)
* observationGroup.additionalParticipant.organisation.name 0..1 SEEHDSRivString "name"
* insert RivNs(observationGroup.additionalParticipant.organisation.name, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.device 0..1 BackboneElement "device"
* insert RivNs(observationGroup.additionalParticipant.device, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.device.rivId 0..1 SEEHDSRivIITypeHealthcondBasic1 "rivId"
* insert RivNs(observationGroup.additionalParticipant.device.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.additionalParticipant.device.rivId, id)
* observationGroup.additionalParticipant.device.type 0..1 SEEHDSRivCVTypeHealthcondBasic1 "type"
* insert RivNs(observationGroup.additionalParticipant.device.type, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.device.model 0..1 BackboneElement "model"
* insert RivNs(observationGroup.additionalParticipant.device.model, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.device.model.code 0..1 SEEHDSRivCVTypeHealthcondBasic1 "code"
* insert RivNs(observationGroup.additionalParticipant.device.model.code, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.device.model.value 0..1 SEEHDSRivString "value"
* insert RivNs(observationGroup.additionalParticipant.device.model.value, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.location 0..1 BackboneElement "location"
* insert RivNs(observationGroup.additionalParticipant.location, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.location.rivId 0..1 SEEHDSRivIITypeHealthcondBasic1 "rivId"
* insert RivNs(observationGroup.additionalParticipant.location.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.additionalParticipant.location.rivId, id)
* observationGroup.additionalParticipant.location.name 1..1 SEEHDSRivString "name"
* insert RivNs(observationGroup.additionalParticipant.location.name, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.location.address 0..* BackboneElement "address"
* insert RivNs(observationGroup.additionalParticipant.location.address, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.location.address.use 0..1 SEEHDSRivString "use" """Tillåtna värden enligt XSD: PHYS, H, HV, WP, TMP."""
* insert RivNs(observationGroup.additionalParticipant.location.address.use, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.location.address.part 1..* BackboneElement "part"
* insert RivNs(observationGroup.additionalParticipant.location.address.part, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.location.address.part.value 1..1 SEEHDSRivString "value"
* insert RivNs(observationGroup.additionalParticipant.location.address.part.value, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.location.address.part.type 0..1 SEEHDSRivString "type" """Tillåtna värden enligt XSD: SAL, CAR, CEN, CNT, CPA, CTY, POB, ZIP, PRE, STA."""
* insert RivNs(observationGroup.additionalParticipant.location.address.part.type, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.location.electronicAddress 0..* BackboneElement "electronicAddress"
* insert RivNs(observationGroup.additionalParticipant.location.electronicAddress, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.location.electronicAddress.use 1..1 SEEHDSRivString "use" """Tillåtna värden enligt XSD: voice, fax, data, sms."""
* insert RivNs(observationGroup.additionalParticipant.location.electronicAddress.use, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.additionalParticipant.location.electronicAddress.value 1..1 SEEHDSRivString "value"
* insert RivNs(observationGroup.additionalParticipant.location.electronicAddress.value, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.sourceSystem 1..1 BackboneElement "Källsystem som observationsgruppen lagras i" """Källsystem som observationsgruppen lagras i."""
* insert RivNs(observationGroup.sourceSystem, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.sourceSystem.rivId 1..1 SEEHDSRivIITypeHealthcondBasic1 "rivId"
* insert RivNs(observationGroup.sourceSystem.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.sourceSystem.rivId, id)
* observationGroup.observation 1..* BackboneElement "De observationer som ligger inom denna grupp av observationer" """De observationer som ligger inom denna grupp av observationer."""
* insert RivNs(observationGroup.observation, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.rivId 1..1 SEEHDSRivIITypeHealthcondBasic1 "rivId"
* insert RivNs(observationGroup.observation.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.observation.rivId, id)
* observationGroup.observation.type 1..1 SEEHDSRivCVTypeHealthcondBasic1 "type"
* insert RivNs(observationGroup.observation.type, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.status 0..1 SEEHDSRivCVTypeHealthcondBasic1 "status"
* insert RivNs(observationGroup.observation.status, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.time 1..1 BackboneElement "Används för att specificera ett datumintervall med hjälp av start- och slutdatum" """
    Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet YYYYMMDDhhmmss end: Slutdatum på formatet YYYYMMDDhhmmss
  """
* insert RivNs(observationGroup.observation.time, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.time.start 0..1 SEEHDSRivPartialTimeStampTypeHealthcondBasic1 "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss"
* insert RivNs(observationGroup.observation.time.start, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.time.end 0..1 SEEHDSRivPartialTimeStampTypeHealthcondBasic1 "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss"
* insert RivNs(observationGroup.observation.time.end, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.method 0..1 SEEHDSRivCVTypeHealthcondBasic1 "method"
* insert RivNs(observationGroup.observation.method, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.value 1..1 BackboneElement "value"
* insert RivNs(observationGroup.observation.value, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.value.pq 0..1 SEEHDSRivPQTypeHealthcondBasic1 "pq"
* insert RivNs(observationGroup.observation.value.pq, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.value.ts 0..1 SEEHDSRivPartialTimeStampTypeHealthcondBasic1 "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss"
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
* observationGroup.observation.value.cv 0..1 SEEHDSRivCVTypeHealthcondBasic1 "cv"
* insert RivNs(observationGroup.observation.value.cv, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.value.ivlPq 0..1 SEEHDSRivPQIntervalTypeHealthcondBasic12 "ivlPq"
* insert RivNs(observationGroup.observation.value.ivlPq, urn:riv:clinicalprocess:healthcond:basic:1.2)
* insert RivXmlName(observationGroup.observation.value.ivlPq, ivl_pq)
* observationGroup.observation.targetSite 0..1 SEEHDSRivCVTypeHealthcondBasic1 "targetSite"
* insert RivNs(observationGroup.observation.targetSite, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.valueNegation 1..1 SEEHDSRivBoolean "valueNegation"
* insert RivNs(observationGroup.observation.valueNegation, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.description 0..1 SEEHDSRivString "description"
* insert RivNs(observationGroup.observation.description, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.approvedForPatient 1..1 SEEHDSRivBoolean "approvedForPatient"
* insert RivNs(observationGroup.observation.approvedForPatient, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.registrationTime 0..1 SEEHDSRivTimeStamp "registrationTime" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(observationGroup.observation.registrationTime, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.relation 0..* BackboneElement "relation"
* insert RivNs(observationGroup.observation.relation, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.relation.code 1..1 SEEHDSRivCVTypeHealthcondBasic1 "code"
* insert RivNs(observationGroup.observation.relation.code, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.relation.referredInformation 1..1 BackboneElement "referredInformation"
* insert RivNs(observationGroup.observation.relation.referredInformation, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.relation.referredInformation.rivId 1..1 SEEHDSRivIITypeHealthcondBasic1 "rivId"
* insert RivNs(observationGroup.observation.relation.referredInformation.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.observation.relation.referredInformation.rivId, id)
* observationGroup.observation.relation.referredInformation.time 1..1 SEEHDSRivPartialTimeStampTypeHealthcondBasic1 "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss"
* insert RivNs(observationGroup.observation.relation.referredInformation.time, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.relation.referredInformation.type 1..1 SEEHDSRivString "type"
* insert RivNs(observationGroup.observation.relation.referredInformation.type, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.relation.referredInformation.informationOwner 1..1 BackboneElement "informationOwner"
* insert RivNs(observationGroup.observation.relation.referredInformation.informationOwner, urn:riv:clinicalprocess:healthcond:basic:1)
* observationGroup.observation.relation.referredInformation.informationOwner.rivId 1..1 SEEHDSRivIITypeHealthcondBasic1 "rivId"
* insert RivNs(observationGroup.observation.relation.referredInformation.informationOwner.rivId, urn:riv:clinicalprocess:healthcond:basic:1)
* insert RivXmlName(observationGroup.observation.relation.referredInformation.informationOwner.rivId, id)
