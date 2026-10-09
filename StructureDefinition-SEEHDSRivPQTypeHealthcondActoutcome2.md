# RIV-TA PQType (clinicalprocess:healthcond:actoutcome:2) - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RIV-TA PQType (clinicalprocess:healthcond:actoutcome:2)**

## Logical Model: RIV-TA PQType (clinicalprocess:healthcond:actoutcome:2) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPQTypeHealthcondActoutcome2 | *Version*:0.3.3 |
| Draft as of 2026-10-09 | *Computable Name*:SEEHDSRivPQTypeHealthcondActoutcome2 |

 
RIV-TA-datatypen PQType i namnrymden urn:riv:clinicalprocess:healthcond:actoutcome:2. 

**Användningar:**

* Använd denna Logisk modell: [GetMaternityMedicalHistory](StructureDefinition-SEEHDSLMMaternityMedicalHistory.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSRivPQTypeHealthcondActoutcome2)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSRivPQTypeHealthcondActoutcome2.csv), [Excel](StructureDefinition-SEEHDSRivPQTypeHealthcondActoutcome2.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSRivPQTypeHealthcondActoutcome2",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
    "valueUri" : "urn:riv:clinicalprocess:healthcond:actoutcome:2"
  }],
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPQTypeHealthcondActoutcome2",
  "version" : "0.3.3",
  "name" : "SEEHDSRivPQTypeHealthcondActoutcome2",
  "title" : "RIV-TA PQType (clinicalprocess:healthcond:actoutcome:2)",
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
  "description" : "RIV-TA-datatypen PQType i namnrymden urn:riv:clinicalprocess:healthcond:actoutcome:2.",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPQTypeHealthcondActoutcome2",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSRivPQTypeHealthcondActoutcome2",
      "path" : "SEEHDSRivPQTypeHealthcondActoutcome2",
      "short" : "RIV-TA PQType (clinicalprocess:healthcond:actoutcome:2)",
      "definition" : "RIV-TA-datatypen PQType i namnrymden urn:riv:clinicalprocess:healthcond:actoutcome:2."
    },
    {
      "id" : "SEEHDSRivPQTypeHealthcondActoutcome2.value",
      "path" : "SEEHDSRivPQTypeHealthcondActoutcome2.value",
      "short" : "Värde",
      "definition" : "Värde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivDecimal"
      }]
    },
    {
      "id" : "SEEHDSRivPQTypeHealthcondActoutcome2.unit",
      "path" : "SEEHDSRivPQTypeHealthcondActoutcome2.unit",
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
