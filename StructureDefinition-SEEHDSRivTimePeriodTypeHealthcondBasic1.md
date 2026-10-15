# RIV-TA TimePeriodType (clinicalprocess:healthcond:basic:1) - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RIV-TA TimePeriodType (clinicalprocess:healthcond:basic:1)**

## Logical Model: RIV-TA TimePeriodType (clinicalprocess:healthcond:basic:1) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivTimePeriodTypeHealthcondBasic1 | *Version*:0.6.0 |
| Draft as of 2026-10-15 | *Computable Name*:SEEHDSRivTimePeriodTypeHealthcondBasic1 |

 
RIV-TA-datatypen TimePeriodType i namnrymden urn:riv:clinicalprocess:healthcond:basic:1. 

**Användningar:**

* Använd denna Logisk modell: [GetObservations 1.2](StructureDefinition-SEEHDSLMObservationsV12.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSRivTimePeriodTypeHealthcondBasic1)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSRivTimePeriodTypeHealthcondBasic1.csv), [Excel](StructureDefinition-SEEHDSRivTimePeriodTypeHealthcondBasic1.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSRivTimePeriodTypeHealthcondBasic1",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
    "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
  }],
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivTimePeriodTypeHealthcondBasic1",
  "version" : "0.6.0",
  "name" : "SEEHDSRivTimePeriodTypeHealthcondBasic1",
  "title" : "RIV-TA TimePeriodType (clinicalprocess:healthcond:basic:1)",
  "status" : "draft",
  "date" : "2026-10-15T18:03:33+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "RIV-TA-datatypen TimePeriodType i namnrymden urn:riv:clinicalprocess:healthcond:basic:1.",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivTimePeriodTypeHealthcondBasic1",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSRivTimePeriodTypeHealthcondBasic1",
      "path" : "SEEHDSRivTimePeriodTypeHealthcondBasic1",
      "short" : "RIV-TA TimePeriodType (clinicalprocess:healthcond:basic:1)",
      "definition" : "RIV-TA-datatypen TimePeriodType i namnrymden urn:riv:clinicalprocess:healthcond:basic:1."
    },
    {
      "id" : "SEEHDSRivTimePeriodTypeHealthcondBasic1.start",
      "path" : "SEEHDSRivTimePeriodTypeHealthcondBasic1.start",
      "short" : "Starttidpunkt",
      "definition" : "Starttidpunkt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivTimeStamp"
      }]
    },
    {
      "id" : "SEEHDSRivTimePeriodTypeHealthcondBasic1.end",
      "path" : "SEEHDSRivTimePeriodTypeHealthcondBasic1.end",
      "short" : "Sluttidpunkt",
      "definition" : "Sluttidpunkt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivTimeStamp"
      }]
    }]
  }
}

```
