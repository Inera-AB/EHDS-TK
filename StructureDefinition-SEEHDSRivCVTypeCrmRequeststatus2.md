# RIV-TA CVType (crm:requeststatus:2) - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RIV-TA CVType (crm:requeststatus:2)**

## Logical Model: RIV-TA CVType (crm:requeststatus:2) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivCVTypeCrmRequeststatus2 | *Version*:0.3.3 |
| Draft as of 2026-10-09 | *Computable Name*:SEEHDSRivCVTypeCrmRequeststatus2 |

 
RIV-TA-datatypen CVType i namnrymden urn:riv:crm:requeststatus:2. 

**Användningar:**

* Använd denna Logisk modell: [GetRequestActivities](StructureDefinition-SEEHDSLMRequestActivities.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSRivCVTypeCrmRequeststatus2)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSRivCVTypeCrmRequeststatus2.csv), [Excel](StructureDefinition-SEEHDSRivCVTypeCrmRequeststatus2.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSRivCVTypeCrmRequeststatus2",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
    "valueUri" : "urn:riv:crm:requeststatus:2"
  }],
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivCVTypeCrmRequeststatus2",
  "version" : "0.3.3",
  "name" : "SEEHDSRivCVTypeCrmRequeststatus2",
  "title" : "RIV-TA CVType (crm:requeststatus:2)",
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
  "description" : "RIV-TA-datatypen CVType i namnrymden urn:riv:crm:requeststatus:2.",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivCVTypeCrmRequeststatus2",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSRivCVTypeCrmRequeststatus2",
      "path" : "SEEHDSRivCVTypeCrmRequeststatus2",
      "short" : "RIV-TA CVType (crm:requeststatus:2)",
      "definition" : "RIV-TA-datatypen CVType i namnrymden urn:riv:crm:requeststatus:2."
    },
    {
      "id" : "SEEHDSRivCVTypeCrmRequeststatus2.code",
      "path" : "SEEHDSRivCVTypeCrmRequeststatus2.code",
      "short" : "Kod",
      "definition" : "Kod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSRivCVTypeCrmRequeststatus2.codeSystem",
      "path" : "SEEHDSRivCVTypeCrmRequeststatus2.codeSystem",
      "short" : "OID för kodsystem",
      "definition" : "OID för kodsystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSRivCVTypeCrmRequeststatus2.codeSystemName",
      "path" : "SEEHDSRivCVTypeCrmRequeststatus2.codeSystemName",
      "short" : "Kodsystemets namn",
      "definition" : "Kodsystemets namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSRivCVTypeCrmRequeststatus2.codeSystemVersion",
      "path" : "SEEHDSRivCVTypeCrmRequeststatus2.codeSystemVersion",
      "short" : "Kodsystemets version",
      "definition" : "Kodsystemets version",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSRivCVTypeCrmRequeststatus2.displayName",
      "path" : "SEEHDSRivCVTypeCrmRequeststatus2.displayName",
      "short" : "Kodens klartext",
      "definition" : "Kodens klartext",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSRivCVTypeCrmRequeststatus2.originalText",
      "path" : "SEEHDSRivCVTypeCrmRequeststatus2.originalText",
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
