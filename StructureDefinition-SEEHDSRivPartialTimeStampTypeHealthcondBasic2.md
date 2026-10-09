# RIV-TA PartialTimeStampType (clinicalprocess:healthcond:basic:2) - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RIV-TA PartialTimeStampType (clinicalprocess:healthcond:basic:2)**

## Logical Model: RIV-TA PartialTimeStampType (clinicalprocess:healthcond:basic:2) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPartialTimeStampTypeHealthcondBasic2 | *Version*:0.3.3 |
| Draft as of 2026-10-09 | *Computable Name*:SEEHDSRivPartialTimeStampTypeHealthcondBasic2 |

 
RIV-TA-datatypen PartialTimeStampType i namnrymden urn:riv:clinicalprocess:healthcond:basic:2. 

**Användningar:**

* Använd denna Logisk modell: [GetObservations](StructureDefinition-SEEHDSLMObservations.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSRivPartialTimeStampTypeHealthcondBasic2)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSRivPartialTimeStampTypeHealthcondBasic2.csv), [Excel](StructureDefinition-SEEHDSRivPartialTimeStampTypeHealthcondBasic2.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSRivPartialTimeStampTypeHealthcondBasic2",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
    "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:2"
  }],
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPartialTimeStampTypeHealthcondBasic2",
  "version" : "0.3.3",
  "name" : "SEEHDSRivPartialTimeStampTypeHealthcondBasic2",
  "title" : "RIV-TA PartialTimeStampType (clinicalprocess:healthcond:basic:2)",
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
  "description" : "RIV-TA-datatypen PartialTimeStampType i namnrymden urn:riv:clinicalprocess:healthcond:basic:2.",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPartialTimeStampTypeHealthcondBasic2",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSRivPartialTimeStampTypeHealthcondBasic2",
      "path" : "SEEHDSRivPartialTimeStampTypeHealthcondBasic2",
      "short" : "RIV-TA PartialTimeStampType (clinicalprocess:healthcond:basic:2)",
      "definition" : "RIV-TA-datatypen PartialTimeStampType i namnrymden urn:riv:clinicalprocess:healthcond:basic:2."
    },
    {
      "id" : "SEEHDSRivPartialTimeStampTypeHealthcondBasic2.format",
      "path" : "SEEHDSRivPartialTimeStampTypeHealthcondBasic2.format",
      "short" : "Format för värdet",
      "definition" : "Format för värdet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSRivPartialTimeStampTypeHealthcondBasic2.value",
      "path" : "SEEHDSRivPartialTimeStampTypeHealthcondBasic2.value",
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
