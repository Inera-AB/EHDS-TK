# RIV-TA CVType (clinicalprocess:logistics:logistics:3) - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RIV-TA CVType (clinicalprocess:logistics:logistics:3)**

## Logical Model: RIV-TA CVType (clinicalprocess:logistics:logistics:3) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivCVTypeLogisticsLogistics3 | *Version*:0.3.3 |
| Draft as of 2026-10-09 | *Computable Name*:SEEHDSRivCVTypeLogisticsLogistics3 |

 
RIV-TA-datatypen CVType i namnrymden urn:riv:clinicalprocess:logistics:logistics:3. 

**Användningar:**

* Använd denna Logisk modell: [GetCareContacts](StructureDefinition-SEEHDSLMCareContacts.md) and [GetCarePlans](StructureDefinition-SEEHDSLMCarePlans.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSRivCVTypeLogisticsLogistics3)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSRivCVTypeLogisticsLogistics3.csv), [Excel](StructureDefinition-SEEHDSRivCVTypeLogisticsLogistics3.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSRivCVTypeLogisticsLogistics3",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
    "valueUri" : "urn:riv:clinicalprocess:logistics:logistics:3"
  }],
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivCVTypeLogisticsLogistics3",
  "version" : "0.3.3",
  "name" : "SEEHDSRivCVTypeLogisticsLogistics3",
  "title" : "RIV-TA CVType (clinicalprocess:logistics:logistics:3)",
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
  "description" : "RIV-TA-datatypen CVType i namnrymden urn:riv:clinicalprocess:logistics:logistics:3.",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivCVTypeLogisticsLogistics3",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSRivCVTypeLogisticsLogistics3",
      "path" : "SEEHDSRivCVTypeLogisticsLogistics3",
      "short" : "RIV-TA CVType (clinicalprocess:logistics:logistics:3)",
      "definition" : "RIV-TA-datatypen CVType i namnrymden urn:riv:clinicalprocess:logistics:logistics:3."
    },
    {
      "id" : "SEEHDSRivCVTypeLogisticsLogistics3.code",
      "path" : "SEEHDSRivCVTypeLogisticsLogistics3.code",
      "short" : "Kod",
      "definition" : "Kod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSRivCVTypeLogisticsLogistics3.codeSystem",
      "path" : "SEEHDSRivCVTypeLogisticsLogistics3.codeSystem",
      "short" : "OID för kodsystem",
      "definition" : "OID för kodsystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSRivCVTypeLogisticsLogistics3.codeSystemName",
      "path" : "SEEHDSRivCVTypeLogisticsLogistics3.codeSystemName",
      "short" : "Kodsystemets namn",
      "definition" : "Kodsystemets namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSRivCVTypeLogisticsLogistics3.codeSystemVersion",
      "path" : "SEEHDSRivCVTypeLogisticsLogistics3.codeSystemVersion",
      "short" : "Kodsystemets version",
      "definition" : "Kodsystemets version",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSRivCVTypeLogisticsLogistics3.displayName",
      "path" : "SEEHDSRivCVTypeLogisticsLogistics3.displayName",
      "short" : "Kodens klartext",
      "definition" : "Kodens klartext",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSRivCVTypeLogisticsLogistics3.originalText",
      "path" : "SEEHDSRivCVTypeLogisticsLogistics3.originalText",
      "short" : "Originaltext (om kod saknas eller som komplement)",
      "definition" : "Originaltext (om kod saknas eller som komplement)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    }]
  }
}

```
