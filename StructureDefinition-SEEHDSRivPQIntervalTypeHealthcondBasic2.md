# RIV-TA PQIntervalType (clinicalprocess:healthcond:basic:2) - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RIV-TA PQIntervalType (clinicalprocess:healthcond:basic:2)**

## Logical Model: RIV-TA PQIntervalType (clinicalprocess:healthcond:basic:2) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPQIntervalTypeHealthcondBasic2 | *Version*:0.3.3 |
| Draft as of 2026-10-09 | *Computable Name*:SEEHDSRivPQIntervalTypeHealthcondBasic2 |

 
RIV-TA-datatypen PQIntervalType i namnrymden urn:riv:clinicalprocess:healthcond:basic:2. 

**Användningar:**

* Använd denna Logisk modell: [GetObservations](StructureDefinition-SEEHDSLMObservations.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSRivPQIntervalTypeHealthcondBasic2)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSRivPQIntervalTypeHealthcondBasic2.csv), [Excel](StructureDefinition-SEEHDSRivPQIntervalTypeHealthcondBasic2.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSRivPQIntervalTypeHealthcondBasic2",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
    "valueUri" : "urn:riv:clinicalprocess:healthcond:basic:2"
  }],
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPQIntervalTypeHealthcondBasic2",
  "version" : "0.3.3",
  "name" : "SEEHDSRivPQIntervalTypeHealthcondBasic2",
  "title" : "RIV-TA PQIntervalType (clinicalprocess:healthcond:basic:2)",
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
  "description" : "RIV-TA-datatypen PQIntervalType i namnrymden urn:riv:clinicalprocess:healthcond:basic:2.",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivPQIntervalTypeHealthcondBasic2",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSRivPQIntervalTypeHealthcondBasic2",
      "path" : "SEEHDSRivPQIntervalTypeHealthcondBasic2",
      "short" : "RIV-TA PQIntervalType (clinicalprocess:healthcond:basic:2)",
      "definition" : "RIV-TA-datatypen PQIntervalType i namnrymden urn:riv:clinicalprocess:healthcond:basic:2."
    },
    {
      "id" : "SEEHDSRivPQIntervalTypeHealthcondBasic2.low",
      "path" : "SEEHDSRivPQIntervalTypeHealthcondBasic2.low",
      "short" : "Nedre gräns",
      "definition" : "Nedre gräns",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivDecimal"
      }]
    },
    {
      "id" : "SEEHDSRivPQIntervalTypeHealthcondBasic2.high",
      "path" : "SEEHDSRivPQIntervalTypeHealthcondBasic2.high",
      "short" : "Övre gräns",
      "definition" : "Övre gräns",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivDecimal"
      }]
    },
    {
      "id" : "SEEHDSRivPQIntervalTypeHealthcondBasic2.unit",
      "path" : "SEEHDSRivPQIntervalTypeHealthcondBasic2.unit",
      "short" : "Enhet",
      "definition" : "Enhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    }]
  }
}

```
