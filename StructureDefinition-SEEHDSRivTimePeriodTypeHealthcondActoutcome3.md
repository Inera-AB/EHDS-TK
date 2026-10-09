# RIV-TA TimePeriodType (clinicalprocess:healthcond:actoutcome:3) - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RIV-TA TimePeriodType (clinicalprocess:healthcond:actoutcome:3)**

## Logical Model: RIV-TA TimePeriodType (clinicalprocess:healthcond:actoutcome:3) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivTimePeriodTypeHealthcondActoutcome3 | *Version*:0.3.3 |
| Draft as of 2026-10-09 | *Computable Name*:SEEHDSRivTimePeriodTypeHealthcondActoutcome3 |

 
RIV-TA-datatypen TimePeriodType i namnrymden urn:riv:clinicalprocess:healthcond:actoutcome:3. 

**Användningar:**

* Använd denna Logisk modell: [GetImagingOutcome](StructureDefinition-SEEHDSLMImagingOutcome.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSRivTimePeriodTypeHealthcondActoutcome3)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSRivTimePeriodTypeHealthcondActoutcome3.csv), [Excel](StructureDefinition-SEEHDSRivTimePeriodTypeHealthcondActoutcome3.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSRivTimePeriodTypeHealthcondActoutcome3",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
    "valueUri" : "urn:riv:clinicalprocess:healthcond:actoutcome:3"
  }],
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivTimePeriodTypeHealthcondActoutcome3",
  "version" : "0.3.3",
  "name" : "SEEHDSRivTimePeriodTypeHealthcondActoutcome3",
  "title" : "RIV-TA TimePeriodType (clinicalprocess:healthcond:actoutcome:3)",
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
  "description" : "RIV-TA-datatypen TimePeriodType i namnrymden urn:riv:clinicalprocess:healthcond:actoutcome:3.",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivTimePeriodTypeHealthcondActoutcome3",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSRivTimePeriodTypeHealthcondActoutcome3",
      "path" : "SEEHDSRivTimePeriodTypeHealthcondActoutcome3",
      "short" : "RIV-TA TimePeriodType (clinicalprocess:healthcond:actoutcome:3)",
      "definition" : "RIV-TA-datatypen TimePeriodType i namnrymden urn:riv:clinicalprocess:healthcond:actoutcome:3."
    },
    {
      "id" : "SEEHDSRivTimePeriodTypeHealthcondActoutcome3.start",
      "path" : "SEEHDSRivTimePeriodTypeHealthcondActoutcome3.start",
      "short" : "Starttidpunkt",
      "definition" : "Starttidpunkt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivTimeStamp"
      }]
    },
    {
      "id" : "SEEHDSRivTimePeriodTypeHealthcondActoutcome3.end",
      "path" : "SEEHDSRivTimePeriodTypeHealthcondActoutcome3.end",
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
