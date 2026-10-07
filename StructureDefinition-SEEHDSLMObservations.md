# GetObservations - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetObservations**

## Logical Model: GetObservations 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMObservations | *Version*:0.3.3 |
| Draft as of 2026-10-07 | *Computable Name*:SEEHDSLMObservations |

 
Logisk modell för tjänstekontraktet GetObservations (RIV-TA urn:riv:clinicalprocess:healthcond:basic:GetObservationsInteraction:2). Representerar responsens informationsstruktur — en samling observationer som matchar sökkriterier i begäran, inklusive header-information. Meddelandemodellen från avsnitt 5.1 V-MIM — Observationer i TKB motsvarar en observation i svarsmeddelandet. 

**Användningar:**

* Denna Logisk modell används inte av några profiler i denna implementationsguide

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSLMObservations)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSLMObservations.csv), [Excel](StructureDefinition-SEEHDSLMObservations.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSLMObservations",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMObservations",
  "version" : "0.3.3",
  "name" : "SEEHDSLMObservations",
  "title" : "GetObservations",
  "status" : "draft",
  "date" : "2026-10-07T11:49:57+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetObservations\n(RIV-TA urn:riv:clinicalprocess:healthcond:basic:GetObservationsInteraction:2).\nRepresenterar responsens informationsstruktur — en samling observationer som\nmatchar sökkriterier i begäran, inklusive header-information.\nMeddelandemodellen från avsnitt 5.1 V-MIM — Observationer i TKB motsvarar\nen observation i svarsmeddelandet.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMObservations",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSLMObservations",
      "path" : "SEEHDSLMObservations",
      "short" : "GetObservations",
      "definition" : "Logisk modell för tjänstekontraktet GetObservations\n(RIV-TA urn:riv:clinicalprocess:healthcond:basic:GetObservationsInteraction:2).\nRepresenterar responsens informationsstruktur — en samling observationer som\nmatchar sökkriterier i begäran, inklusive header-information.\nMeddelandemodellen från avsnitt 5.1 V-MIM — Observationer i TKB motsvarar\nen observation i svarsmeddelandet."
    },
    {
      "id" : "SEEHDSLMObservations.observations",
      "path" : "SEEHDSLMObservations.observations",
      "short" : "De observationer som matchar sökkriterierna, inklusive header.",
      "definition" : "Kardinalitet: Valfri, lista (0..*) — tomt svar returneras om inga observationer matchar.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.header",
      "path" : "SEEHDSLMObservations.observations.header",
      "short" : "Header enligt RIV-TA standard.",
      "definition" : "Se separat dokument med fältregler för header [R10].\nKardinalitet: Obligatorisk (1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody",
      "path" : "SEEHDSLMObservations.observations.observationBody",
      "short" : "Information om en observation (ObservationType).",
      "definition" : "Motsvarar klasserna Observation och Uppgift i patientjournal i NI 2017.\nKardinalitet: Obligatorisk (1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.observationId",
      "path" : "SEEHDSLMObservations.observations.observationBody.observationId",
      "short" : "Identitet för observationen, unik inom vårdgivaren.",
      "definition" : "- root: Den informationsägande vårdgivarens HSA-id\n- extension: Den inom vårdgivaren unika id-beteckningen för observationen\nKardinalitet: Obligatorisk (1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.registrationTime",
      "path" : "SEEHDSLMObservations.observations.observationBody.registrationTime",
      "short" : "Dokumentationstidpunkt — när uppgiften registrerades i journalen.",
      "definition" : "Kan skilja sig från signeringstidpunkt (som återfinns i header).\nKardinalitet: Obligatorisk (1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.observationType",
      "path" : "SEEHDSLMObservations.observations.observationBody.observationType",
      "short" : "NI 2017 (Observation.typ) — typ av observation.",
      "definition" : "Kod för den typ av observation, används då typen inte framgår av attributet värde.\nExempel: \"längd mätt utan skor\" eller \"huvuddiagnos\".\nCVType-regler (TKB): displayName är 1..1 (obligatorisk om fältet anges).\ncodeSystemVersion är 0..1.\nKardinalitet: Valfri (0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.observationValue",
      "path" : "SEEHDSLMObservations.observations.observationBody.observationValue",
      "short" : "NI 2017 (Observation.värde) — det faktiska observerade hälsotillståndet.",
      "definition" : "Representeras av ValueANYType — en av: cv (CVType/kodat värde), pq (mätvärde),\nivl_pq (intervall), ts (tidpunkt), ivl_ts (tidsintervall), st (fritext), int (heltal).\nKardinalitet: Obligatorisk (1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.observationValue.cv",
      "path" : "SEEHDSLMObservations.observations.observationBody.observationValue.cv",
      "short" : "Kodat värde (CVType). Exempelvis diagnoskod ICD-10 eller Snomed CT.",
      "definition" : "Kodat värde (CVType). Exempelvis diagnoskod ICD-10 eller Snomed CT.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.observationValue.pq",
      "path" : "SEEHDSLMObservations.observations.observationBody.observationValue.pq",
      "short" : "Mätvärde (PQType). Exempelvis 174 cm eller 37,8 °C.",
      "definition" : "Mätvärde (PQType). Exempelvis 174 cm eller 37,8 °C.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.observationValue.ivlpq",
      "path" : "SEEHDSLMObservations.observations.observationBody.observationValue.ivlpq",
      "short" : "Intervall av mätvärden (PQIntervalType, RIV-TA: ivl_pq). Exempelvis 37,1-37,8 °C.",
      "definition" : "Villkor: Minst ett av low och high måste anges per TKB.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Range"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.observationValue.ts",
      "path" : "SEEHDSLMObservations.observations.observationBody.observationValue.ts",
      "short" : "Tidpunkt med variabel precision (PartialTimeStampType).",
      "definition" : "Format: YYYY | YYYYMM | YYYYMMDD | YYYYMMDDhh | YYYYMMDDhhmm | YYYYMMDDhhmmss.\nPrecision är explicit i formatet. Se OBS-001 (beslutad mappning i FHIR).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.observationValue.ivlts",
      "path" : "SEEHDSLMObservations.observations.observationBody.observationValue.ivlts",
      "short" : "Tidsintervall med variabel precision (PartialTimePeriodType, RIV-TA: ivl_ts).",
      "definition" : "Villkor: Minst ett av start och end måste anges per TKB.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.observationValue.st",
      "path" : "SEEHDSLMObservations.observations.observationBody.observationValue.st",
      "short" : "Textuell beskrivning.",
      "definition" : "Textuell beskrivning.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.observationValue.intValue",
      "path" : "SEEHDSLMObservations.observations.observationBody.observationValue.intValue",
      "short" : "Heltal (RIV-TA: int).",
      "definition" : "Ska ENBART användas för skalvärden (t.ex. poäng på AUDIT-skalan).\nFår INTE användas för fysiskt uppmätta värden (längd, vikt etc.) — använd pq för dessa.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.scale",
      "path" : "SEEHDSLMObservations.observations.observationBody.scale",
      "short" : "NI 2017 (Observation.skala) — den mätskala som värdet är uppmätt på.",
      "definition" : "Två huvudtyper: nominalskala (kategorisk) och ordinalskala (rangordnad).\nExempel: AUDIT-skalan (0-40 poäng) eller AB0-blodgruppsystemet.\nCVType-regler (TKB): displayName är 1..1 (obligatorisk om fältet anges).\nKardinalitet: Valfri (0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.observationStatus",
      "path" : "SEEHDSLMObservations.observations.observationBody.observationStatus",
      "short" : "NI 2017 (Observation.status) — observationens status.",
      "definition" : "Koder tillhandahålls av Socialstyrelsen som urval ur Snomed CT (urvals-id: 56431000052106).\nSnomed CT OID: 1.2.752.116.2.1.1.\nEn instans av klassen observation kan inte byta status.\nCVType-regler (TKB): displayName är 1..1 (obligatorisk).\nKardinalitet: Obligatorisk (1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehds-tk/ValueSet/se-observation-status-vs"
      }
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.targetSite",
      "path" : "SEEHDSLMObservations.observations.observationBody.targetSite",
      "short" : "NI 2017 (Observation.lokalisation) — lokalisation för observationen.",
      "definition" : "Används för att beskriva vad observationen avser gällande anatomi, funktion eller system.\nKan beskriva lateralitet, organs position, orientering i relation till kroppen etc.\nAnvänds endast om value inte innefattar tillräcklig information om lokalisation.\nKardinalitet: Valfri, lista (0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.description",
      "path" : "SEEHDSLMObservations.observations.observationBody.description",
      "short" : "NI 2017 (Observation.beskrivning) — textuell beskrivning som komplement till value.",
      "definition" : "Används som komplement till value i de fall ytterligare textuell beskrivning krävs.\nOBS: Om observationen ENDAST består av fritext ska denna anges i value/st.\nKardinalitet: Valfri (0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.time",
      "path" : "SEEHDSLMObservations.observations.observationBody.time",
      "short" : "NI 2017 (Observation.tid) — tidpunkt eller tidsintervall för observationen (TimeType).",
      "definition" : "Angivelse av den tid då det som observerats faktiskt förekom eller förväntas förekomma.\nSkiljer sig från registrationTime (dokumentationstidpunkt).\nKardinalitet: Valfri (0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.time.ts",
      "path" : "SEEHDSLMObservations.observations.observationBody.time.ts",
      "short" : "Tidpunkt med variabel precision.",
      "definition" : "Format: YYYY | YYYYMM | YYYYMMDD | YYYYMMDDhh | YYYYMMDDhhmm | YYYYMMDDhhmmss.\nSe OBS-001 (beslutad mappning i FHIR).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.time.ivlts",
      "path" : "SEEHDSLMObservations.observations.observationBody.time.ivlts",
      "short" : "Tidsintervall med variabel precision (RIV-TA: ivl_ts).",
      "definition" : "Villkor: Minst ett av start och end måste anges per TKB.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.valueNegation",
      "path" : "SEEHDSLMObservations.observations.observationBody.valueNegation",
      "short" : "NI 2017 (Observation.negation) — negerar betydelsen av value.",
      "definition" : "Normalvärde: false (positiv utsaga).\ntrue = man har letat efter ett visst tillstånd och konstaterat att det inte föreligger.\nKardinalitet: Obligatorisk (1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.patient",
      "path" : "SEEHDSLMObservations.observations.observationBody.patient",
      "short" : "Den patient som observationen avser (PatientInformationType).",
      "definition" : "Motsvarar klassen Patient i NI 2017. Se PatientInformationType.\nKardinalitet: Obligatorisk (1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.patient.patientId",
      "path" : "SEEHDSLMObservations.observations.observationBody.patient.patientId",
      "short" : "NI 2017 (Patient.id) — nationell reservidentitet om tillämpligt.",
      "definition" : "OID: 1.2.752.74.9.1. Obligatoriskt att ange antingen person-id (i person) eller id på patient.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.patient.person",
      "path" : "SEEHDSLMObservations.observations.observationBody.patient.person",
      "short" : "Uppgifter om den person som har rollen som patient (PersonType).",
      "definition" : "Se övrig regel 3 (avsnitt 6.1.3.3). Inkluderar id, givenName, surname, gender,\ndateOfBirth, confidentialityIndicator m.m.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.patient.person.personId",
      "path" : "SEEHDSLMObservations.observations.observationBody.patient.person.personId",
      "short" : "Person-id (personnummer eller samordningsnummer).",
      "definition" : "Person-id (personnummer eller samordningsnummer).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.patient.person.givenName",
      "path" : "SEEHDSLMObservations.observations.observationBody.patient.person.givenName",
      "short" : "NI 2017 (Person.förnamn).",
      "definition" : "NI 2017 (Person.förnamn).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.patient.person.middleSurname",
      "path" : "SEEHDSLMObservations.observations.observationBody.patient.person.middleSurname",
      "short" : "NI 2017 (Person.mellannamn).",
      "definition" : "NI 2017 (Person.mellannamn).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.patient.person.surname",
      "path" : "SEEHDSLMObservations.observations.observationBody.patient.person.surname",
      "short" : "NI 2017 (Person.efternamn).",
      "definition" : "NI 2017 (Person.efternamn).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.patient.person.givenNameMarker",
      "path" : "SEEHDSLMObservations.observations.observationBody.patient.person.givenNameMarker",
      "short" : "NI 2017 (Person.tilltalsnamnsmarkering). Giltiga värden: 10-99.",
      "definition" : "NI 2017 (Person.tilltalsnamnsmarkering). Giltiga värden: 10-99.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.patient.person.gender",
      "path" : "SEEHDSLMObservations.observations.observationBody.patient.person.gender",
      "short" : "NI 2017 (Person.kön). KV Kön OID: 1.2.752.129.2.2.1.1.",
      "definition" : "Koder: 0=okänt, 1=man, 2=kvinna, 9=ej tillämpligt.\nCVType-begränsning: originalText är förbjudet (0..0) för könsfältet per TKB.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.patient.person.dateOfBirth",
      "path" : "SEEHDSLMObservations.observations.observationBody.patient.person.dateOfBirth",
      "short" : "NI 2017 (Person.födelsedatum). Format ÅÅÅÅMMDD.",
      "definition" : "NI 2017 (Person.födelsedatum). Format ÅÅÅÅMMDD.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.patient.person.confidentialityIndicator",
      "path" : "SEEHDSLMObservations.observations.observationBody.patient.person.confidentialityIndicator",
      "short" : "NI 2017 (Person.sekretessmarkering). Defaultvärde: false.",
      "definition" : "NI 2017 (Person.sekretessmarkering). Defaultvärde: false.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.patient.person.maritalStatus",
      "path" : "SEEHDSLMObservations.observations.observationBody.patient.person.maritalStatus",
      "short" : "NI 2017 (Person.civilstånd).",
      "definition" : "NI 2017 (Person.civilstånd).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.patient.person.address",
      "path" : "SEEHDSLMObservations.observations.observationBody.patient.person.address",
      "short" : "NI 2017 (Person.adress). Se AddressType.",
      "definition" : "NI 2017 (Person.adress). Se AddressType.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.patient.person.electronicAddress",
      "path" : "SEEHDSLMObservations.observations.observationBody.patient.person.electronicAddress",
      "short" : "NI 2017 (Person.elektroniskAdress). Se TelType.",
      "definition" : "NI 2017 (Person.elektroniskAdress). Se TelType.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.patient.address",
      "path" : "SEEHDSLMObservations.observations.observationBody.patient.address",
      "short" : "NI 2017 (Patient.adress). Särskild kallelseadress etc. Se AddressType.",
      "definition" : "NI 2017 (Patient.adress). Särskild kallelseadress etc. Se AddressType.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.patient.electronicAddress",
      "path" : "SEEHDSLMObservations.observations.observationBody.patient.electronicAddress",
      "short" : "NI 2017 (Patient.elektroniskAdress). Exempelvis telefon till telemedicinutrustning. Se TelType.",
      "definition" : "NI 2017 (Patient.elektroniskAdress). Exempelvis telefon till telemedicinutrustning. Se TelType.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.participation",
      "path" : "SEEHDSLMObservations.observations.observationBody.participation",
      "short" : "Deltagare i observationen (ParticipationType).",
      "definition" : "Kan vara hälso- och sjukvårdspersonal, patienten, annan person, organisation,\nplats eller resurs.\nEn och endast en av: healthcareProfessional, patient, otherPerson, locationRole,\nresource, organisation.\nMotsvarar klassen Deltagande i NI 2017.\nKardinalitet: Valfri, lista (0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.participation.participantType",
      "path" : "SEEHDSLMObservations.observations.observationBody.participation.participantType",
      "short" : "Typ av deltagande (utförare, vittne, ansvarig etc.).",
      "definition" : "Koder tillhandahålls av Socialstyrelsen som urval ur Snomed CT (urvals-id: 53351000052100).\nSnomed CT OID: 1.2.752.116.2.1.1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.participation.time",
      "path" : "SEEHDSLMObservations.observations.observationBody.participation.time",
      "short" : "Tidpunkt för deltagandet om den skiljer sig från observationens tid. Se TimeType.",
      "definition" : "Tidpunkt för deltagandet om den skiljer sig från observationens tid. Se TimeType.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.participation.healthcareProfessional",
      "path" : "SEEHDSLMObservations.observations.observationBody.participation.healthcareProfessional",
      "short" : "Hälso- och sjukvårdspersonal (HealthcareProfessionalType).",
      "definition" : "Fält: id (HSA-id), person (PersonType), jobCode (befattning, 0..1),\nlicense (legitimation, 0..*), specialistQualification (specialistkompetens, 0..*),\norganisation (1..1), address (0..*), electronicAddress (0..*).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.participation.healthcareProfessional.performerId",
      "path" : "SEEHDSLMObservations.observations.observationBody.participation.healthcareProfessional.performerId",
      "short" : "HSA-id. OID: 1.2.752.129.2.1.4.1.",
      "definition" : "HSA-id. OID: 1.2.752.129.2.1.4.1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.participation.healthcareProfessional.person",
      "path" : "SEEHDSLMObservations.observations.observationBody.participation.healthcareProfessional.person",
      "short" : "Uppgifter om personen. Se PersonType.",
      "definition" : "Uppgifter om personen. Se PersonType.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.participation.healthcareProfessional.jobCode",
      "path" : "SEEHDSLMObservations.observations.observationBody.participation.healthcareProfessional.jobCode",
      "short" : "NI 2017 (Hälso- och sjukvårdspersonal.befattning). 0..1 pga tillgänglighet i källsystem.",
      "definition" : "NI 2017 (Hälso- och sjukvårdspersonal.befattning). 0..1 pga tillgänglighet i källsystem.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.participation.healthcareProfessional.license",
      "path" : "SEEHDSLMObservations.observations.observationBody.participation.healthcareProfessional.license",
      "short" : "NI 2017 (Hälso- och sjukvårdspersonal.legitimation).",
      "definition" : "NI 2017 (Hälso- och sjukvårdspersonal.legitimation).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.participation.healthcareProfessional.specialistQualification",
      "path" : "SEEHDSLMObservations.observations.observationBody.participation.healthcareProfessional.specialistQualification",
      "short" : "NI 2017 (Hälso- och sjukvårdspersonal.specialistkompetens).",
      "definition" : "NI 2017 (Hälso- och sjukvårdspersonal.specialistkompetens).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.participation.healthcareProfessional.organisation",
      "path" : "SEEHDSLMObservations.observations.observationBody.participation.healthcareProfessional.organisation",
      "short" : "Organisation för uppdraget. Se OrganisationType.",
      "definition" : "Organisation för uppdraget. Se OrganisationType.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.participation.healthcareProfessional.address",
      "path" : "SEEHDSLMObservations.observations.observationBody.participation.healthcareProfessional.address",
      "short" : "NI 2017 (Hälso- och sjukvårdspersonal.adress). Se AddressType.",
      "definition" : "NI 2017 (Hälso- och sjukvårdspersonal.adress). Se AddressType.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.participation.healthcareProfessional.electronicAddress",
      "path" : "SEEHDSLMObservations.observations.observationBody.participation.healthcareProfessional.electronicAddress",
      "short" : "NI 2017 (Hälso- och sjukvårdspersonal.elektroniskAdress). Se TelType.",
      "definition" : "NI 2017 (Hälso- och sjukvårdspersonal.elektroniskAdress). Se TelType.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.participation.patient",
      "path" : "SEEHDSLMObservations.observations.observationBody.participation.patient",
      "short" : "Patienten som deltagare (PatientInformationType) — ej som subjekt för observationen.",
      "definition" : "Patienten som deltagare (PatientInformationType) — ej som subjekt för observationen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.participation.otherPerson",
      "path" : "SEEHDSLMObservations.observations.observationBody.participation.otherPerson",
      "short" : "Övrig person — ej patienten eller hälso- och sjukvårdspersonal (OtherPersonType).",
      "definition" : "Fält: type (1..1, CVType), person (1..1, PersonType), organisation (0..1, OrganisationType).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.participation.locationRole",
      "path" : "SEEHDSLMObservations.observations.observationBody.participation.locationRole",
      "short" : "Plats eller platsroll som deltar i observationen (LocationRoleType).",
      "definition" : "Typ av roll: t.ex. patientens hem, semesterboende, arbetsplats.\nFält: type (0..1, CVType), location (0..1) med id, type, name, locationAddress, electronicAddress, position.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.participation.resource",
      "path" : "SEEHDSLMObservations.observations.observationBody.participation.resource",
      "short" : "Resurs som deltar — t.ex. medicinteknisk utrustning (ResourceType).",
      "definition" : "Fält: id (0..1, IIType), type (0..1, CVType), groupId (0..*, IIType),\namount (0..1, AmountType), resourceProperty (0..*, typ + value).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.participation.organisation",
      "path" : "SEEHDSLMObservations.observations.observationBody.participation.organisation",
      "short" : "Organisation som deltar i observationen (OrganisationType).",
      "definition" : "Organisation som deltar i observationen (OrganisationType).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.relation",
      "path" : "SEEHDSLMObservations.observations.observationBody.relation",
      "short" : "Typade samband till andra informationsmängder (RelationType).",
      "definition" : "Motsvarar delvis klassen Samband i NI 2017.\nExempel: ett systoliskt blodtryck (observation) är resultat av aktiviteten blodtrycksmätning.\nKardinalitet: Valfri, lista (0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.relation.relationType",
      "path" : "SEEHDSLMObservations.observations.observationBody.relation.relationType",
      "short" : "NI 2017 (Samband.typ) — kod för relationstyp.",
      "definition" : "Koder tillhandahålls av Socialstyrelsen som urval ur Snomed CT (urvals-id: 53371000052106).\nSnomed CT OID: 1.2.752.116.2.1.1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.relation.referredInformation",
      "path" : "SEEHDSLMObservations.observations.observationBody.relation.referredInformation",
      "short" : "Referens till en uppgift i patientjournal som observationen har samband till.",
      "definition" : "Referens till en uppgift i patientjournal som observationen har samband till.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.relation.referredInformation.referenceId",
      "path" : "SEEHDSLMObservations.observations.observationBody.relation.referredInformation.referenceId",
      "short" : "Identitet på den refererade informationen.",
      "definition" : "Identitet på den refererade informationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.relation.referredInformation.time",
      "path" : "SEEHDSLMObservations.observations.observationBody.relation.referredInformation.time",
      "short" : "Starttid för refererad information. Format: ÅÅÅÅMMDDttmmss (varierande precision). Se övrig regel 4.",
      "definition" : "Starttid för refererad information. Format: ÅÅÅÅMMDDttmmss (varierande precision). Se övrig regel 4.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.relation.referredInformation.categorization",
      "path" : "SEEHDSLMObservations.observations.observationBody.relation.referredInformation.categorization",
      "short" : "Typ av information som sambandet pekar ut (kod från Categorization i engagemangsindexposten).",
      "definition" : "Typ av information som sambandet pekar ut (kod från Categorization i engagemangsindexposten).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.relation.referredInformation.informationOwner",
      "path" : "SEEHDSLMObservations.observations.observationBody.relation.referredInformation.informationOwner",
      "short" : "Vårdgivare som är informationsägare av den refererade informationen.",
      "definition" : "Vårdgivare som är informationsägare av den refererade informationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservations.observations.observationBody.relation.referredInformation.informationOwner.careGiverId",
      "path" : "SEEHDSLMObservations.observations.observationBody.relation.referredInformation.informationOwner.careGiverId",
      "short" : "Identitet för informationsägande vårdgivare. OID: 1.2.752.129.2.1.4.1.",
      "definition" : "Identitet för informationsägande vårdgivare. OID: 1.2.752.129.2.1.4.1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
