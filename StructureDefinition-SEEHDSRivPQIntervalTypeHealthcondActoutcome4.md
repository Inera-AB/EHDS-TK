# RIV-TA PQIntervalType (clinicalprocess:healthcond:actoutcome:4) - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RIV-TA PQIntervalType (clinicalprocess:healthcond:actoutcome:4)**

## Logical Model: RIV-TA PQIntervalType (clinicalprocess:healthcond:actoutcome:4) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPQIntervalTypeHealthcondActoutcome4 | *Version*:0.3.3 |
| Draft as of 2026-10-09 | *Computable Name*:SEEHDSRivPQIntervalTypeHealthcondActoutcome4 |

 
RIV-TA-datatypen PQIntervalType i namnrymden urn:riv:clinicalprocess:healthcond:actoutcome:4. 

**Användningar:**

* Använd denna Logisk modell: [GetLaboratoryOrderOutcome](StructureDefinition-SEEHDSLMLaboratoryOrderOutcome.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSRivPQIntervalTypeHealthcondActoutcome4)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSRivPQIntervalTypeHealthcondActoutcome4.csv), [Excel](StructureDefinition-SEEHDSRivPQIntervalTypeHealthcondActoutcome4.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSRivPQIntervalTypeHealthcondActoutcome4",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
    "valueUri" : "urn:riv:clinicalprocess:healthcond:actoutcome:4"
  }],
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPQIntervalTypeHealthcondActoutcome4",
  "version" : "0.3.3",
  "name" : "SEEHDSRivPQIntervalTypeHealthcondActoutcome4",
  "title" : "RIV-TA PQIntervalType (clinicalprocess:healthcond:actoutcome:4)",
  "status" : "draft",
  "date" : "2026-10-09T07:52:45+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "RIV-TA-datatypen PQIntervalType i namnrymden urn:riv:clinicalprocess:healthcond:actoutcome:4.",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPQIntervalTypeHealthcondActoutcome4",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSRivPQIntervalTypeHealthcondActoutcome4",
      "path" : "SEEHDSRivPQIntervalTypeHealthcondActoutcome4",
      "short" : "RIV-TA PQIntervalType (clinicalprocess:healthcond:actoutcome:4)",
      "definition" : "RIV-TA-datatypen PQIntervalType i namnrymden urn:riv:clinicalprocess:healthcond:actoutcome:4."
    },
    {
      "id" : "SEEHDSRivPQIntervalTypeHealthcondActoutcome4.low",
      "path" : "SEEHDSRivPQIntervalTypeHealthcondActoutcome4.low",
      "short" : "Nedre gräns",
      "definition" : "Nedre gräns",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSRivPQIntervalTypeHealthcondActoutcome4.lowClosed",
      "path" : "SEEHDSRivPQIntervalTypeHealthcondActoutcome4.lowClosed",
      "short" : "Nedre gräns inkluderad",
      "definition" : "Nedre gräns inkluderad",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivBoolean"
      }]
    },
    {
      "id" : "SEEHDSRivPQIntervalTypeHealthcondActoutcome4.high",
      "path" : "SEEHDSRivPQIntervalTypeHealthcondActoutcome4.high",
      "short" : "Övre gräns",
      "definition" : "Övre gräns",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSRivPQIntervalTypeHealthcondActoutcome4.highClosed",
      "path" : "SEEHDSRivPQIntervalTypeHealthcondActoutcome4.highClosed",
      "short" : "Övre gräns inkluderad",
      "definition" : "Övre gräns inkluderad",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivBoolean"
      }]
    },
    {
      "id" : "SEEHDSRivPQIntervalTypeHealthcondActoutcome4.unit",
      "path" : "SEEHDSRivPQIntervalTypeHealthcondActoutcome4.unit",
      "short" : "Enhet",
      "definition" : "Enhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    }]
  }
}

```
