# RIV-TA PartialTimeStampType (clinicalprocess:healthcond:basic:1) - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RIV-TA PartialTimeStampType (clinicalprocess:healthcond:basic:1)**

## Logical Model: RIV-TA PartialTimeStampType (clinicalprocess:healthcond:basic:1) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPartialTimeStampTypeHealthcondBasic1 | *Version*:0.7.0 |
| Draft as of 2026-10-26 | *Computable Name*:SEEHDSRivPartialTimeStampTypeHealthcondBasic1 |

 
RIV-TA-datatypen PartialTimeStampType i namnrymden urn:riv:clinicalprocess:healthcond:basic:1. 

**Användningar:**

* Använd denna Logisk modell: [GetObservations 1.2](StructureDefinition-SEEHDSLMObservationsV12.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSRivPartialTimeStampTypeHealthcondBasic1)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSRivPartialTimeStampTypeHealthcondBasic1.csv), [Excel](StructureDefinition-SEEHDSRivPartialTimeStampTypeHealthcondBasic1.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSRivPartialTimeStampTypeHealthcondBasic1",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
    "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:1"
  }],
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPartialTimeStampTypeHealthcondBasic1",
  "version" : "0.7.0",
  "name" : "SEEHDSRivPartialTimeStampTypeHealthcondBasic1",
  "title" : "RIV-TA PartialTimeStampType (clinicalprocess:healthcond:basic:1)",
  "status" : "draft",
  "date" : "2026-10-26T15:58:30+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "RIV-TA-datatypen PartialTimeStampType i namnrymden urn:riv:clinicalprocess:healthcond:basic:1.",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPartialTimeStampTypeHealthcondBasic1",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSRivPartialTimeStampTypeHealthcondBasic1",
      "path" : "SEEHDSRivPartialTimeStampTypeHealthcondBasic1",
      "short" : "RIV-TA PartialTimeStampType (clinicalprocess:healthcond:basic:1)",
      "definition" : "RIV-TA-datatypen PartialTimeStampType i namnrymden urn:riv:clinicalprocess:healthcond:basic:1."
    },
    {
      "id" : "SEEHDSRivPartialTimeStampTypeHealthcondBasic1.format",
      "path" : "SEEHDSRivPartialTimeStampTypeHealthcondBasic1.format",
      "short" : "Format för värdet",
      "definition" : "Format för värdet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSRivPartialTimeStampTypeHealthcondBasic1.value",
      "path" : "SEEHDSRivPartialTimeStampTypeHealthcondBasic1.value",
      "short" : "Värde",
      "definition" : "Värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    }]
  }
}

```
