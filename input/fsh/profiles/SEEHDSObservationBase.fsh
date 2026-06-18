Profile: SEEHDSObservationBase
Parent: $Observation-results-uv-ips
Id: se-ehds-observation-base
Title: "SE EHDS Observation Base – GetObservations"
Description: """
  Basprofil för alla observationer från GetObservations
  (clinicalprocess:healthcond:basic v2.0).

  Profilen fångar den generella TK-mappningen och används som förälder av
  domänspecifika profiler (t.ex. SEEHDSObservationGrowth för tillväxtkurva).

  Nyckeldesignbeslut:
  - observationBody.observationValue är XOR-union av sju värdetyper (cv/pq/ivlpq/ts/ivlts/st/int).
    Varje gren mappas till respektive FHIR value[x]-variant.
  - Om valueNegation=true utelämnas value[x] och dataAbsentReason sätts.
  - observationBody.time (ts/ivlts) → effective[x]; registrationTime → issued.
  - participation är polymorf (healthcareProfessional/patient/otherPerson/locationRole/resource/organisation).
    Välj FHIR-element per deltagartyp (se mappningssida).
  - PDL-fält (Sparr) hanteras via Provenance och meta.security (se mappningssida).

  Täcker NPÖ 1.2 och 1177 Journal 1.2.
"""

// ─── Identitet och proveniensmetadata ──────────────────────────────────────

* identifier MS
* identifier ^short = "Observations-id (observationBody.observationId)"
* identifier.value MS
* identifier.value ^short = "Unikt id inom vårdgivaren (observationId.extension)"
* identifier.system MS
* identifier.system ^short = "OID för informationsägande vårdgivare (observationId.root) – format urn:oid:{root}"

* meta.source MS
* meta.source ^short = "Källsystem (header) – HSA-id för det system som tillgängliggör informationen"

* meta.security MS
* meta.security ^short = "Skyddad identitet (observationBody.patient.person.confidentialityIndicator=true → v3-Confidentiality#R)"

// ─── Status ────────────────────────────────────────────────────────────────

* status 1..1 MS
* status ^short = "Observationsstatus (observationBody.observationStatus – SNOMED CT urvals-id 56431000052106 → FHIR ObservationStatus via ConceptMap, se OBS-003)"

// ─── Klassificering ────────────────────────────────────────────────────────

* category 1..* MS
* category ^short = "Observationskategori – kategori 'exam' sätts alltid; domänprofiler lägger till fler (t.ex. vital-signs)"

* code 1..1 MS
* code ^short = "Observationstyp (observationBody.observationType.type.code) – SNOMED CT SE OID 1.2.752.116.2.1.1; om saknas används platshållarkod"
* code.coding MS
* code.coding ^short = "Kodat observationstyps-värde; SNOMED CT SE-koder (http://snomed.info/sct)"
* code.text MS
* code.text ^short = "observationBody.observationType.type.displayName"

// ─── Subjekt ──────────────────────────────────────────────────────────────

* subject only Reference(SEEHDSPatient)
* subject 1..1 MS
* subject ^short = "Patient (observationBody.patient.person.personId om tillgängligt; annars observationBody.patient.patientId)"

// ─── Tid ──────────────────────────────────────────────────────────────────

* effective[x] MS
* effective[x] ^short = "Observationstid (observationBody.time.ts → effectiveDateTime; observationBody.time.ivlts → effectivePeriod); se GENERAL-001 och OBS-001"

* issued MS
* issued ^short = "Dokumentationstidpunkt (observationBody.registrationTime) – när uppgiften registrerades i journalen"

// ─── Utförare ─────────────────────────────────────────────────────────────

* performer MS
* performer ^short = """
    Deltagare (observationBody.participation[*]):
    healthcareProfessional.performerId → Reference(PractitionerRole)
    otherPerson → Reference(RelatedPerson)
    organisation → Reference(Organization)
    resource → Observation.device (se nedan)
    patient/locationRole → se OBS-006
  """

// ─── Värde ────────────────────────────────────────────────────────────────

* value[x] MS
* value[x] ^short = """
    Observationsvärde (observationBody.observationValue – XOR-union):
    cv       → valueCodeableConcept
    pq       → valueQuantity
    ivlpq    → valueRange
    ts       → valueString (variabelprecision; kan ej alltid mappas till dateTime, se OBS-001)
    ivlts    → valuePeriod
    st       → valueString
    intValue → valueInteger
    Om valueNegation=true utelämnas value[x] och dataAbsentReason sätts (se OBS-002).
  """

// ─── Frånvaroreason ───────────────────────────────────────────────────────

* dataAbsentReason MS
* dataAbsentReason ^short = "Negation (observationBody.valueNegation=true → dataAbsentReason.code='not-applicable'); se OBS-002"

// ─── Anatomisk lokalisation ───────────────────────────────────────────────

* bodySite MS
* bodySite ^short = "Anatomisk lokalisation (observationBody.targetSite[0]); TK är 0..* men FHIR R4 är 0..1; övriga lokal noteras i note (se OBS-004)"

// ─── Metod/skala ──────────────────────────────────────────────────────────

* method MS
* method ^short = "Mätskala (observationBody.scale) – nominalskala/ordinalskala (t.ex. AUDIT, AB0-systemet)"

// ─── Utrustning ───────────────────────────────────────────────────────────

* device MS
* device ^short = "Medicinteknisk utrustning (observationBody.participation[*].resource.id → Device.identifier)"

// ─── Relationer ───────────────────────────────────────────────────────────

* derivedFrom MS
* derivedFrom ^short = "Samband – härledd observation (observationBody.relation[*] med relationstyp 'härledd från'); se OBS-005"

* hasMember MS
* hasMember ^short = "Samband – panelmedlem (observationBody.relation[*] med relationstyp 'ingår i grupp'); se OBS-005"

// ─── Anteckning ───────────────────────────────────────────────────────────

* note MS
* note ^short = "Textuell beskrivning (observationBody.description); även overflow-lokal från targetSite[1..*] läggs här"
