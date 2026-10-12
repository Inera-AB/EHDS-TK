# GetObservations 1.2 - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetObservations 1.2**

## Logical Model: GetObservations 1.2 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMObservationsV12 | *Version*:0.5.0 |
| Draft as of 2026-10-12 | *Computable Name*:SEEHDSLMObservationsV12 |

 
Logisk modell för version 1.2 av tjänstekontraktet GetObservations (urn:riv:clinicalprocess:healthcond:basic:GetObservationsResponder:1). Mappningen utgår från versionen i SEEHDSLMObservations. Skillnaderna mot den och hur de påverkar mappningen beskrivs på tjänstekontraktets mappningssida. 

**Användningar:**

* Denna Logisk modell används inte av några profiler i denna implementationsguide

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSLMObservationsV12)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSLMObservationsV12.csv), [Excel](StructureDefinition-SEEHDSLMObservationsV12.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSLMObservationsV12",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/xml-name",
    "valueString" : "GetObservationsResponse"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
    "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:GetObservationsResponder:1"
  }],
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMObservationsV12",
  "version" : "0.5.0",
  "name" : "SEEHDSLMObservationsV12",
  "title" : "GetObservations 1.2",
  "status" : "draft",
  "date" : "2026-10-12T13:38:08+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för version 1.2 av tjänstekontraktet GetObservations\n(urn:riv:clinicalprocess:healthcond:basic:GetObservationsResponder:1).\nMappningen utgår från versionen i SEEHDSLMObservations. Skillnaderna mot den och hur de\npåverkar mappningen beskrivs på tjänstekontraktets mappningssida.",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMObservationsV12",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSLMObservationsV12",
      "path" : "SEEHDSLMObservationsV12",
      "short" : "GetObservations 1.2",
      "definition" : "Logisk modell för version 1.2 av tjänstekontraktet GetObservations\n(urn:riv:clinicalprocess:healthcond:basic:GetObservationsResponder:1).\nMappningen utgår från versionen i SEEHDSLMObservations. Skillnaderna mot den och hur de\npåverkar mappningen beskrivs på tjänstekontraktets mappningssida."
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup",
      "path" : "SEEHDSLMObservationsV12.observationGroup",
      "short" : "Grupp av observationer som delar samma patient, utförare (m",
      "definition" : "Grupp av observationer som delar samma patient, utförare (m. tillhörande organisatorisk knytning), signerare, ytterligare deltagare, källsystem, vårdprocess-id, utrustning, samt plats. Denna nivå är framförallt till för att kunna begränsa mängden redundant data i överföringen i de fall då flera observationer gjorts med samma medverkande (exempelvis mätning av systoliskt och diastoliskt blodtryck). Denna klass är en teknisk optimering som inte speglas i NI 2015:1.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.patient",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.patient",
      "short" : "Den patient som observationsgruppen avser",
      "definition" : "Den patient som observationsgruppen avser.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.patient.rivId",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/xml-name",
        "valueString" : "id"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.patient.rivId",
      "short" : "rivId",
      "definition" : "rivId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivIITypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.patient.name",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.patient.name",
      "short" : "name",
      "definition" : "name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.patient.dateOfBirth",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.patient.dateOfBirth",
      "short" : "dateOfBirth",
      "definition" : "Format enligt XSD (DateType): ÅÅÅÅMMDD.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivDate"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.patient.gender",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.patient.gender",
      "short" : "gender",
      "definition" : "gender",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivCVTypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.performerRole",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.performerRole",
      "short" : "Den som utfört observationerna inom gruppen",
      "definition" : "Den som utfört observationerna inom gruppen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.performerRole.rivId",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/xml-name",
        "valueString" : "id"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.performerRole.rivId",
      "short" : "rivId",
      "definition" : "rivId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivIITypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.performerRole.code",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.performerRole.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivCVTypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.performerRole.person",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.performerRole.person",
      "short" : "person",
      "definition" : "person",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.performerRole.person.rivId",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/xml-name",
        "valueString" : "id"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.performerRole.person.rivId",
      "short" : "rivId",
      "definition" : "rivId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivIITypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.performerRole.person.name",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.performerRole.person.name",
      "short" : "name",
      "definition" : "name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.performerRole.careUnit",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.performerRole.careUnit",
      "short" : "careUnit",
      "definition" : "careUnit",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.performerRole.careUnit.rivId",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/xml-name",
        "valueString" : "id"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.performerRole.careUnit.rivId",
      "short" : "rivId",
      "definition" : "rivId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivIITypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.performerRole.careUnit.name",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.performerRole.careUnit.name",
      "short" : "name",
      "definition" : "name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.performerRole.careUnit.careGiver",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.performerRole.careUnit.careGiver",
      "short" : "careGiver",
      "definition" : "careGiver",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.performerRole.careUnit.careGiver.rivId",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/xml-name",
        "valueString" : "id"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.performerRole.careUnit.careGiver.rivId",
      "short" : "rivId",
      "definition" : "rivId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivIITypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.performerRole.careUnit.careGiver.name",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.performerRole.careUnit.careGiver.name",
      "short" : "name",
      "definition" : "name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.legalAuthenticator",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.legalAuthenticator",
      "short" : "Den som signerat observationerna inom gruppen",
      "definition" : "Den som signerat observationerna inom gruppen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.legalAuthenticator.rivId",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/xml-name",
        "valueString" : "id"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.legalAuthenticator.rivId",
      "short" : "rivId",
      "definition" : "rivId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivIITypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.legalAuthenticator.time",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.legalAuthenticator.time",
      "short" : "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss",
      "definition" : "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPartialTimeStampTypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.legalAuthenticator.name",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.legalAuthenticator.name",
      "short" : "name",
      "definition" : "name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant",
      "short" : "Övriga deltagare relaterat till observationerna inom gruppen",
      "definition" : "Övriga deltagare relaterat till observationerna inom gruppen.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.rivId",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/xml-name",
        "valueString" : "id"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.rivId",
      "short" : "rivId",
      "definition" : "rivId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivIITypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.type",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.type",
      "short" : "type",
      "definition" : "type",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivCVTypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.role",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.role",
      "short" : "role",
      "definition" : "role",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivCVTypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.time",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.time",
      "short" : "Används för att specificera ett datumintervall med hjälp av start- och slutdatum",
      "definition" : "Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet YYYYMMDDhhmmss end: Slutdatum på formatet YYYYMMDDhhmmss",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivTimePeriodTypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.person",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.person",
      "short" : "person",
      "definition" : "person",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.person.rivId",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/xml-name",
        "valueString" : "id"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.person.rivId",
      "short" : "rivId",
      "definition" : "rivId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivIITypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.person.name",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.person.name",
      "short" : "name",
      "definition" : "name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.organisation",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.organisation",
      "short" : "organisation",
      "definition" : "organisation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.organisation.rivId",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/xml-name",
        "valueString" : "id"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.organisation.rivId",
      "short" : "rivId",
      "definition" : "rivId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivIITypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.organisation.name",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.organisation.name",
      "short" : "name",
      "definition" : "name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.device",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.device",
      "short" : "device",
      "definition" : "device",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.device.rivId",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/xml-name",
        "valueString" : "id"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.device.rivId",
      "short" : "rivId",
      "definition" : "rivId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivIITypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.device.type",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.device.type",
      "short" : "type",
      "definition" : "type",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivCVTypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.device.model",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.device.model",
      "short" : "model",
      "definition" : "model",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.device.model.code",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.device.model.code",
      "short" : "code",
      "definition" : "code",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivCVTypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.device.model.value",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.device.model.value",
      "short" : "value",
      "definition" : "value",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.location",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.location",
      "short" : "location",
      "definition" : "location",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.location.rivId",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/xml-name",
        "valueString" : "id"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.location.rivId",
      "short" : "rivId",
      "definition" : "rivId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivIITypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.location.name",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.location.name",
      "short" : "name",
      "definition" : "name",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.location.address",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.location.address",
      "short" : "address",
      "definition" : "address",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.location.address.use",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.location.address.use",
      "short" : "use",
      "definition" : "Tillåtna värden enligt XSD: PHYS, H, HV, WP, TMP.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.location.address.part",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.location.address.part",
      "short" : "part",
      "definition" : "part",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.location.address.part.value",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.location.address.part.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.location.address.part.type",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.location.address.part.type",
      "short" : "type",
      "definition" : "Tillåtna värden enligt XSD: SAL, CAR, CEN, CNT, CPA, CTY, POB, ZIP, PRE, STA.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.location.electronicAddress",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.location.electronicAddress",
      "short" : "electronicAddress",
      "definition" : "electronicAddress",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.location.electronicAddress.use",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.location.electronicAddress.use",
      "short" : "use",
      "definition" : "Tillåtna värden enligt XSD: voice, fax, data, sms.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.location.electronicAddress.value",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.additionalParticipant.location.electronicAddress.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.sourceSystem",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.sourceSystem",
      "short" : "Källsystem som observationsgruppen lagras i",
      "definition" : "Källsystem som observationsgruppen lagras i.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.sourceSystem.rivId",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/xml-name",
        "valueString" : "id"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.sourceSystem.rivId",
      "short" : "rivId",
      "definition" : "rivId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivIITypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation",
      "short" : "De observationer som ligger inom denna grupp av observationer",
      "definition" : "De observationer som ligger inom denna grupp av observationer.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.rivId",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/xml-name",
        "valueString" : "id"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.rivId",
      "short" : "rivId",
      "definition" : "rivId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivIITypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.type",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.type",
      "short" : "type",
      "definition" : "type",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivCVTypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.status",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.status",
      "short" : "status",
      "definition" : "status",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivCVTypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.time",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.time",
      "short" : "Används för att specificera ett datumintervall med hjälp av start- och slutdatum",
      "definition" : "Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet YYYYMMDDhhmmss end: Slutdatum på formatet YYYYMMDDhhmmss",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.time.start",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.time.start",
      "short" : "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss",
      "definition" : "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPartialTimeStampTypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.time.end",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.time.end",
      "short" : "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss",
      "definition" : "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPartialTimeStampTypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.method",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.method",
      "short" : "method",
      "definition" : "method",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivCVTypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.value",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.value",
      "short" : "value",
      "definition" : "value",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.value.pq",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.value.pq",
      "short" : "pq",
      "definition" : "pq",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPQTypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.value.ts",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.value.ts",
      "short" : "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss",
      "definition" : "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPartialTimeStampTypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.value.ivlTs",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/xml-name",
        "valueString" : "ivl_ts"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.value.ivlTs",
      "short" : "Används för att specificera ett datumintervall med hjälp av start- och slutdatum",
      "definition" : "Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet YYYYMMDDhhmmss end: Slutdatum på formatet YYYYMMDDhhmmss",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.value.ivlTs.start",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.value.ivlTs.start",
      "short" : "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss",
      "definition" : "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPartialTimeStampTypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.value.ivlTs.end",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.value.ivlTs.end",
      "short" : "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss",
      "definition" : "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPartialTimeStampTypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.value.cv",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.value.cv",
      "short" : "cv",
      "definition" : "cv",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivCVTypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.value.ivlPq",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1.2"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/xml-name",
        "valueString" : "ivl_pq"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.value.ivlPq",
      "short" : "ivlPq",
      "definition" : "ivlPq",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPQIntervalTypeHealthcondBasic12"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.targetSite",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.targetSite",
      "short" : "targetSite",
      "definition" : "targetSite",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivCVTypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.valueNegation",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.valueNegation",
      "short" : "valueNegation",
      "definition" : "valueNegation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivBoolean"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.description",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.description",
      "short" : "description",
      "definition" : "description",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.approvedForPatient",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.approvedForPatient",
      "short" : "approvedForPatient",
      "definition" : "approvedForPatient",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivBoolean"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.registrationTime",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.registrationTime",
      "short" : "registrationTime",
      "definition" : "Format enligt XSD (TimeStampType): ÅÅÅÅMMDDttmmss.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivTimeStamp"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.relation",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.relation",
      "short" : "relation",
      "definition" : "relation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.relation.code",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.relation.code",
      "short" : "code",
      "definition" : "code",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivCVTypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.relation.referredInformation",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.relation.referredInformation",
      "short" : "referredInformation",
      "definition" : "referredInformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.relation.referredInformation.rivId",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/xml-name",
        "valueString" : "id"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.relation.referredInformation.rivId",
      "short" : "rivId",
      "definition" : "rivId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivIITypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.relation.referredInformation.time",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.relation.referredInformation.time",
      "short" : "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss",
      "definition" : "YYYY, YYYYMM, YYYYMMDD, YYYYMMDDhh, YYYYMMDDhhmm, YYYYMMDDhhmmss",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPartialTimeStampTypeHealthcondBasic1"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.relation.referredInformation.type",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.relation.referredInformation.type",
      "short" : "type",
      "definition" : "type",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.relation.referredInformation.informationOwner",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.relation.referredInformation.informationOwner",
      "short" : "informationOwner",
      "definition" : "informationOwner",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMObservationsV12.observationGroup.observation.relation.referredInformation.informationOwner.rivId",
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
        "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/xml-name",
        "valueString" : "id"
      }],
      "path" : "SEEHDSLMObservationsV12.observationGroup.observation.relation.referredInformation.informationOwner.rivId",
      "short" : "rivId",
      "definition" : "rivId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivIITypeHealthcondBasic1"
      }]
    }]
  }
}

```
