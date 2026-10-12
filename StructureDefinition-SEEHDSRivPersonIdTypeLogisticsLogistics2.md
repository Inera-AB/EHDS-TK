# RIV-TA PersonIdType (clinicalprocess:logistics:logistics:2) - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RIV-TA PersonIdType (clinicalprocess:logistics:logistics:2)**

## Logical Model: RIV-TA PersonIdType (clinicalprocess:logistics:logistics:2) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPersonIdTypeLogisticsLogistics2 | *Version*:0.5.0 |
| Draft as of 2026-10-12 | *Computable Name*:SEEHDSRivPersonIdTypeLogisticsLogistics2 |

 
RIV-TA-datatypen PersonIdType i namnrymden urn:riv:clinicalprocess:logistics:logistics:2. 

**Användningar:**

* Använd denna Logisk modell: [GetCareContacts 2.0](StructureDefinition-SEEHDSLMCareContactsV20.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSRivPersonIdTypeLogisticsLogistics2)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSRivPersonIdTypeLogisticsLogistics2.csv), [Excel](StructureDefinition-SEEHDSRivPersonIdTypeLogisticsLogistics2.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSRivPersonIdTypeLogisticsLogistics2",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
    "valueUri" : "urn:riv:clinicalprocess:logistics:logistics:2"
  }],
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPersonIdTypeLogisticsLogistics2",
  "version" : "0.5.0",
  "name" : "SEEHDSRivPersonIdTypeLogisticsLogistics2",
  "title" : "RIV-TA PersonIdType (clinicalprocess:logistics:logistics:2)",
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
  "description" : "RIV-TA-datatypen PersonIdType i namnrymden urn:riv:clinicalprocess:logistics:logistics:2.",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPersonIdTypeLogisticsLogistics2",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSRivPersonIdTypeLogisticsLogistics2",
      "path" : "SEEHDSRivPersonIdTypeLogisticsLogistics2",
      "short" : "RIV-TA PersonIdType (clinicalprocess:logistics:logistics:2)",
      "definition" : "RIV-TA-datatypen PersonIdType i namnrymden urn:riv:clinicalprocess:logistics:logistics:2."
    },
    {
      "id" : "SEEHDSRivPersonIdTypeLogisticsLogistics2.rivId",
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/xml-name",
        "valueString" : "id"
      }],
      "path" : "SEEHDSRivPersonIdTypeLogisticsLogistics2.rivId",
      "short" : "Personidentitet (12 tecken utan avskiljare)",
      "definition" : "Personidentitet (12 tecken utan avskiljare)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSRivPersonIdTypeLogisticsLogistics2.type",
      "path" : "SEEHDSRivPersonIdTypeLogisticsLogistics2.type",
      "short" : "OID för typ av personidentitet",
      "definition" : "OID för typ av personidentitet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    }]
  }
}

```
