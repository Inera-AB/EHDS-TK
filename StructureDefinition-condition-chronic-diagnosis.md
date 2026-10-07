# Kronisk diagnos - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Kronisk diagnos**

## Extension: Kronisk diagnos 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/condition-chronic-diagnosis | *Version*:0.3.3 |
| Draft as of 2026-10-07 | *Computable Name*:ConditionChronicDiagnosis |

Anger om diagnosen är kronisk (true) eller inte kronisk (false) (diagnosisBody.chronicDiagnosis). Se DIAG-001.

**Context of Use**

**Usage info**

**Användningar:**

* Använd denna Extension: [SE EHDS Condition – Diagnos (GetDiagnosis)](StructureDefinition-SEEHDSConditionDiagnosis.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/condition-chronic-diagnosis)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-condition-chronic-diagnosis.csv), [Excel](StructureDefinition-condition-chronic-diagnosis.xlsx), [Schematron](StructureDefinition-condition-chronic-diagnosis.sch) 

#### Begränsningar



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "condition-chronic-diagnosis",
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/condition-chronic-diagnosis",
  "version" : "0.3.3",
  "name" : "ConditionChronicDiagnosis",
  "title" : "Kronisk diagnos",
  "status" : "draft",
  "date" : "2026-10-07T11:41:58+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Anger om diagnosen är kronisk (true) eller inte kronisk (false) (diagnosisBody.chronicDiagnosis). Se DIAG-001.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Condition"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Kronisk diagnos",
      "definition" : "Anger om diagnosen är kronisk (true) eller inte kronisk (false) (diagnosisBody.chronicDiagnosis). Se DIAG-001."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/condition-chronic-diagnosis"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
