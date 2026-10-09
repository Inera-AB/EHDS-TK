// RIV-TA GetObservations 2.0 – svarsmeddelandet GetObservationsResponse.
// Struktur, namn, ordning, namnrymder och XSD-kardinaliteter är genererade från
// riv.clinicalprocess.healthcond.basic/schemas/interactions/GetObservationsInteraction/GetObservationsResponder_2.0.xsd (bitbucket.org/rivta-domains).
// Kardinaliteter är verifierade mot TKB_clinicalprocess_healthcond_basic.docx; texter är sammanslagna från tidigare modell och TKB.

Logical: SEEHDSLMObservations
Id: SEEHDSLMObservations
Title: "GetObservations"
Description: """
  Logisk modell för tjänstekontraktet GetObservations
  (RIV-TA urn:riv:clinicalprocess:healthcond:basic:GetObservationsInteraction:2).
  Representerar responsens informationsstruktur — en samling observationer som
  matchar sökkriterier i begäran, inklusive header-information.
  Meddelandemodellen från avsnitt 5.1 V-MIM — Observationer i TKB motsvarar
  en observation i svarsmeddelandet.
"""
* insert RivRoot(GetObservationsResponse, urn:riv:clinicalprocess:healthcond:basic:GetObservationsResponder:2)
* observations 0..* BackboneElement "De observationer som matchar sökkriterierna, inklusive header." """De observationer som matchar sökkriterier i begäran, inklusive header-information."""
* observations.header 1..1 BackboneElement "Header enligt RIV-TA standard." """Se separat dokument med fältregler för header [R10]."""
* observations.header.accessControlHeader 1..1 BackboneElement "accessControlHeader"
* insert RivNs(observations.header.accessControlHeader, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.accessControlHeader.accountableCareGiver 1..1 SEEHDSRivIITypeHealthcondBasic2 "accountableCareGiver"
* insert RivNs(observations.header.accessControlHeader.accountableCareGiver, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.accessControlHeader.accountableCareUnit 1..1 SEEHDSRivIITypeHealthcondBasic2 "accountableCareUnit"
* insert RivNs(observations.header.accessControlHeader.accountableCareUnit, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.accessControlHeader.patient 1..1 BackboneElement "patient"
* insert RivNs(observations.header.accessControlHeader.patient, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.accessControlHeader.patient.rivId 1..2 SEEHDSRivIITypeHealthcondBasic2 "id"
* insert RivNs(observations.header.accessControlHeader.patient.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.header.accessControlHeader.patient.rivId, id)
* observations.header.accessControlHeader.careProcessId 0..1 SEEHDSRivString "careProcessId"
* insert RivNs(observations.header.accessControlHeader.careProcessId, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.accessControlHeader.lockTime 0..1 SEEHDSRivTimeStamp "lockTime" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(observations.header.accessControlHeader.lockTime, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.accessControlHeader.blockComparisonTime 0..1 SEEHDSRivTimeStamp "blockComparisonTime" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(observations.header.accessControlHeader.blockComparisonTime, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.accessControlHeader.approvedForPatient 1..1 SEEHDSRivBoolean "approvedForPatient"
* insert RivNs(observations.header.accessControlHeader.approvedForPatient, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.source 1..1 BackboneElement "source"
* insert RivNs(observations.header.source, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.source.systemId 1..1 SEEHDSRivIITypeHealthcondBasic2 "systemId"
* insert RivNs(observations.header.source.systemId, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.record 0..1 BackboneElement "record"
* insert RivNs(observations.header.record, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.record.rivId 1..1 SEEHDSRivIITypeHealthcondBasic2 "id"
* insert RivNs(observations.header.record.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.header.record.rivId, id)
* observations.header.record.timestamp 1..1 SEEHDSRivTimeStamp "timestamp" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(observations.header.record.timestamp, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.record.title 0..1 SEEHDSRivString "title"
* insert RivNs(observations.header.record.title, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.record.careContactId 0..1 SEEHDSRivIITypeHealthcondBasic2 "careContactId"
* insert RivNs(observations.header.record.careContactId, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.origin 0..1 BackboneElement "origin"
* insert RivNs(observations.header.origin, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.origin.timestamp 1..1 SEEHDSRivTimeStamp "timestamp" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(observations.header.origin.timestamp, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.origin.by 1..1 BackboneElement "by"
* insert RivNs(observations.header.origin.by, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.origin.by.type 1..1 SEEHDSRivString "type" """Tillåtna värden enligt XSD: HCPROFESSIONAL, PATIENT, PROXY, DEVICE."""
* insert RivNs(observations.header.origin.by.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.origin.by.rivId 0..1 SEEHDSRivIITypeHealthcondBasic2 "id"
* insert RivNs(observations.header.origin.by.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.header.origin.by.rivId, id)
* observations.header.origin.by.name 0..1 SEEHDSRivString "name"
* insert RivNs(observations.header.origin.by.name, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.origin.by.orgUnit 0..1 BackboneElement "orgUnit"
* insert RivNs(observations.header.origin.by.orgUnit, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.origin.by.orgUnit.rivId 0..1 SEEHDSRivIITypeHealthcondBasic2 "id"
* insert RivNs(observations.header.origin.by.orgUnit.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.header.origin.by.orgUnit.rivId, id)
* observations.header.origin.by.orgUnit.name 0..1 SEEHDSRivString "name"
* insert RivNs(observations.header.origin.by.orgUnit.name, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.origin.byRole 0..1 SEEHDSRivCVTypeHealthcondBasic2 "byRole"
* insert RivNs(observations.header.origin.byRole, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.originalAuthor 0..1 BackboneElement "originalAuthor"
* insert RivNs(observations.header.originalAuthor, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.originalAuthor.timestamp 1..1 SEEHDSRivTimeStamp "timestamp" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(observations.header.originalAuthor.timestamp, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.originalAuthor.by 1..1 BackboneElement "by"
* insert RivNs(observations.header.originalAuthor.by, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.originalAuthor.by.type 1..1 SEEHDSRivString "type" """Tillåtna värden enligt XSD: HCPROFESSIONAL, PATIENT, PROXY, DEVICE."""
* insert RivNs(observations.header.originalAuthor.by.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.originalAuthor.by.rivId 0..1 SEEHDSRivIITypeHealthcondBasic2 "id"
* insert RivNs(observations.header.originalAuthor.by.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.header.originalAuthor.by.rivId, id)
* observations.header.originalAuthor.by.name 0..1 SEEHDSRivString "name"
* insert RivNs(observations.header.originalAuthor.by.name, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.originalAuthor.by.orgUnit 0..1 BackboneElement "orgUnit"
* insert RivNs(observations.header.originalAuthor.by.orgUnit, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.originalAuthor.by.orgUnit.rivId 0..1 SEEHDSRivIITypeHealthcondBasic2 "id"
* insert RivNs(observations.header.originalAuthor.by.orgUnit.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.header.originalAuthor.by.orgUnit.rivId, id)
* observations.header.originalAuthor.by.orgUnit.name 0..1 SEEHDSRivString "name"
* insert RivNs(observations.header.originalAuthor.by.orgUnit.name, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.originalAuthor.byRole 0..1 SEEHDSRivCVTypeHealthcondBasic2 "byRole"
* insert RivNs(observations.header.originalAuthor.byRole, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.modified 0..1 BackboneElement "modified"
* insert RivNs(observations.header.modified, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.modified.timestamp 1..1 SEEHDSRivTimeStamp "timestamp" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(observations.header.modified.timestamp, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.modified.by 1..1 BackboneElement "by"
* insert RivNs(observations.header.modified.by, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.modified.by.type 1..1 SEEHDSRivString "type" """Tillåtna värden enligt XSD: HCPROFESSIONAL, PATIENT, PROXY, DEVICE."""
* insert RivNs(observations.header.modified.by.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.modified.by.rivId 0..1 SEEHDSRivIITypeHealthcondBasic2 "id"
* insert RivNs(observations.header.modified.by.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.header.modified.by.rivId, id)
* observations.header.modified.by.name 0..1 SEEHDSRivString "name"
* insert RivNs(observations.header.modified.by.name, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.modified.by.orgUnit 0..1 BackboneElement "orgUnit"
* insert RivNs(observations.header.modified.by.orgUnit, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.modified.by.orgUnit.rivId 0..1 SEEHDSRivIITypeHealthcondBasic2 "id"
* insert RivNs(observations.header.modified.by.orgUnit.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.header.modified.by.orgUnit.rivId, id)
* observations.header.modified.by.orgUnit.name 0..1 SEEHDSRivString "name"
* insert RivNs(observations.header.modified.by.orgUnit.name, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.modified.byRole 0..1 SEEHDSRivCVTypeHealthcondBasic2 "byRole"
* insert RivNs(observations.header.modified.byRole, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.signature 0..1 BackboneElement "signature"
* insert RivNs(observations.header.signature, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.signature.timestamp 1..1 SEEHDSRivTimeStamp "timestamp" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(observations.header.signature.timestamp, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.signature.by 1..1 BackboneElement "by"
* insert RivNs(observations.header.signature.by, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.signature.by.type 1..1 SEEHDSRivString "type" """Tillåtna värden enligt XSD: HCPROFESSIONAL, PATIENT, PROXY, DEVICE."""
* insert RivNs(observations.header.signature.by.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.signature.by.rivId 0..1 SEEHDSRivIITypeHealthcondBasic2 "id"
* insert RivNs(observations.header.signature.by.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.header.signature.by.rivId, id)
* observations.header.signature.by.name 0..1 SEEHDSRivString "name"
* insert RivNs(observations.header.signature.by.name, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.signature.by.orgUnit 0..1 BackboneElement "orgUnit"
* insert RivNs(observations.header.signature.by.orgUnit, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.signature.by.orgUnit.rivId 0..1 SEEHDSRivIITypeHealthcondBasic2 "id"
* insert RivNs(observations.header.signature.by.orgUnit.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.header.signature.by.orgUnit.rivId, id)
* observations.header.signature.by.orgUnit.name 0..1 SEEHDSRivString "name"
* insert RivNs(observations.header.signature.by.orgUnit.name, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.signature.byRole 0..1 SEEHDSRivCVTypeHealthcondBasic2 "byRole"
* insert RivNs(observations.header.signature.byRole, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.cancellation 0..1 BackboneElement "cancellation"
* insert RivNs(observations.header.cancellation, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.cancellation.timestamp 1..1 SEEHDSRivTimeStamp "timestamp" """Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss."""
* insert RivNs(observations.header.cancellation.timestamp, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.cancellation.by 1..1 BackboneElement "by"
* insert RivNs(observations.header.cancellation.by, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.cancellation.by.type 1..1 SEEHDSRivString "type" """Tillåtna värden enligt XSD: HCPROFESSIONAL, PATIENT, PROXY, DEVICE."""
* insert RivNs(observations.header.cancellation.by.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.cancellation.by.rivId 0..1 SEEHDSRivIITypeHealthcondBasic2 "id"
* insert RivNs(observations.header.cancellation.by.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.header.cancellation.by.rivId, id)
* observations.header.cancellation.by.name 0..1 SEEHDSRivString "name"
* insert RivNs(observations.header.cancellation.by.name, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.cancellation.by.orgUnit 0..1 BackboneElement "orgUnit"
* insert RivNs(observations.header.cancellation.by.orgUnit, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.cancellation.by.orgUnit.rivId 0..1 SEEHDSRivIITypeHealthcondBasic2 "id"
* insert RivNs(observations.header.cancellation.by.orgUnit.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.header.cancellation.by.orgUnit.rivId, id)
* observations.header.cancellation.by.orgUnit.name 0..1 SEEHDSRivString "name"
* insert RivNs(observations.header.cancellation.by.orgUnit.name, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.cancellation.byRole 0..1 SEEHDSRivCVTypeHealthcondBasic2 "byRole"
* insert RivNs(observations.header.cancellation.byRole, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.header.cancellation.reason 0..1 SEEHDSRivCVTypeHealthcondBasic2 "reason"
* insert RivNs(observations.header.cancellation.reason, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody 1..1 BackboneElement "Information om en observation (ObservationType)." """Motsvarar klasserna Observation och Uppgift i patientjournal i NI 2017."""
* observations.observationBody.rivId 1..1 SEEHDSRivIITypeHealthcondBasic2 "Identitet för observationen" """Identitet för observationen. Identiteten ska garanterat vara unik inom vårdgivaren."""
* insert RivNs(observations.observationBody.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.observationBody.rivId, id)
* observations.observationBody.registrationTime 1..1 SEEHDSRivTimeStamp "Dokumentationstidpunkt — när uppgiften registrerades i journalen." """
    Kan skilja sig från signeringstidpunkt (som återfinns i header).
    Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.
  """
* insert RivNs(observations.observationBody.registrationTime, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.type 0..1 SEEHDSRivCVTypeHealthcondBasic2 "NI 2017 (Observation.typ)" """
    Kod för den typ av observation som avses i de fall detta inte framgår av attributet värde. Ett exempel på typ är "längd mätt utan skor" där attributet värde håller information om resultatet av mätningen, exempelvis 174 cm. Ett annat exempel är typen ”huvuddiagnos” där attributet värde håller information om den specifika diagnosen, exempelvis ”hypertoni” eller diagnoskoden.
  """
* insert RivNs(observations.observationBody.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.value 1..1 BackboneElement "NI 2017 (Observation.värde)" """
    Angivelse av värde som alltid representerar det faktiska observerade hälsotillståndet. Exempelvis så skulle observationens typ [type] kunna motsvara "huvuddiagnos”, vilket innebär att attributet värde håller den huvudsakliga diagnosen. Ett annat exempel är "längd mätt utan skor" och då innehåller attributet värde resultatet av mätningen, exempelvis 158 cm. Om observationen avser ett måltillstånd motsvarar attributet värde det resultat man önskar uppnå för att målet ska uppfyllas. Notera att även observationer vars representation dokumenteras som fritext använder attributet värde. Se ValueANYType i avsnitt 6.1.2.2.16.
  """
* insert RivNs(observations.observationBody.value, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.value.cv 0..1 SEEHDSRivCVTypeHealthcondBasic2 "Kodat värde" """
    Kodat värde. I fallet med observationer kan det exempelvis vara en diagnoskod enligt ICD-10 eller ett kliniskt fynd enligt Snomed CT.
  """
* insert RivNs(observations.observationBody.value.cv, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.value.pq 0..1 SEEHDSRivPQTypeHealthcondBasic2 "Värde som är resultatet av att någontings fysiskt uppmätts eller räknats, exempelvis 187 cm, 8 tabletter …" """
    Värde som är resultatet av att någontings fysiskt uppmätts eller räknats, exempelvis 187 cm, 8 tabletter eller 37,8 °C.
  """
* insert RivNs(observations.observationBody.value.pq, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.value.ivlPq 0..1 SEEHDSRivPQIntervalTypeHealthcondBasic2 "Intervall av värden som är resultatet av att någontings fysiskt uppmätts eller räknats, exempelvis 187-190 …" """
    Intervall av värden som är resultatet av att någontings fysiskt uppmätts eller räknats, exempelvis 187-190 cm, 8-10 tabletter eller 37,1-37,8 °C.
  """
* insert RivNs(observations.observationBody.value.ivlPq, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.observationBody.value.ivlPq, ivl_pq)
* observations.observationBody.value.ts 0..1 SEEHDSRivPartialTimeStampTypeHealthcondBasic2 "Tidpunkt där precisionen kan varieras utifrån behov" """
    Tidpunkt där precisionen kan varieras utifrån behov. Notera att det föredragna sättet att ange tiden för en observation vanligtvis är att i attributet värde (observations/observationBody/value) ange vad som observerats och i attributet tid (observations/observationBody/time) ange när.
  """
* insert RivNs(observations.observationBody.value.ts, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.value.ivlTs 0..1 BackboneElement "Tidsintervall där precisionen kan varieras utifrån behov" """
    Tidsintervall där precisionen kan varieras utifrån behov. Tidpunkt där precisionen kan varieras utifrån behov. Notera att det föredragna sättet att ange tiden för en observation vanligtvis är att i attributet värde (observations/observationBody/value) ange vad som observerats och i attributet tid (observations/observationBody/time) ange när.
  """
* insert RivNs(observations.observationBody.value.ivlTs, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.observationBody.value.ivlTs, ivl_ts)
* observations.observationBody.value.ivlTs.start 0..1 SEEHDSRivPartialTimeStampTypeHealthcondBasic2 "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss"
* insert RivNs(observations.observationBody.value.ivlTs.start, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.value.ivlTs.end 0..1 SEEHDSRivPartialTimeStampTypeHealthcondBasic2 "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss"
* insert RivNs(observations.observationBody.value.ivlTs.end, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.value.st 0..1 SEEHDSRivString "Textuell beskrivning" """Textuell beskrivning."""
* insert RivNs(observations.observationBody.value.st, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.value.int 0..1 SEEHDSRivInteger "Heltal" """
    Heltal. Ska användas då något klassificerats numeriskt på en skattningsskala, exempelvis 1 poäng på Apgarskalan för Grimaser, reflex, retbarhet. Denna typ ska inte användas för numeriska värden som är ett resultat av att någonting fysiskt uppmätts eller räknats (exempelvis antal tabletter). Fysiskt uppmätta eller räknade värden ska istället dokumenteras med typen pq.
  """
* insert RivNs(observations.observationBody.value.int, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.scale 0..1 SEEHDSRivCVTypeHealthcondBasic2 "NI 2017 (Observation.skala) — den mätskala som värdet är uppmätt på." """
    Två huvudtyper: nominalskala (kategorisk) och ordinalskala (rangordnad).
    Exempel: AUDIT-skalan (0-40 poäng) eller AB0-blodgruppsystemet.
    CVType-regler (TKB): displayName är 1..1 (obligatorisk om fältet anges).
  """
* insert RivNs(observations.observationBody.scale, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.status 1..1 SEEHDSRivCVTypeHealthcondBasic2 "NI 2017 (Observation.status)Kod för observationens status, exempelvis för att dokumentera om det tillstånd …" """
    NI 2017 (Observation.status)Kod för observationens status, exempelvis för att dokumentera om det tillstånd som beskrivs har funnits eller är ett potentiellt tillstånd. En instans av klassen observation kan inte byta status. Om man exempelvis vill dokumentera ett måltillstånd som senare uppfylls så dokumenteras detta som två instanser av klassen observation, en med status måltillstånd och en med status observerat. Koder för status för observation tillhandahålls av Socialstyrelsen som ett urval ur Snomed CT samt som bilaga till NI 2017 [R5]. Snomed CT urvals-id är 56431000052106. Vilka koder som ingår i urvalet söks fram i IHTSDO SNOMED CT Browser [R7]. Om koder utanför urvalet behöver användas ska detta göras i samråd med Socialstyrelsen.
  """
* insert RivNs(observations.observationBody.status, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.targetSite 0..* SEEHDSRivCVTypeHealthcondBasic2 "NI 2017 (Observation.lokalisation) — lokalisation för observationen." """
    Används för att beskriva vad observationen avser gällande anatomi, funktion eller system.
    Kan beskriva lateralitet, organs position, orientering i relation till kroppen etc.
    Används endast om value inte innefattar tillräcklig information om lokalisation.
  """
* insert RivNs(observations.observationBody.targetSite, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.description 0..1 SEEHDSRivString "NI 2017 (Observation.beskrivning) — textuell beskrivning som komplement till value." """
    Används som komplement till value i de fall ytterligare textuell beskrivning krävs.
    OBS: Om observationen ENDAST består av fritext ska denna anges i value/st.
  """
* insert RivNs(observations.observationBody.description, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.time 0..1 BackboneElement "NI 2017 (Observation.tid) — tidpunkt eller tidsintervall för observationen (TimeType)." """
    Angivelse av den tid då det som observerats faktiskt förekom eller förväntas förekomma.
    Skiljer sig från registrationTime (dokumentationstidpunkt).
  """
* insert RivNs(observations.observationBody.time, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.time.ts 0..1 SEEHDSRivPartialTimeStampTypeHealthcondBasic2 "Tidpunkt med variabel precision." """
    Format: YYYY | YYYYMM | YYYYMMDD | YYYYMMDDhh | YYYYMMDDhhmm | YYYYMMDDhhmmss.
    Se OBS-001 (beslutad mappning i FHIR).
  """
* insert RivNs(observations.observationBody.time.ts, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.time.ivlTs 0..1 BackboneElement "Tidsintervall med variabel precision (RIV-TA: ivl_ts)." """Villkor: Minst ett av start och end måste anges per TKB."""
* insert RivNs(observations.observationBody.time.ivlTs, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.observationBody.time.ivlTs, ivl_ts)
* observations.observationBody.time.ivlTs.start 0..1 SEEHDSRivPartialTimeStampTypeHealthcondBasic2 "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss"
* insert RivNs(observations.observationBody.time.ivlTs.start, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.time.ivlTs.end 0..1 SEEHDSRivPartialTimeStampTypeHealthcondBasic2 "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss"
* insert RivNs(observations.observationBody.time.ivlTs.end, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.valueNegation 1..1 SEEHDSRivBoolean "NI 2017 (Observation.negation) — negerar betydelsen av value." """
    Normalvärde: false (positiv utsaga).
    true = man har letat efter ett visst tillstånd och konstaterat att det inte föreligger.
  """
* insert RivNs(observations.observationBody.valueNegation, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient 1..1 BackboneElement "Den patient som observationen avser (PatientInformationType)." """Motsvarar klassen Patient i NI 2017. Se PatientInformationType."""
* insert RivNs(observations.observationBody.patient, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.rivId 0..1 SEEHDSRivIITypeHealthcondBasic2 "NI 2017 (Patient.id)" """
    Angivelse av identitetsbeteckning för patientrollen. Denna identitet används då patienten inte kan eller bör identifieras med ett person-id (personnummer eller samordningsnummer). Identitetsbeteckningen på patient är vanligtvis ett reservnummer. En person kan ha flera instanser av klassen patient och dessa kan ha olika id. Observera att det är obligatoriskt att ange antingen person-id på person eller id på patient. Nationell reservidentitet är den enda typ av reservnummer som tillåts i denna tjänst. Denna ska anges med 12 tecken utan avskiljare. Se [R9] för mer information om nationell reservidentitet.
  """
* insert RivNs(observations.observationBody.patient.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.observationBody.patient.rivId, id)
* observations.observationBody.patient.person 1..1 BackboneElement "Uppgifter om den person som har rollen som patient (PersonType)." """
    Se övrig regel 3 (avsnitt 6.1.3.3). Inkluderar id, givenName, surname, gender,
    dateOfBirth, confidentialityIndicator m.m.
  """
* insert RivNs(observations.observationBody.patient.person, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.person.rivId 0..1 SEEHDSRivIITypeHealthcondBasic2 "Id för personen i form av personnummer eller samordningsnummer" """
    Id för personen i form av personnummer eller samordningsnummer. Skall anges med 12 tecken utan avskiljare.
  """
* insert RivNs(observations.observationBody.patient.person.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.observationBody.patient.person.rivId, id)
* observations.observationBody.patient.person.givenName 0..* SEEHDSRivString "NI 2017 (Person.förnamn)." """
    NI 2017 (Person.förnamn) Angivelse av förnamn, som är en persons givna namn och inkluderar tilltalsnamn.
  """
* insert RivNs(observations.observationBody.patient.person.givenName, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.person.middleSurname 0..1 SEEHDSRivString "NI 2017 (Person.mellannamn)." """
    NI 2017 (Person.mellannamn) Angivelse av mellannamn, som är ett namn som kan bäras för att visa gemenskap med en förälder eller en make som bär detta namn som efternamn. Man kan också bära ett eget tidigare efternamn som mellannamn om man bytt till makes eller registrerade partners efternamn.
  """
* insert RivNs(observations.observationBody.patient.person.middleSurname, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.person.surname 0..1 SEEHDSRivString "NI 2017 (Person.efternamn)." """
    NI 2017 (Person.efternamn) Angivelse av efternamn, som är en persons familjenamn eller släktnamn.
  """
* insert RivNs(observations.observationBody.patient.person.surname, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.person.givenNameMarker 0..1 SEEHDSRivInteger "NI 2017 (Person.tilltalsnamnsmarkering). Giltiga värden: 10-99." """
    NI 2017 (Person.tilltalsnamnsmarkering) Angivelse av tilltalsnamnsmarkering, som används för att markera vilket av de angivna förnamnen som är personens tilltalsnamn. Giltiga värden är 10-99 där den första siffran anger vilket av de angivna förnamnen som är tilltalsnamnet (1 motsvarar första namnet osv.) och den andra siffran anger det eventuella andra tilltalsnamnet om dubbelnamn är aktuellt. Om inte är den andra siffran 0.
  """
* insert RivNs(observations.observationBody.patient.person.givenNameMarker, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.person.gender 0..1 SEEHDSRivCVTypeHealthcondBasic2 "NI 2017 (Person.kön). KV Kön OID: 1.2.752.129.2.2.1.1." """
    Koder: 0=okänt, 1=man, 2=kvinna, 9=ej tillämpligt.
    CVType-begränsning: originalText är förbjudet (0..0) för könsfältet per TKB.
  """
* insert RivNs(observations.observationBody.patient.person.gender, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.person.dateOfBirth 0..1 SEEHDSRivDate "NI 2017 (Person.födelsedatum). Format ÅÅÅÅMMDD." """
    NI 2017 (Person.födelsedatum) Angivelse av vilket datum personen är född. Ett datum på formatet ÅÅÅÅMMDD. Observera att det är födelsedatumet och inte personnumret.
    Format enligt XSD (DateType): ÅÅÅÅMMDD.
  """
* insert RivNs(observations.observationBody.patient.person.dateOfBirth, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.person.confidentialityIndicator 1..1 SEEHDSRivBoolean "NI 2017 (Person.sekretessmarkering). Defaultvärde: false." """
    NI 2017 (Person.sekretessmarkering) Angivelse av sekretessmarkering enligt Skatteverket. Defaultvärde är ”false”. Defaultvärdet ska automatiskt användas om inget annat värde anges.
  """
* insert RivNs(observations.observationBody.patient.person.confidentialityIndicator, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.person.maritalStatus 0..1 SEEHDSRivCVTypeHealthcondBasic2 "NI 2017 (Person.civilstånd)." """NI 2017 (Person.civilstånd) Angivelse av personens civilstånd."""
* insert RivNs(observations.observationBody.patient.person.maritalStatus, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.person.address 0..* BackboneElement "NI 2017 (Person.adress). Se AddressType." """
    NI 2017 (Person.adress) Angivelse av adressinformation för fysisk plats för en person, exempelvis bostadsadress eller tillfällig adress. Se AddressType i avsnitt 6.1.2.2.14.
  """
* insert RivNs(observations.observationBody.patient.person.address, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.person.address.use 0..1 SEEHDSRivString "Om flera adresser anges skiljs de åt via sin användningskod" """
    Om flera adresser anges skiljs de åt via sin användningskod. Den primära/default adressen anges alltid utan användningskod. Möjliga värden: PHYS = Fysisk besöksadress H = Hemadress HV = Semesteradress WP = Adress till arbetsplats TMP = Tillfällig adress När det inte finns en adress med användningskod som matchar syftet med adressanvändningen, väljs den primära adressen.
    Tillåtna värden enligt XSD: PHYS, H, HV, WP, TMP.
  """
* insert RivNs(observations.observationBody.patient.person.address.use, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.person.address.part 1..* BackboneElement "Del av adress, exempelvis gatuadress eller postnummer" """Del av adress, exempelvis gatuadress eller postnummer."""
* insert RivNs(observations.observationBody.patient.person.address.part, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.person.address.part.value 1..1 SEEHDSRivString "value"
* insert RivNs(observations.observationBody.patient.person.address.part.value, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.person.address.part.type 0..1 SEEHDSRivString "type" """Tillåtna värden enligt XSD: SAL, CAR, CEN, CNT, CPA, CTY, ZIP, POB, PRE."""
* insert RivNs(observations.observationBody.patient.person.address.part.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.person.electronicAddress 0..* BackboneElement "NI 2017 (Person.elektroniskAdress). Se TelType." """
    NI 2017 (Person.elektroniskAdress) Angivelse av elektronisk adressinformation som en person har. Här avses även telefonnummer. Exempel är telefonnummer eller e-postadress. Se TelType i avsnitt 6.1.2.2.15.
  """
* insert RivNs(observations.observationBody.patient.person.electronicAddress, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.person.electronicAddress.value 1..1 SEEHDSRivAnyURI "Elektronisk adress, t.ex." """
    Elektronisk adress, t.ex. e-mail eller telefonnummer. Anges i form av en URI inklusive prefix som anger protokoll. Telefonnummer anges med prefixet ”tel:”, e-mailadresser med ”mailto:” och webbsidor med ”http:” eller ”https:”. Exempel: value=”tel:+46702353535” value=”mailto:lars@gmail.com” value=”http://www.1177.se”
  """
* insert RivNs(observations.observationBody.patient.person.electronicAddress.value, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.person.electronicAddress.capabilities 0..* SEEHDSRivString "Kan användas för telefonnummer för att ange om numret har möjlighet att ta emot röstsamtal, fax eller SMS" """
    Kan användas för telefonnummer för att ange om numret har möjlighet att ta emot röstsamtal, fax eller SMS. Möjliga värden: voice = Numret kan ta emot röstsamtal fax = Numret kan ta emot fax sms = Numret kan ta emot SMS
    Tillåtna värden enligt XSD: voice, fax, sms.
  """
* insert RivNs(observations.observationBody.patient.person.electronicAddress.capabilities, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.person.electronicAddress.use 0..* SEEHDSRivString "Om flera elektroniska adresser anges skiljs de åt via sin användningskod" """
    Om flera elektroniska adresser anges skiljs de åt via sin användningskod. Möjliga värden: H = Används i hemmet/privat HV = Används under semester WP = Används på arbetet/i tjänsten TMP = Används tillfälligt
    Tillåtna värden enligt XSD: H, HV, WP, TMP.
  """
* insert RivNs(observations.observationBody.patient.person.electronicAddress.use, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.address 0..* BackboneElement "NI 2017 (Patient.adress). Särskild kallelseadress etc. Se AddressType." """
    NI 2017 (Patient.adress) Angivelse av adressinformation för fysisk plats som en person har i sin roll som patient, exempelvis särskild kallelseadress. Se AddressType i avsnitt 6.1.2.2.14.
  """
* insert RivNs(observations.observationBody.patient.address, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.address.use 0..1 SEEHDSRivString "Om flera adresser anges skiljs de åt via sin användningskod" """
    Om flera adresser anges skiljs de åt via sin användningskod. Den primära/default adressen anges alltid utan användningskod. Möjliga värden: PHYS = Fysisk besöksadress H = Hemadress HV = Semesteradress WP = Adress till arbetsplats TMP = Tillfällig adress När det inte finns en adress med användningskod som matchar syftet med adressanvändningen, väljs den primära adressen.
    Tillåtna värden enligt XSD: PHYS, H, HV, WP, TMP.
  """
* insert RivNs(observations.observationBody.patient.address.use, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.address.part 1..* BackboneElement "Del av adress, exempelvis gatuadress eller postnummer" """Del av adress, exempelvis gatuadress eller postnummer."""
* insert RivNs(observations.observationBody.patient.address.part, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.address.part.value 1..1 SEEHDSRivString "value"
* insert RivNs(observations.observationBody.patient.address.part.value, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.address.part.type 0..1 SEEHDSRivString "type" """Tillåtna värden enligt XSD: SAL, CAR, CEN, CNT, CPA, CTY, ZIP, POB, PRE."""
* insert RivNs(observations.observationBody.patient.address.part.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.electronicAddress 0..* BackboneElement "NI 2017 (Patient.elektroniskAdress). Exempelvis telefon till telemedicinutrustning. Se TelType." """
    NI 2017 (Patient.elektroniskAdress) Angivelse av elektronisk adressinformation som en person har i sin roll som patient. Här avses även telefonnummer. Exempel är särskilt telefonnummer till telemedicinutrustning. Se TelType i avsnitt 6.1.2.2.15.
  """
* insert RivNs(observations.observationBody.patient.electronicAddress, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.electronicAddress.value 1..1 SEEHDSRivAnyURI "Elektronisk adress, t.ex." """
    Elektronisk adress, t.ex. e-mail eller telefonnummer. Anges i form av en URI inklusive prefix som anger protokoll. Telefonnummer anges med prefixet ”tel:”, e-mailadresser med ”mailto:” och webbsidor med ”http:” eller ”https:”. Exempel: value=”tel:+46702353535” value=”mailto:lars@gmail.com” value=”http://www.1177.se”
  """
* insert RivNs(observations.observationBody.patient.electronicAddress.value, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.electronicAddress.capabilities 0..* SEEHDSRivString "Kan användas för telefonnummer för att ange om numret har möjlighet att ta emot röstsamtal, fax eller SMS" """
    Kan användas för telefonnummer för att ange om numret har möjlighet att ta emot röstsamtal, fax eller SMS. Möjliga värden: voice = Numret kan ta emot röstsamtal fax = Numret kan ta emot fax sms = Numret kan ta emot SMS
    Tillåtna värden enligt XSD: voice, fax, sms.
  """
* insert RivNs(observations.observationBody.patient.electronicAddress.capabilities, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.patient.electronicAddress.use 0..* SEEHDSRivString "Om flera elektroniska adresser anges skiljs de åt via sin användningskod" """
    Om flera elektroniska adresser anges skiljs de åt via sin användningskod. Möjliga värden: H = Används i hemmet/privat HV = Används under semester WP = Används på arbetet/i tjänsten TMP = Används tillfälligt
    Tillåtna värden enligt XSD: H, HV, WP, TMP.
  """
* insert RivNs(observations.observationBody.patient.electronicAddress.use, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation 0..* BackboneElement "Deltagare i observationen (ParticipationType)." """
    Kan vara hälso- och sjukvårdspersonal, patienten, annan person, organisation,
    plats eller resurs.
    En och endast en av: healthcareProfessional, patient, otherPerson, locationRole,
    resource, organisation.
    Motsvarar klassen Deltagande i NI 2017.
  """
* insert RivNs(observations.observationBody.participation, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.type 1..1 SEEHDSRivCVTypeHealthcondBasic2 "Typ av deltagande" """
    Typ av deltagande. Detta beskriver på vilket sätt en deltagare deltagit i observationen. Kan exempelvis vara utförare, vittne eller ansvarig. Koder för deltagandetyp tillhandahålls av Socialstyrelsen som ett urval ur Snomed CT samt som bilaga till NI 2017 [R5]. Snomed CT urvals-id är 53351000052100. Vilka koder som ingår i urvalet söks fram i IHTSDO SNOMED CT Browser [R7]. Om koder utanför urvalet behöver användas ska detta göras i samråd med Socialstyrelsen.
  """
* insert RivNs(observations.observationBody.participation.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.time 0..1 BackboneElement "Tidpunkt för deltagandet om den skiljer sig från observationens tid. Se TimeType." """
    Om tiden för deltagandet inte överensstämmer med tiden för observationen (observations/observationBody/time) kan detta fält ange när den specifika deltagaren deltog i observationen. Se TimeType i avsnitt 6.1.2.2.18.
  """
* insert RivNs(observations.observationBody.participation.time, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.time.ts 0..1 SEEHDSRivPartialTimeStampTypeHealthcondBasic2 "Tidpunkt där precisionen kan varieras utifrån behov" """Tidpunkt där precisionen kan varieras utifrån behov."""
* insert RivNs(observations.observationBody.participation.time.ts, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.time.ivlTs 0..1 BackboneElement "Tidsintervall där precisionen kan varieras utifrån behov" """Tidsintervall där precisionen kan varieras utifrån behov."""
* insert RivNs(observations.observationBody.participation.time.ivlTs, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.observationBody.participation.time.ivlTs, ivl_ts)
* observations.observationBody.participation.time.ivlTs.start 0..1 SEEHDSRivPartialTimeStampTypeHealthcondBasic2 "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss"
* insert RivNs(observations.observationBody.participation.time.ivlTs.start, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.time.ivlTs.end 0..1 SEEHDSRivPartialTimeStampTypeHealthcondBasic2 "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss"
* insert RivNs(observations.observationBody.participation.time.ivlTs.end, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional 0..1 BackboneElement "Hälso- och sjukvårdspersonal (HealthcareProfessionalType)." """
    Fält: id (HSA-id), person (PersonType), jobCode (befattning, 0..1),
    license (legitimation, 0..*), specialistQualification (specialistkompetens, 0..*),
    organisation (1..1), address (0..*), electronicAddress (0..*).
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.rivId 0..1 SEEHDSRivIITypeHealthcondBasic2 "Hälso- och sjukvårdspersonalens HSA-id" """Hälso- och sjukvårdspersonalens HSA-id."""
* insert RivNs(observations.observationBody.participation.healthcareProfessional.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.observationBody.participation.healthcareProfessional.rivId, id)
* observations.observationBody.participation.healthcareProfessional.person 1..1 BackboneElement "Uppgifter om personen. Se PersonType." """
    Uppgifter om den person som har rollen som hälso- och sjukvårdspersonal. Se övrig regel 3, avsnitt 6.1.3.3. Se PersonType i avsnitt 6.1.2.2.8.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.person, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.person.rivId 0..1 SEEHDSRivIITypeHealthcondBasic2 "Id för personen i form av personnummer eller samordningsnummer" """
    Id för personen i form av personnummer eller samordningsnummer. Skall anges med 12 tecken utan avskiljare.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.person.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.observationBody.participation.healthcareProfessional.person.rivId, id)
* observations.observationBody.participation.healthcareProfessional.person.givenName 0..* SEEHDSRivString "NI 2017 (Person.förnamn)" """Angivelse av förnamn, som är en persons givna namn och inkluderar tilltalsnamn."""
* insert RivNs(observations.observationBody.participation.healthcareProfessional.person.givenName, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.person.middleSurname 0..1 SEEHDSRivString "NI 2017 (Person.mellannamn)" """
    Angivelse av mellannamn, som är ett namn som kan bäras för att visa gemenskap med en förälder eller en make som bär detta namn som efternamn. Man kan också bära ett eget tidigare efternamn som mellannamn om man bytt till makes eller registrerade partners efternamn.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.person.middleSurname, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.person.surname 0..1 SEEHDSRivString "NI 2017 (Person.efternamn)" """Angivelse av efternamn, som är en persons familjenamn eller släktnamn."""
* insert RivNs(observations.observationBody.participation.healthcareProfessional.person.surname, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.person.givenNameMarker 0..1 SEEHDSRivInteger "NI 2017 (Person.tilltalsnamnsmarkering)" """
    Angivelse av tilltalsnamnsmarkering, som används för att markera vilket av de angivna förnamnen som är personens tilltalsnamn. Giltiga värden är 10-99 där den första siffran anger vilket av de angivna förnamnen som är tilltalsnamnet (1 motsvarar första namnet osv.) och den andra siffran anger det eventuella andra tilltalsnamnet om dubbelnamn är aktuellt. Om inte är den andra siffran 0.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.person.givenNameMarker, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.person.gender 0..1 SEEHDSRivCVTypeHealthcondBasic2 "NI 2017 (Person.kön)" """Angivelse av vilket kön personen har enligt folkbokföringen."""
* insert RivNs(observations.observationBody.participation.healthcareProfessional.person.gender, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.person.dateOfBirth 0..1 SEEHDSRivDate "NI 2017 (Person.födelsedatum)" """
    Angivelse av vilket datum personen är född. Ett datum på formatet ÅÅÅÅMMDD. Observera att det är födelsedatumet och inte personnumret.
    Format enligt XSD (DateType): ÅÅÅÅMMDD.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.person.dateOfBirth, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.person.confidentialityIndicator 1..1 SEEHDSRivBoolean "NI 2017 (Person.sekretessmarkering)" """
    Angivelse av sekretessmarkering enligt Skatteverket. Defaultvärde är ”false”. Defaultvärdet ska automatiskt användas om inget annat värde anges.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.person.confidentialityIndicator, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.person.maritalStatus 0..1 SEEHDSRivCVTypeHealthcondBasic2 "NI 2017 (Person.civilstånd)" """Angivelse av personens civilstånd."""
* insert RivNs(observations.observationBody.participation.healthcareProfessional.person.maritalStatus, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.person.address 0..* BackboneElement "NI 2017 (Person.adress)" """
    Angivelse av adressinformation för fysisk plats för en person, exempelvis bostadsadress eller tillfällig adress. Se AddressType i avsnitt 6.1.2.2.14.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.person.address, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.person.address.use 0..1 SEEHDSRivString "Om flera adresser anges skiljs de åt via sin användningskod" """
    Om flera adresser anges skiljs de åt via sin användningskod. Den primära/default adressen anges alltid utan användningskod. Möjliga värden: PHYS = Fysisk besöksadress H = Hemadress HV = Semesteradress WP = Adress till arbetsplats TMP = Tillfällig adress När det inte finns en adress med användningskod som matchar syftet med adressanvändningen, väljs den primära adressen.
    Tillåtna värden enligt XSD: PHYS, H, HV, WP, TMP.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.person.address.use, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.person.address.part 1..* BackboneElement "Del av adress, exempelvis gatuadress eller postnummer" """Del av adress, exempelvis gatuadress eller postnummer."""
* insert RivNs(observations.observationBody.participation.healthcareProfessional.person.address.part, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.person.address.part.value 1..1 SEEHDSRivString "value"
* insert RivNs(observations.observationBody.participation.healthcareProfessional.person.address.part.value, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.person.address.part.type 0..1 SEEHDSRivString "type" """Tillåtna värden enligt XSD: SAL, CAR, CEN, CNT, CPA, CTY, ZIP, POB, PRE."""
* insert RivNs(observations.observationBody.participation.healthcareProfessional.person.address.part.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.person.electronicAddress 0..* BackboneElement "NI 2017 (Person.elektroniskAdress)" """
    Angivelse av elektronisk adressinformation som en person har. Här avses även telefonnummer. Exempel är telefonnummer eller e-postadress. Se TelType i avsnitt 6.1.2.2.15.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.person.electronicAddress, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.person.electronicAddress.value 1..1 SEEHDSRivAnyURI "Elektronisk adress, t.ex." """
    Elektronisk adress, t.ex. e-mail eller telefonnummer. Anges i form av en URI inklusive prefix som anger protokoll. Telefonnummer anges med prefixet ”tel:”, e-mailadresser med ”mailto:” och webbsidor med ”http:” eller ”https:”. Exempel: value=”tel:+46702353535” value=”mailto:lars@gmail.com” value=”http://www.1177.se”
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.person.electronicAddress.value, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.person.electronicAddress.capabilities 0..* SEEHDSRivString "Kan användas för telefonnummer för att ange om numret har möjlighet att ta emot röstsamtal, fax eller SMS" """
    Kan användas för telefonnummer för att ange om numret har möjlighet att ta emot röstsamtal, fax eller SMS. Möjliga värden: voice = Numret kan ta emot röstsamtal fax = Numret kan ta emot fax sms = Numret kan ta emot SMS
    Tillåtna värden enligt XSD: voice, fax, sms.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.person.electronicAddress.capabilities, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.person.electronicAddress.use 0..* SEEHDSRivString "Om flera elektroniska adresser anges skiljs de åt via sin användningskod" """
    Om flera elektroniska adresser anges skiljs de åt via sin användningskod. Möjliga värden: H = Används i hemmet/privat HV = Används under semester WP = Används på arbetet/i tjänsten TMP = Används tillfälligt
    Tillåtna värden enligt XSD: H, HV, WP, TMP.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.person.electronicAddress.use, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.jobCode 0..1 SEEHDSRivCVTypeHealthcondBasic2 "NI 2017 (Hälso- och sjukvårdspersonal.befattning). 0..1 pga tillgänglighet i källsystem." """
    NI 2017 (Hälso- och sjukvårdspersonal.befattning) Kod för den befattning en hälso- och sjukvårdspersonal har i ett visst uppdrag i en organisation inom hälso- och sjukvård. En befattning avser ställning i en verksamhet som innebär vissa befogenheter och ett visst ansvar. Hälso- och sjukvårdspersonal.befattning är obligatoriskt enligt NI men har kardinalitet 0..1 i tjänstekontrakt eftersom det inte är säkert att information om befattning finns tillgänglig i producentsystemet.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.jobCode, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.license 0..* SEEHDSRivCVTypeHealthcondBasic2 "NI 2017 (Hälso- och sjukvårdspersonal.legitimation)." """
    NI 2017 (Hälso- och sjukvårdspersonal.legitimation) Kod för den legitimation inom hälso- och sjukvård som avses.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.license, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.specialistQualification 0..* SEEHDSRivCVTypeHealthcondBasic2 "NI 2017 (Hälso- och sjukvårdspersonal.specialistkompetens)." """
    NI 2017 (Hälso- och sjukvårdspersonal.specialistkompetens) Angivelse av kod för kompetens inom en medicinsk specialitet som en läkare har.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.specialistQualification, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.organisation 1..1 BackboneElement "Organisation för uppdraget. Se OrganisationType." """
    Organization som hälso- och sjukvårdspersonal har uppdrag för. Se OrganisationType i avsnitt 6.1.2.2.13.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.organisation, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.organisation.rivId 0..1 SEEHDSRivIITypeHealthcondBasic2 "Id för organisation" """Id för organisation. Vanligtvis HSA-id."""
* insert RivNs(observations.observationBody.participation.healthcareProfessional.organisation.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.observationBody.participation.healthcareProfessional.organisation.rivId, id)
* observations.observationBody.participation.healthcareProfessional.organisation.type 0..1 SEEHDSRivCVTypeHealthcondBasic2 "N1 2017 (Organisation.typ)" """
    Kod för vilken typ av organisation som avses, exempelvis vårdgivare eller vårdenhet. Ger också möjlighet att ange exempelvis socialtjänst eller annan myndighet.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.organisation.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.organisation.name 0..1 SEEHDSRivString "Organisationens namn"
* insert RivNs(observations.observationBody.participation.healthcareProfessional.organisation.name, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.organisation.address 0..* BackboneElement "NI 2017 (Organisation.adress)" """
    Angivelse av adressinformation för fysisk plats till organisation, exempelvis besöksadress eller fakturaadress. Se AddressType i avsnitt 6.1.2.2.14.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.organisation.address, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.organisation.address.use 0..1 SEEHDSRivString "Om flera adresser anges skiljs de åt via sin användningskod" """
    Om flera adresser anges skiljs de åt via sin användningskod. Den primära/default adressen anges alltid utan användningskod. Möjliga värden: PHYS = Fysisk besöksadress H = Hemadress HV = Semesteradress WP = Adress till arbetsplats TMP = Tillfällig adress När det inte finns en adress med användningskod som matchar syftet med adressanvändningen, väljs den primära adressen.
    Tillåtna värden enligt XSD: PHYS, H, HV, WP, TMP.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.organisation.address.use, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.organisation.address.part 1..* BackboneElement "Del av adress, exempelvis gatuadress eller postnummer" """Del av adress, exempelvis gatuadress eller postnummer."""
* insert RivNs(observations.observationBody.participation.healthcareProfessional.organisation.address.part, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.organisation.address.part.value 1..1 SEEHDSRivString "value"
* insert RivNs(observations.observationBody.participation.healthcareProfessional.organisation.address.part.value, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.organisation.address.part.type 0..1 SEEHDSRivString "type" """Tillåtna värden enligt XSD: SAL, CAR, CEN, CNT, CPA, CTY, ZIP, POB, PRE."""
* insert RivNs(observations.observationBody.participation.healthcareProfessional.organisation.address.part.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.organisation.electronicAddress 0..* BackboneElement "NI 2017 (Organisation.elektroniskAdress)" """
    Angivelse av elektronisk adressinformation till organisation. Här avses även telefonnummer. Exempel är telefonnummer till växel, e-postadress eller webbadress. Se TelType i avsnitt 6.1.2.2.15.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.organisation.electronicAddress, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.organisation.electronicAddress.value 1..1 SEEHDSRivAnyURI "Elektronisk adress, t.ex." """
    Elektronisk adress, t.ex. e-mail eller telefonnummer. Anges i form av en URI inklusive prefix som anger protokoll. Telefonnummer anges med prefixet ”tel:”, e-mailadresser med ”mailto:” och webbsidor med ”http:” eller ”https:”. Exempel: value=”tel:+46702353535” value=”mailto:lars@gmail.com” value=”http://www.1177.se”
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.organisation.electronicAddress.value, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.organisation.electronicAddress.capabilities 0..* SEEHDSRivString "Kan användas för telefonnummer för att ange om numret har möjlighet att ta emot röstsamtal, fax eller SMS" """
    Kan användas för telefonnummer för att ange om numret har möjlighet att ta emot röstsamtal, fax eller SMS. Möjliga värden: voice = Numret kan ta emot röstsamtal fax = Numret kan ta emot fax sms = Numret kan ta emot SMS
    Tillåtna värden enligt XSD: voice, fax, sms.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.organisation.electronicAddress.capabilities, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.organisation.electronicAddress.use 0..* SEEHDSRivString "Om flera elektroniska adresser anges skiljs de åt via sin användningskod" """
    Om flera elektroniska adresser anges skiljs de åt via sin användningskod. Möjliga värden: H = Används i hemmet/privat HV = Används under semester WP = Används på arbetet/i tjänsten TMP = Används tillfälligt
    Tillåtna värden enligt XSD: H, HV, WP, TMP.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.organisation.electronicAddress.use, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.address 0..* BackboneElement "NI 2017 (Hälso- och sjukvårdspersonal.adress). Se AddressType." """
    NI 2017 (Hälso- och sjukvårdspersonal.adress) Angivelse av adressinformation för fysisk plats som en person har i sin roll som hälso- och sjukvårdspersonal i ett visst uppdrag i en organisation inom hälso- och sjukvård. Exempel är personlig besöksadress. Se AddressType i avsnitt 6.1.2.2.14.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.address, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.address.use 0..1 SEEHDSRivString "Om flera adresser anges skiljs de åt via sin användningskod" """
    Om flera adresser anges skiljs de åt via sin användningskod. Den primära/default adressen anges alltid utan användningskod. Möjliga värden: PHYS = Fysisk besöksadress H = Hemadress HV = Semesteradress WP = Adress till arbetsplats TMP = Tillfällig adress När det inte finns en adress med användningskod som matchar syftet med adressanvändningen, väljs den primära adressen.
    Tillåtna värden enligt XSD: PHYS, H, HV, WP, TMP.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.address.use, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.address.part 1..* BackboneElement "Del av adress, exempelvis gatuadress eller postnummer" """Del av adress, exempelvis gatuadress eller postnummer."""
* insert RivNs(observations.observationBody.participation.healthcareProfessional.address.part, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.address.part.value 1..1 SEEHDSRivString "value"
* insert RivNs(observations.observationBody.participation.healthcareProfessional.address.part.value, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.address.part.type 0..1 SEEHDSRivString "type" """Tillåtna värden enligt XSD: SAL, CAR, CEN, CNT, CPA, CTY, ZIP, POB, PRE."""
* insert RivNs(observations.observationBody.participation.healthcareProfessional.address.part.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.electronicAddress 0..* BackboneElement "NI 2017 (Hälso- och sjukvårdspersonal.elektroniskAdress). Se TelType." """
    NI 2017 (Hälso- och sjukvårdspersonal.elektroniskAdress) Angivelse av elektronisk adressinformation som en person har i sin roll som hälso- och sjukvårdspersonal i ett visst uppdrag i en organisation inom hälso- och sjukvård. Här avses även telefonnummer. Exempel är direktnummer eller personlig e-postadress. Se TelType i avsnitt 6.1.2.2.15.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.electronicAddress, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.electronicAddress.value 1..1 SEEHDSRivAnyURI "Elektronisk adress, t.ex." """
    Elektronisk adress, t.ex. e-mail eller telefonnummer. Anges i form av en URI inklusive prefix som anger protokoll. Telefonnummer anges med prefixet ”tel:”, e-mailadresser med ”mailto:” och webbsidor med ”http:” eller ”https:”. Exempel: value=”tel:+46702353535” value=”mailto:lars@gmail.com” value=”http://www.1177.se”
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.electronicAddress.value, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.electronicAddress.capabilities 0..* SEEHDSRivString "Kan användas för telefonnummer för att ange om numret har möjlighet att ta emot röstsamtal, fax eller SMS" """
    Kan användas för telefonnummer för att ange om numret har möjlighet att ta emot röstsamtal, fax eller SMS. Möjliga värden: voice = Numret kan ta emot röstsamtal fax = Numret kan ta emot fax sms = Numret kan ta emot SMS
    Tillåtna värden enligt XSD: voice, fax, sms.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.electronicAddress.capabilities, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.healthcareProfessional.electronicAddress.use 0..* SEEHDSRivString "Om flera elektroniska adresser anges skiljs de åt via sin användningskod" """
    Om flera elektroniska adresser anges skiljs de åt via sin användningskod. Möjliga värden: H = Används i hemmet/privat HV = Används under semester WP = Används på arbetet/i tjänsten TMP = Används tillfälligt
    Tillåtna värden enligt XSD: H, HV, WP, TMP.
  """
* insert RivNs(observations.observationBody.participation.healthcareProfessional.electronicAddress.use, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient 0..1 BackboneElement "Patienten som deltagare (PatientInformationType) — ej som subjekt för observationen." """
    Patienten i det fall då patienten deltar på andra sätt än som subjekt för observationen. Se PatientInformationType i avsnitt 6.1.2.2.4.
  """
* insert RivNs(observations.observationBody.participation.patient, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.rivId 0..1 SEEHDSRivIITypeHealthcondBasic2 "NI 2017 (Patient.id)" """
    Angivelse av identitetsbeteckning för patientrollen. Denna identitet används då patienten inte kan eller bör identifieras med ett person-id (personnummer eller samordningsnummer). Identitetsbeteckningen på patient är vanligtvis ett reservnummer. En person kan ha flera instanser av klassen patient och dessa kan ha olika id. Observera att det är obligatoriskt att ange antingen person-id på person eller id på patient. Nationell reservidentitet är den enda typ av reservnummer som tillåts i denna tjänst. Denna ska anges med 12 tecken utan avskiljare. Se [R9] för mer information om nationell reservidentitet.
  """
* insert RivNs(observations.observationBody.participation.patient.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.observationBody.participation.patient.rivId, id)
* observations.observationBody.participation.patient.person 1..1 BackboneElement "Uppgifter om den person som har rollen som patient" """
    Uppgifter om den person som har rollen som patient. Se övrig regel 3, avsnitt 6.1.3.3. Se PersonType i avsnitt 6.1.2.2.6.
  """
* insert RivNs(observations.observationBody.participation.patient.person, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.person.rivId 0..1 SEEHDSRivIITypeHealthcondBasic2 "Id för personen i form av personnummer eller samordningsnummer" """
    Id för personen i form av personnummer eller samordningsnummer. Skall anges med 12 tecken utan avskiljare.
  """
* insert RivNs(observations.observationBody.participation.patient.person.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.observationBody.participation.patient.person.rivId, id)
* observations.observationBody.participation.patient.person.givenName 0..* SEEHDSRivString "NI 2017 (Person.förnamn)" """Angivelse av förnamn, som är en persons givna namn och inkluderar tilltalsnamn."""
* insert RivNs(observations.observationBody.participation.patient.person.givenName, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.person.middleSurname 0..1 SEEHDSRivString "NI 2017 (Person.mellannamn)" """
    Angivelse av mellannamn, som är ett namn som kan bäras för att visa gemenskap med en förälder eller en make som bär detta namn som efternamn. Man kan också bära ett eget tidigare efternamn som mellannamn om man bytt till makes eller registrerade partners efternamn.
  """
* insert RivNs(observations.observationBody.participation.patient.person.middleSurname, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.person.surname 0..1 SEEHDSRivString "NI 2017 (Person.efternamn)" """Angivelse av efternamn, som är en persons familjenamn eller släktnamn."""
* insert RivNs(observations.observationBody.participation.patient.person.surname, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.person.givenNameMarker 0..1 SEEHDSRivInteger "NI 2017 (Person.tilltalsnamnsmarkering)" """
    Angivelse av tilltalsnamnsmarkering, som används för att markera vilket av de angivna förnamnen som är personens tilltalsnamn. Giltiga värden är 10-99 där den första siffran anger vilket av de angivna förnamnen som är tilltalsnamnet (1 motsvarar första namnet osv.) och den andra siffran anger det eventuella andra tilltalsnamnet om dubbelnamn är aktuellt. Om inte är den andra siffran 0.
  """
* insert RivNs(observations.observationBody.participation.patient.person.givenNameMarker, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.person.gender 0..1 SEEHDSRivCVTypeHealthcondBasic2 "NI 2017 (Person.kön)" """Angivelse av vilket kön personen har enligt folkbokföringen."""
* insert RivNs(observations.observationBody.participation.patient.person.gender, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.person.dateOfBirth 0..1 SEEHDSRivDate "NI 2017 (Person.födelsedatum)" """
    Angivelse av vilket datum personen är född. Ett datum på formatet ÅÅÅÅMMDD. Observera att det är födelsedatumet och inte personnumret.
    Format enligt XSD (DateType): ÅÅÅÅMMDD.
  """
* insert RivNs(observations.observationBody.participation.patient.person.dateOfBirth, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.person.confidentialityIndicator 1..1 SEEHDSRivBoolean "NI 2017 (Person.sekretessmarkering)" """
    Angivelse av sekretessmarkering enligt Skatteverket. Defaultvärde är ”false”. Defaultvärdet ska automatiskt användas om inget annat värde anges.
  """
* insert RivNs(observations.observationBody.participation.patient.person.confidentialityIndicator, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.person.maritalStatus 0..1 SEEHDSRivCVTypeHealthcondBasic2 "NI 2017 (Person.civilstånd)" """Angivelse av personens civilstånd."""
* insert RivNs(observations.observationBody.participation.patient.person.maritalStatus, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.person.address 0..* BackboneElement "NI 2017 (Person.adress)" """
    Angivelse av adressinformation för fysisk plats för en person, exempelvis bostadsadress eller tillfällig adress. Se AddressType i avsnitt 6.1.2.2.14.
  """
* insert RivNs(observations.observationBody.participation.patient.person.address, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.person.address.use 0..1 SEEHDSRivString "Om flera adresser anges skiljs de åt via sin användningskod" """
    Om flera adresser anges skiljs de åt via sin användningskod. Den primära/default adressen anges alltid utan användningskod. Möjliga värden: PHYS = Fysisk besöksadress H = Hemadress HV = Semesteradress WP = Adress till arbetsplats TMP = Tillfällig adress När det inte finns en adress med användningskod som matchar syftet med adressanvändningen, väljs den primära adressen.
    Tillåtna värden enligt XSD: PHYS, H, HV, WP, TMP.
  """
* insert RivNs(observations.observationBody.participation.patient.person.address.use, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.person.address.part 1..* BackboneElement "Del av adress, exempelvis gatuadress eller postnummer" """Del av adress, exempelvis gatuadress eller postnummer."""
* insert RivNs(observations.observationBody.participation.patient.person.address.part, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.person.address.part.value 1..1 SEEHDSRivString "value"
* insert RivNs(observations.observationBody.participation.patient.person.address.part.value, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.person.address.part.type 0..1 SEEHDSRivString "type" """Tillåtna värden enligt XSD: SAL, CAR, CEN, CNT, CPA, CTY, ZIP, POB, PRE."""
* insert RivNs(observations.observationBody.participation.patient.person.address.part.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.person.electronicAddress 0..* BackboneElement "NI 2017 (Person.elektroniskAdress)" """
    Angivelse av elektronisk adressinformation som en person har. Här avses även telefonnummer. Exempel är telefonnummer eller e-postadress. Se TelType i avsnitt 6.1.2.2.15.
  """
* insert RivNs(observations.observationBody.participation.patient.person.electronicAddress, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.person.electronicAddress.value 1..1 SEEHDSRivAnyURI "Elektronisk adress, t.ex." """
    Elektronisk adress, t.ex. e-mail eller telefonnummer. Anges i form av en URI inklusive prefix som anger protokoll. Telefonnummer anges med prefixet ”tel:”, e-mailadresser med ”mailto:” och webbsidor med ”http:” eller ”https:”. Exempel: value=”tel:+46702353535” value=”mailto:lars@gmail.com” value=”http://www.1177.se”
  """
* insert RivNs(observations.observationBody.participation.patient.person.electronicAddress.value, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.person.electronicAddress.capabilities 0..* SEEHDSRivString "Kan användas för telefonnummer för att ange om numret har möjlighet att ta emot röstsamtal, fax eller SMS" """
    Kan användas för telefonnummer för att ange om numret har möjlighet att ta emot röstsamtal, fax eller SMS. Möjliga värden: voice = Numret kan ta emot röstsamtal fax = Numret kan ta emot fax sms = Numret kan ta emot SMS
    Tillåtna värden enligt XSD: voice, fax, sms.
  """
* insert RivNs(observations.observationBody.participation.patient.person.electronicAddress.capabilities, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.person.electronicAddress.use 0..* SEEHDSRivString "Om flera elektroniska adresser anges skiljs de åt via sin användningskod" """
    Om flera elektroniska adresser anges skiljs de åt via sin användningskod. Möjliga värden: H = Används i hemmet/privat HV = Används under semester WP = Används på arbetet/i tjänsten TMP = Används tillfälligt
    Tillåtna värden enligt XSD: H, HV, WP, TMP.
  """
* insert RivNs(observations.observationBody.participation.patient.person.electronicAddress.use, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.address 0..* BackboneElement "NI 2017 (Patient.adress)" """
    Angivelse av adressinformation för fysisk plats som en person har i sin roll som patient, exempelvis särskild kallelseadress. Se AddressType i avsnitt 6.1.2.2.14.
  """
* insert RivNs(observations.observationBody.participation.patient.address, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.address.use 0..1 SEEHDSRivString "Om flera adresser anges skiljs de åt via sin användningskod" """
    Om flera adresser anges skiljs de åt via sin användningskod. Den primära/default adressen anges alltid utan användningskod. Möjliga värden: PHYS = Fysisk besöksadress H = Hemadress HV = Semesteradress WP = Adress till arbetsplats TMP = Tillfällig adress När det inte finns en adress med användningskod som matchar syftet med adressanvändningen, väljs den primära adressen.
    Tillåtna värden enligt XSD: PHYS, H, HV, WP, TMP.
  """
* insert RivNs(observations.observationBody.participation.patient.address.use, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.address.part 1..* BackboneElement "Del av adress, exempelvis gatuadress eller postnummer" """Del av adress, exempelvis gatuadress eller postnummer."""
* insert RivNs(observations.observationBody.participation.patient.address.part, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.address.part.value 1..1 SEEHDSRivString "value"
* insert RivNs(observations.observationBody.participation.patient.address.part.value, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.address.part.type 0..1 SEEHDSRivString "type" """Tillåtna värden enligt XSD: SAL, CAR, CEN, CNT, CPA, CTY, ZIP, POB, PRE."""
* insert RivNs(observations.observationBody.participation.patient.address.part.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.electronicAddress 0..* BackboneElement "NI 2017 (Patient.elektroniskAdress)" """
    Angivelse av elektronisk adressinformation som en person har i sin roll som patient. Här avses även telefonnummer. Exempel är särskilt telefonnummer till telemedicinutrustning. Se TelType i avsnitt 6.1.2.2.15.
  """
* insert RivNs(observations.observationBody.participation.patient.electronicAddress, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.electronicAddress.value 1..1 SEEHDSRivAnyURI "Elektronisk adress, t.ex." """
    Elektronisk adress, t.ex. e-mail eller telefonnummer. Anges i form av en URI inklusive prefix som anger protokoll. Telefonnummer anges med prefixet ”tel:”, e-mailadresser med ”mailto:” och webbsidor med ”http:” eller ”https:”. Exempel: value=”tel:+46702353535” value=”mailto:lars@gmail.com” value=”http://www.1177.se”
  """
* insert RivNs(observations.observationBody.participation.patient.electronicAddress.value, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.electronicAddress.capabilities 0..* SEEHDSRivString "Kan användas för telefonnummer för att ange om numret har möjlighet att ta emot röstsamtal, fax eller SMS" """
    Kan användas för telefonnummer för att ange om numret har möjlighet att ta emot röstsamtal, fax eller SMS. Möjliga värden: voice = Numret kan ta emot röstsamtal fax = Numret kan ta emot fax sms = Numret kan ta emot SMS
    Tillåtna värden enligt XSD: voice, fax, sms.
  """
* insert RivNs(observations.observationBody.participation.patient.electronicAddress.capabilities, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.patient.electronicAddress.use 0..* SEEHDSRivString "Om flera elektroniska adresser anges skiljs de åt via sin användningskod" """
    Om flera elektroniska adresser anges skiljs de åt via sin användningskod. Möjliga värden: H = Används i hemmet/privat HV = Används under semester WP = Används på arbetet/i tjänsten TMP = Används tillfälligt
    Tillåtna värden enligt XSD: H, HV, WP, TMP.
  """
* insert RivNs(observations.observationBody.participation.patient.electronicAddress.use, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson 0..1 BackboneElement "Övrig person — ej patienten eller hälso- och sjukvårdspersonal (OtherPersonType)." """
    Fält: type (1..1, CVType), person (1..1, PersonType), organisation (0..1, OrganisationType).
  """
* insert RivNs(observations.observationBody.participation.otherPerson, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.type 1..1 SEEHDSRivCVTypeHealthcondBasic2 "NI 2017 (Annan person.typ)" """Kod för den typ av annan person som avses, exempelvis anhörig eller företrädare."""
* insert RivNs(observations.observationBody.participation.otherPerson.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.person 1..1 BackboneElement "Uppgifter om den person som har rollen som annan person" """
    Uppgifter om den person som har rollen som annan person. Se övrig regel 3, avsnitt 6.1.3.3. Se PersonType i avsnitt 6.1.2.2.8.
  """
* insert RivNs(observations.observationBody.participation.otherPerson.person, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.person.rivId 0..1 SEEHDSRivIITypeHealthcondBasic2 "Id för personen i form av personnummer eller samordningsnummer" """
    Id för personen i form av personnummer eller samordningsnummer. Skall anges med 12 tecken utan avskiljare.
  """
* insert RivNs(observations.observationBody.participation.otherPerson.person.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.observationBody.participation.otherPerson.person.rivId, id)
* observations.observationBody.participation.otherPerson.person.givenName 0..* SEEHDSRivString "NI 2017 (Person.förnamn)" """Angivelse av förnamn, som är en persons givna namn och inkluderar tilltalsnamn."""
* insert RivNs(observations.observationBody.participation.otherPerson.person.givenName, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.person.middleSurname 0..1 SEEHDSRivString "NI 2017 (Person.mellannamn)" """
    Angivelse av mellannamn, som är ett namn som kan bäras för att visa gemenskap med en förälder eller en make som bär detta namn som efternamn. Man kan också bära ett eget tidigare efternamn som mellannamn om man bytt till makes eller registrerade partners efternamn.
  """
* insert RivNs(observations.observationBody.participation.otherPerson.person.middleSurname, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.person.surname 0..1 SEEHDSRivString "NI 2017 (Person.efternamn)" """Angivelse av efternamn, som är en persons familjenamn eller släktnamn."""
* insert RivNs(observations.observationBody.participation.otherPerson.person.surname, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.person.givenNameMarker 0..1 SEEHDSRivInteger "NI 2017 (Person.tilltalsnamnsmarkering)" """
    Angivelse av tilltalsnamnsmarkering, som används för att markera vilket av de angivna förnamnen som är personens tilltalsnamn. Giltiga värden är 10-99 där den första siffran anger vilket av de angivna förnamnen som är tilltalsnamnet (1 motsvarar första namnet osv.) och den andra siffran anger det eventuella andra tilltalsnamnet om dubbelnamn är aktuellt. Om inte är den andra siffran 0.
  """
* insert RivNs(observations.observationBody.participation.otherPerson.person.givenNameMarker, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.person.gender 0..1 SEEHDSRivCVTypeHealthcondBasic2 "NI 2017 (Person.kön)" """Angivelse av vilket kön personen har enligt folkbokföringen."""
* insert RivNs(observations.observationBody.participation.otherPerson.person.gender, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.person.dateOfBirth 0..1 SEEHDSRivDate "NI 2017 (Person.födelsedatum)" """
    Angivelse av vilket datum personen är född. Ett datum på formatet ÅÅÅÅMMDD. Observera att det är födelsedatumet och inte personnumret.
    Format enligt XSD (DateType): ÅÅÅÅMMDD.
  """
* insert RivNs(observations.observationBody.participation.otherPerson.person.dateOfBirth, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.person.confidentialityIndicator 1..1 SEEHDSRivBoolean "NI 2017 (Person.sekretessmarkering)" """
    Angivelse av sekretessmarkering enligt Skatteverket. Defaultvärde är ”false”. Defaultvärdet ska automatiskt användas om inget annat värde anges.
  """
* insert RivNs(observations.observationBody.participation.otherPerson.person.confidentialityIndicator, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.person.maritalStatus 0..1 SEEHDSRivCVTypeHealthcondBasic2 "NI 2017 (Person.civilstånd)" """Angivelse av personens civilstånd."""
* insert RivNs(observations.observationBody.participation.otherPerson.person.maritalStatus, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.person.address 0..* BackboneElement "NI 2017 (Person.adress)" """
    Angivelse av adressinformation för fysisk plats för en person, exempelvis bostadsadress eller tillfällig adress. Se AddressType i avsnitt 6.1.2.2.14.
  """
* insert RivNs(observations.observationBody.participation.otherPerson.person.address, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.person.address.use 0..1 SEEHDSRivString "Om flera adresser anges skiljs de åt via sin användningskod" """
    Om flera adresser anges skiljs de åt via sin användningskod. Den primära/default adressen anges alltid utan användningskod. Möjliga värden: PHYS = Fysisk besöksadress H = Hemadress HV = Semesteradress WP = Adress till arbetsplats TMP = Tillfällig adress När det inte finns en adress med användningskod som matchar syftet med adressanvändningen, väljs den primära adressen.
    Tillåtna värden enligt XSD: PHYS, H, HV, WP, TMP.
  """
* insert RivNs(observations.observationBody.participation.otherPerson.person.address.use, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.person.address.part 1..* BackboneElement "Del av adress, exempelvis gatuadress eller postnummer" """Del av adress, exempelvis gatuadress eller postnummer."""
* insert RivNs(observations.observationBody.participation.otherPerson.person.address.part, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.person.address.part.value 1..1 SEEHDSRivString "value"
* insert RivNs(observations.observationBody.participation.otherPerson.person.address.part.value, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.person.address.part.type 0..1 SEEHDSRivString "type" """Tillåtna värden enligt XSD: SAL, CAR, CEN, CNT, CPA, CTY, ZIP, POB, PRE."""
* insert RivNs(observations.observationBody.participation.otherPerson.person.address.part.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.person.electronicAddress 0..* BackboneElement "NI 2017 (Person.elektroniskAdress)" """
    Angivelse av elektronisk adressinformation som en person har. Här avses även telefonnummer. Exempel är telefonnummer eller e-postadress. Se TelType i avsnitt 6.1.2.2.15.
  """
* insert RivNs(observations.observationBody.participation.otherPerson.person.electronicAddress, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.person.electronicAddress.value 1..1 SEEHDSRivAnyURI "Elektronisk adress, t.ex." """
    Elektronisk adress, t.ex. e-mail eller telefonnummer. Anges i form av en URI inklusive prefix som anger protokoll. Telefonnummer anges med prefixet ”tel:”, e-mailadresser med ”mailto:” och webbsidor med ”http:” eller ”https:”. Exempel: value=”tel:+46702353535” value=”mailto:lars@gmail.com” value=”http://www.1177.se”
  """
* insert RivNs(observations.observationBody.participation.otherPerson.person.electronicAddress.value, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.person.electronicAddress.capabilities 0..* SEEHDSRivString "Kan användas för telefonnummer för att ange om numret har möjlighet att ta emot röstsamtal, fax eller SMS" """
    Kan användas för telefonnummer för att ange om numret har möjlighet att ta emot röstsamtal, fax eller SMS. Möjliga värden: voice = Numret kan ta emot röstsamtal fax = Numret kan ta emot fax sms = Numret kan ta emot SMS
    Tillåtna värden enligt XSD: voice, fax, sms.
  """
* insert RivNs(observations.observationBody.participation.otherPerson.person.electronicAddress.capabilities, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.person.electronicAddress.use 0..* SEEHDSRivString "Om flera elektroniska adresser anges skiljs de åt via sin användningskod" """
    Om flera elektroniska adresser anges skiljs de åt via sin användningskod. Möjliga värden: H = Används i hemmet/privat HV = Används under semester WP = Används på arbetet/i tjänsten TMP = Används tillfälligt
    Tillåtna värden enligt XSD: H, HV, WP, TMP.
  """
* insert RivNs(observations.observationBody.participation.otherPerson.person.electronicAddress.use, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.organisation 0..1 BackboneElement "Den organisation som personen har uppdrag för" """Den organisation som personen har uppdrag för. Se OrganisationType i avsnitt 6.1.2.2.13."""
* insert RivNs(observations.observationBody.participation.otherPerson.organisation, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.organisation.rivId 0..1 SEEHDSRivIITypeHealthcondBasic2 "Id för organisation" """Id för organisation. Vanligtvis HSA-id."""
* insert RivNs(observations.observationBody.participation.otherPerson.organisation.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.observationBody.participation.otherPerson.organisation.rivId, id)
* observations.observationBody.participation.otherPerson.organisation.type 0..1 SEEHDSRivCVTypeHealthcondBasic2 "N1 2017 (Organisation.typ)" """
    Kod för vilken typ av organisation som avses, exempelvis vårdgivare eller vårdenhet. Ger också möjlighet att ange exempelvis socialtjänst eller annan myndighet.
  """
* insert RivNs(observations.observationBody.participation.otherPerson.organisation.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.organisation.name 0..1 SEEHDSRivString "Organisationens namn"
* insert RivNs(observations.observationBody.participation.otherPerson.organisation.name, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.organisation.address 0..* BackboneElement "NI 2017 (Organisation.adress)" """
    Angivelse av adressinformation för fysisk plats till organisation, exempelvis besöksadress eller fakturaadress. Se AddressType i avsnitt 6.1.2.2.14.
  """
* insert RivNs(observations.observationBody.participation.otherPerson.organisation.address, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.organisation.address.use 0..1 SEEHDSRivString "Om flera adresser anges skiljs de åt via sin användningskod" """
    Om flera adresser anges skiljs de åt via sin användningskod. Den primära/default adressen anges alltid utan användningskod. Möjliga värden: PHYS = Fysisk besöksadress H = Hemadress HV = Semesteradress WP = Adress till arbetsplats TMP = Tillfällig adress När det inte finns en adress med användningskod som matchar syftet med adressanvändningen, väljs den primära adressen.
    Tillåtna värden enligt XSD: PHYS, H, HV, WP, TMP.
  """
* insert RivNs(observations.observationBody.participation.otherPerson.organisation.address.use, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.organisation.address.part 1..* BackboneElement "Del av adress, exempelvis gatuadress eller postnummer" """Del av adress, exempelvis gatuadress eller postnummer."""
* insert RivNs(observations.observationBody.participation.otherPerson.organisation.address.part, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.organisation.address.part.value 1..1 SEEHDSRivString "value"
* insert RivNs(observations.observationBody.participation.otherPerson.organisation.address.part.value, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.organisation.address.part.type 0..1 SEEHDSRivString "type" """Tillåtna värden enligt XSD: SAL, CAR, CEN, CNT, CPA, CTY, ZIP, POB, PRE."""
* insert RivNs(observations.observationBody.participation.otherPerson.organisation.address.part.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.organisation.electronicAddress 0..* BackboneElement "NI 2017 (Organisation.elektroniskAdress)" """
    Angivelse av elektronisk adressinformation till organisation. Här avses även telefonnummer. Exempel är telefonnummer till växel, e-postadress eller webbadress. Se TelType i avsnitt 6.1.2.2.15.
  """
* insert RivNs(observations.observationBody.participation.otherPerson.organisation.electronicAddress, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.organisation.electronicAddress.value 1..1 SEEHDSRivAnyURI "Elektronisk adress, t.ex." """
    Elektronisk adress, t.ex. e-mail eller telefonnummer. Anges i form av en URI inklusive prefix som anger protokoll. Telefonnummer anges med prefixet ”tel:”, e-mailadresser med ”mailto:” och webbsidor med ”http:” eller ”https:”. Exempel: value=”tel:+46702353535” value=”mailto:lars@gmail.com” value=”http://www.1177.se”
  """
* insert RivNs(observations.observationBody.participation.otherPerson.organisation.electronicAddress.value, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.organisation.electronicAddress.capabilities 0..* SEEHDSRivString "Kan användas för telefonnummer för att ange om numret har möjlighet att ta emot röstsamtal, fax eller SMS" """
    Kan användas för telefonnummer för att ange om numret har möjlighet att ta emot röstsamtal, fax eller SMS. Möjliga värden: voice = Numret kan ta emot röstsamtal fax = Numret kan ta emot fax sms = Numret kan ta emot SMS
    Tillåtna värden enligt XSD: voice, fax, sms.
  """
* insert RivNs(observations.observationBody.participation.otherPerson.organisation.electronicAddress.capabilities, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.otherPerson.organisation.electronicAddress.use 0..* SEEHDSRivString "Om flera elektroniska adresser anges skiljs de åt via sin användningskod" """
    Om flera elektroniska adresser anges skiljs de åt via sin användningskod. Möjliga värden: H = Används i hemmet/privat HV = Används under semester WP = Används på arbetet/i tjänsten TMP = Används tillfälligt
    Tillåtna värden enligt XSD: H, HV, WP, TMP.
  """
* insert RivNs(observations.observationBody.participation.otherPerson.organisation.electronicAddress.use, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.locationRole 0..1 BackboneElement "Plats eller platsroll som deltar i observationen (LocationRoleType)." """
    Typ av roll: t.ex. patientens hem, semesterboende, arbetsplats.
    Fält: type (0..1, CVType), location (0..1) med id, type, name, locationAddress, electronicAddress, position.
  """
* insert RivNs(observations.observationBody.participation.locationRole, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.locationRole.type 0..1 SEEHDSRivCVTypeHealthcondBasic2 "Typ av roll som en plats har" """Typ av roll som en plats har. T.ex. patientens hem, semesterboende, arbetsplats."""
* insert RivNs(observations.observationBody.participation.locationRole.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.locationRole.location 0..1 BackboneElement "Fysisk eller virtuell plats som är samma oavsett vilken verksamhet som bedrivs på platsen" """
    Fysisk eller virtuell plats som är samma oavsett vilken verksamhet som bedrivs på platsen.
  """
* insert RivNs(observations.observationBody.participation.locationRole.location, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.locationRole.location.rivId 0..1 SEEHDSRivIITypeHealthcondBasic2 "id"
* insert RivNs(observations.observationBody.participation.locationRole.location.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.observationBody.participation.locationRole.location.rivId, id)
* observations.observationBody.participation.locationRole.location.type 0..1 SEEHDSRivCVTypeHealthcondBasic2 "type"
* insert RivNs(observations.observationBody.participation.locationRole.location.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.locationRole.location.name 0..1 SEEHDSRivString "name"
* insert RivNs(observations.observationBody.participation.locationRole.location.name, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.locationRole.location.locationAddress 0..1 BackboneElement "locationAddress"
* insert RivNs(observations.observationBody.participation.locationRole.location.locationAddress, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.locationRole.location.locationAddress.use 0..1 SEEHDSRivString "Om flera adresser anges skiljs de åt via sin användningskod" """
    Om flera adresser anges skiljs de åt via sin användningskod. Den primära/default adressen anges alltid utan användningskod. Möjliga värden: PHYS = Fysisk besöksadress H = Hemadress HV = Semesteradress WP = Adress till arbetsplats TMP = Tillfällig adress När det inte finns en adress med användningskod som matchar syftet med adressanvändningen, väljs den primära adressen.
    Tillåtna värden enligt XSD: PHYS, H, HV, WP, TMP.
  """
* insert RivNs(observations.observationBody.participation.locationRole.location.locationAddress.use, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.locationRole.location.locationAddress.part 1..* BackboneElement "Del av adress, exempelvis gatuadress eller postnummer" """Del av adress, exempelvis gatuadress eller postnummer."""
* insert RivNs(observations.observationBody.participation.locationRole.location.locationAddress.part, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.locationRole.location.locationAddress.part.value 1..1 SEEHDSRivString "value"
* insert RivNs(observations.observationBody.participation.locationRole.location.locationAddress.part.value, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.locationRole.location.locationAddress.part.type 0..1 SEEHDSRivString "type" """Tillåtna värden enligt XSD: SAL, CAR, CEN, CNT, CPA, CTY, ZIP, POB, PRE."""
* insert RivNs(observations.observationBody.participation.locationRole.location.locationAddress.part.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.locationRole.location.position 0..1 BackboneElement "position"
* insert RivNs(observations.observationBody.participation.locationRole.location.position, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.locationRole.location.position.longitude 1..1 SEEHDSRivDecimal "longitude"
* insert RivNs(observations.observationBody.participation.locationRole.location.position.longitude, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.locationRole.location.position.latitude 1..1 SEEHDSRivDecimal "latitude"
* insert RivNs(observations.observationBody.participation.locationRole.location.position.latitude, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.locationRole.location.position.altitude 0..1 SEEHDSRivDecimal "altitude"
* insert RivNs(observations.observationBody.participation.locationRole.location.position.altitude, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.resource 0..1 BackboneElement "Resurs som deltar — t.ex. medicinteknisk utrustning (ResourceType)." """
    Fält: id (0..1, IIType), type (0..1, CVType), groupId (0..*, IIType),
    amount (0..1, AmountType), resourceProperty (0..*, typ + value).
  """
* insert RivNs(observations.observationBody.participation.resource, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.resource.rivId 0..1 SEEHDSRivIITypeHealthcondBasic2 "NI 2017 (Resurs.id)" """
    Angivelse av identitetsbeteckning på en viss verklig instans av resurs, exempelvis MR-maskinen på avdelning R23, rum 3.
  """
* insert RivNs(observations.observationBody.participation.resource.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.observationBody.participation.resource.rivId, id)
* observations.observationBody.participation.resource.type 0..1 SEEHDSRivCVTypeHealthcondBasic2 "NI 2017 (Resurs.typ)" """
    Kod för typ av resurs, exempelvis skalpell eller typ av läkemedel (som till exempel kan anges med NPL-id).
  """
* insert RivNs(observations.observationBody.participation.resource.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.resource.groupId 0..* SEEHDSRivIITypeHealthcondBasic2 "NI 2017 (Resurs.gruppidentitet)" """
    Angivelse av identitetsbeteckning för en grupp av resurser, exempelvis ett batchnummer eller partinummer.
  """
* insert RivNs(observations.observationBody.participation.resource.groupId, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.resource.amount 0..1 BackboneElement "NI 2017 (Resurs.mängd)" """
    Angivelse av den kvantitativa omfattning som en resurs har, uttryckt exempelvis som volym, massa eller antal. Exempel kan vara att den använda resursen blodtrycksmanschett är en till antalet. Se AmountType i avsnitt 6.1.2.2.17.
  """
* insert RivNs(observations.observationBody.participation.resource.amount, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.resource.amount.pq 0..1 SEEHDSRivPQTypeHealthcondBasic2 "Värdet som är resultatet av att en mängd uppmätts, exempelvis 100 mg eller 8 tabletter" """Värdet som är resultatet av att en mängd uppmätts, exempelvis 100 mg eller 8 tabletter."""
* insert RivNs(observations.observationBody.participation.resource.amount.pq, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.resource.amount.ivlPq 0..1 SEEHDSRivPQIntervalTypeHealthcondBasic2 "Intervall av mängder" """Intervall av mängder."""
* insert RivNs(observations.observationBody.participation.resource.amount.ivlPq, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.observationBody.participation.resource.amount.ivlPq, ivl_pq)
* observations.observationBody.participation.resource.resourceProperty 0..* BackboneElement "NI 2017 (Resursegenskap)" """
    Angivelse av egenskaper som en resurs kan ha, som inte kan utläsas från resursattributet typ [type]. Exempel är egenskapen att blodet i en blodpåse har blodgruppen "AB+". Kan användas för att exempelvis ange modellbeteckning för en medicinteknisk utrustning.
  """
* insert RivNs(observations.observationBody.participation.resource.resourceProperty, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.resource.resourceProperty.type 0..1 SEEHDSRivCVTypeHealthcondBasic2 "type"
* insert RivNs(observations.observationBody.participation.resource.resourceProperty.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.resource.resourceProperty.value 1..1 BackboneElement "value"
* insert RivNs(observations.observationBody.participation.resource.resourceProperty.value, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.resource.resourceProperty.value.cv 0..1 SEEHDSRivCVTypeHealthcondBasic2 "Kodat värde" """
    Kodat värde. I fallet med observationer kan det exempelvis vara en diagnoskod enligt ICD-10 eller ett kliniskt fynd enligt Snomed CT.
  """
* insert RivNs(observations.observationBody.participation.resource.resourceProperty.value.cv, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.resource.resourceProperty.value.pq 0..1 SEEHDSRivPQTypeHealthcondBasic2 "Värde som är resultatet av att någontings fysiskt uppmätts eller räknats, exempelvis 187 cm, 8 tabletter …" """
    Värde som är resultatet av att någontings fysiskt uppmätts eller räknats, exempelvis 187 cm, 8 tabletter eller 37,8 °C.
  """
* insert RivNs(observations.observationBody.participation.resource.resourceProperty.value.pq, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.resource.resourceProperty.value.ivlPq 0..1 SEEHDSRivPQIntervalTypeHealthcondBasic2 "Intervall av värden som är resultatet av att någontings fysiskt uppmätts eller räknats, exempelvis 187-190 …" """
    Intervall av värden som är resultatet av att någontings fysiskt uppmätts eller räknats, exempelvis 187-190 cm, 8-10 tabletter eller 37,1-37,8 °C.
  """
* insert RivNs(observations.observationBody.participation.resource.resourceProperty.value.ivlPq, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.observationBody.participation.resource.resourceProperty.value.ivlPq, ivl_pq)
* observations.observationBody.participation.resource.resourceProperty.value.ts 0..1 SEEHDSRivPartialTimeStampTypeHealthcondBasic2 "Tidpunkt där precisionen kan varieras utifrån behov" """
    Tidpunkt där precisionen kan varieras utifrån behov. Notera att det föredragna sättet att ange tiden för en observation vanligtvis är att i attributet värde (observations/observationBody/value) ange vad som observerats och i attributet tid (observations/observationBody/time) ange när.
  """
* insert RivNs(observations.observationBody.participation.resource.resourceProperty.value.ts, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.resource.resourceProperty.value.ivlTs 0..1 BackboneElement "Tidsintervall där precisionen kan varieras utifrån behov" """
    Tidsintervall där precisionen kan varieras utifrån behov. Tidpunkt där precisionen kan varieras utifrån behov. Notera att det föredragna sättet att ange tiden för en observation vanligtvis är att i attributet värde (observations/observationBody/value) ange vad som observerats och i attributet tid (observations/observationBody/time) ange när.
  """
* insert RivNs(observations.observationBody.participation.resource.resourceProperty.value.ivlTs, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.observationBody.participation.resource.resourceProperty.value.ivlTs, ivl_ts)
* observations.observationBody.participation.resource.resourceProperty.value.ivlTs.start 0..1 SEEHDSRivPartialTimeStampTypeHealthcondBasic2 "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss"
* insert RivNs(observations.observationBody.participation.resource.resourceProperty.value.ivlTs.start, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.resource.resourceProperty.value.ivlTs.end 0..1 SEEHDSRivPartialTimeStampTypeHealthcondBasic2 "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss"
* insert RivNs(observations.observationBody.participation.resource.resourceProperty.value.ivlTs.end, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.resource.resourceProperty.value.st 0..1 SEEHDSRivString "Textuell beskrivning" """Textuell beskrivning."""
* insert RivNs(observations.observationBody.participation.resource.resourceProperty.value.st, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.resource.resourceProperty.value.int 0..1 SEEHDSRivInteger "Heltal" """
    Heltal. Ska användas då något klassificerats numeriskt på en skattningsskala, exempelvis 1 poäng på Apgarskalan för Grimaser, reflex, retbarhet. Denna typ ska inte användas för numeriska värden som är ett resultat av att någonting fysiskt uppmätts eller räknats (exempelvis antal tabletter). Fysiskt uppmätta eller räknade värden ska istället dokumenteras med typen pq.
  """
* insert RivNs(observations.observationBody.participation.resource.resourceProperty.value.int, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.organisation 0..1 BackboneElement "Organisation som deltar i observationen (OrganisationType)." """Organisation som deltar i observationen. Se OrganisationType i avsnitt 6.1.2.2.13."""
* insert RivNs(observations.observationBody.participation.organisation, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.organisation.rivId 0..1 SEEHDSRivIITypeHealthcondBasic2 "Id för organisation" """Id för organisation. Vanligtvis HSA-id."""
* insert RivNs(observations.observationBody.participation.organisation.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.observationBody.participation.organisation.rivId, id)
* observations.observationBody.participation.organisation.type 0..1 SEEHDSRivCVTypeHealthcondBasic2 "N1 2017 (Organisation.typ)" """
    Kod för vilken typ av organisation som avses, exempelvis vårdgivare eller vårdenhet. Ger också möjlighet att ange exempelvis socialtjänst eller annan myndighet.
  """
* insert RivNs(observations.observationBody.participation.organisation.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.organisation.name 0..1 SEEHDSRivString "Organisationens namn"
* insert RivNs(observations.observationBody.participation.organisation.name, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.organisation.address 0..* BackboneElement "NI 2017 (Organisation.adress)" """
    Angivelse av adressinformation för fysisk plats till organisation, exempelvis besöksadress eller fakturaadress. Se AddressType i avsnitt 6.1.2.2.14.
  """
* insert RivNs(observations.observationBody.participation.organisation.address, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.organisation.address.use 0..1 SEEHDSRivString "Om flera adresser anges skiljs de åt via sin användningskod" """
    Om flera adresser anges skiljs de åt via sin användningskod. Den primära/default adressen anges alltid utan användningskod. Möjliga värden: PHYS = Fysisk besöksadress H = Hemadress HV = Semesteradress WP = Adress till arbetsplats TMP = Tillfällig adress När det inte finns en adress med användningskod som matchar syftet med adressanvändningen, väljs den primära adressen.
    Tillåtna värden enligt XSD: PHYS, H, HV, WP, TMP.
  """
* insert RivNs(observations.observationBody.participation.organisation.address.use, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.organisation.address.part 1..* BackboneElement "Del av adress, exempelvis gatuadress eller postnummer" """Del av adress, exempelvis gatuadress eller postnummer."""
* insert RivNs(observations.observationBody.participation.organisation.address.part, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.organisation.address.part.value 1..1 SEEHDSRivString "value"
* insert RivNs(observations.observationBody.participation.organisation.address.part.value, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.organisation.address.part.type 0..1 SEEHDSRivString "type" """Tillåtna värden enligt XSD: SAL, CAR, CEN, CNT, CPA, CTY, ZIP, POB, PRE."""
* insert RivNs(observations.observationBody.participation.organisation.address.part.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.organisation.electronicAddress 0..* BackboneElement "NI 2017 (Organisation.elektroniskAdress)" """
    Angivelse av elektronisk adressinformation till organisation. Här avses även telefonnummer. Exempel är telefonnummer till växel, e-postadress eller webbadress. Se TelType i avsnitt 6.1.2.2.15.
  """
* insert RivNs(observations.observationBody.participation.organisation.electronicAddress, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.organisation.electronicAddress.value 1..1 SEEHDSRivAnyURI "Elektronisk adress, t.ex." """
    Elektronisk adress, t.ex. e-mail eller telefonnummer. Anges i form av en URI inklusive prefix som anger protokoll. Telefonnummer anges med prefixet ”tel:”, e-mailadresser med ”mailto:” och webbsidor med ”http:” eller ”https:”. Exempel: value=”tel:+46702353535” value=”mailto:lars@gmail.com” value=”http://www.1177.se”
  """
* insert RivNs(observations.observationBody.participation.organisation.electronicAddress.value, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.organisation.electronicAddress.capabilities 0..* SEEHDSRivString "Kan användas för telefonnummer för att ange om numret har möjlighet att ta emot röstsamtal, fax eller SMS" """
    Kan användas för telefonnummer för att ange om numret har möjlighet att ta emot röstsamtal, fax eller SMS. Möjliga värden: voice = Numret kan ta emot röstsamtal fax = Numret kan ta emot fax sms = Numret kan ta emot SMS
    Tillåtna värden enligt XSD: voice, fax, sms.
  """
* insert RivNs(observations.observationBody.participation.organisation.electronicAddress.capabilities, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.participation.organisation.electronicAddress.use 0..* SEEHDSRivString "Om flera elektroniska adresser anges skiljs de åt via sin användningskod" """
    Om flera elektroniska adresser anges skiljs de åt via sin användningskod. Möjliga värden: H = Används i hemmet/privat HV = Används under semester WP = Används på arbetet/i tjänsten TMP = Används tillfälligt
    Tillåtna värden enligt XSD: H, HV, WP, TMP.
  """
* insert RivNs(observations.observationBody.participation.organisation.electronicAddress.use, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.relation 0..* BackboneElement "Typade samband till andra informationsmängder (RelationType)." """
    Motsvarar delvis klassen Samband i NI 2017.
    Exempel: ett systoliskt blodtryck (observation) är resultat av aktiviteten blodtrycksmätning.
  """
* insert RivNs(observations.observationBody.relation, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.relation.type 1..1 SEEHDSRivCVTypeHealthcondBasic2 "NI 2017 (Samband.typ)" """
    Kod för på vilket sätt två företeelser dokumenterade som uppgifter i patientjournal är relaterade till varandra. Exempelvis observationen att patienten har typ 2-diabetes har grund i observationerna att patienten är trött, kissar mycket och har ett förhöjt blodsockervärde, där typ av samband är ”har grund”. Koder för sambandstyp tillhandahålls av Socialstyrelsen som ett urval ur Snomed CT samt som bilaga till NI 2017 [R5]. Snomed CT urvals-id är 53371000052106. Vilka koder som ingår i urvalet söks fram i IHTSDO SNOMED CT Browser [R7]. Om koder utanför urvalet behöver användas ska detta göras i samråd med Socialstyrelsen.
  """
* insert RivNs(observations.observationBody.relation.type, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.relation.referredInformation 1..1 BackboneElement "Referens till en uppgift i patientjournal som observationen har samband till." """Referens till en uppgift i patientjournal som denna observation har ett samband till."""
* insert RivNs(observations.observationBody.relation.referredInformation, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.relation.referredInformation.rivId 1..1 SEEHDSRivIITypeHealthcondBasic2 "id"
* insert RivNs(observations.observationBody.relation.referredInformation.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.observationBody.relation.referredInformation.rivId, id)
* observations.observationBody.relation.referredInformation.time 1..1 SEEHDSRivPartialTimeStampTypeHealthcondBasic2 "Starttid för refererad information. Format: ÅÅÅÅMMDDttmmss (varierande precision). Se övrig regel 4." """YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss"""
* insert RivNs(observations.observationBody.relation.referredInformation.time, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.relation.referredInformation.categorization 1..1 SEEHDSRivString "Typ av information som sambandet pekar ut (kod från Categorization i engagemangsindexposten)."
* insert RivNs(observations.observationBody.relation.referredInformation.categorization, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.relation.referredInformation.informationOwner 1..1 BackboneElement "Vårdgivare som är informationsägare av den refererade informationen."
* insert RivNs(observations.observationBody.relation.referredInformation.informationOwner, urn:riv:clinicalprocess:healthcond:basic:2)
* observations.observationBody.relation.referredInformation.informationOwner.rivId 1..1 SEEHDSRivIITypeHealthcondBasic2 "id"
* insert RivNs(observations.observationBody.relation.referredInformation.informationOwner.rivId, urn:riv:clinicalprocess:healthcond:basic:2)
* insert RivXmlName(observations.observationBody.relation.referredInformation.informationOwner.rivId, id)
