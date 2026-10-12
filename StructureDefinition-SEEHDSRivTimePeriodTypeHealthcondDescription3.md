# RIV-TA TimePeriodType (clinicalprocess:healthcond:description:3) - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RIV-TA TimePeriodType (clinicalprocess:healthcond:description:3)**

## Logical Model: RIV-TA TimePeriodType (clinicalprocess:healthcond:description:3) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivTimePeriodTypeHealthcondDescription3 | *Version*:0.5.0 |
| Draft as of 2026-10-12 | *Computable Name*:SEEHDSRivTimePeriodTypeHealthcondDescription3 |

 
RIV-TA-datatypen TimePeriodType i namnrymden urn:riv:clinicalprocess:healthcond:description:3. 

**Användningar:**

* Använd denna Logisk modell: [GetAlertInformation 3.0](StructureDefinition-SEEHDSLMAlertInformationV30.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSRivTimePeriodTypeHealthcondDescription3)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSRivTimePeriodTypeHealthcondDescription3.csv), [Excel](StructureDefinition-SEEHDSRivTimePeriodTypeHealthcondDescription3.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSRivTimePeriodTypeHealthcondDescription3",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
    "valueUri" : "urn:riv:clinicalprocess:healthcond:description:3"
  }],
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivTimePeriodTypeHealthcondDescription3",
  "version" : "0.5.0",
  "name" : "SEEHDSRivTimePeriodTypeHealthcondDescription3",
  "title" : "RIV-TA TimePeriodType (clinicalprocess:healthcond:description:3)",
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
  "description" : "RIV-TA-datatypen TimePeriodType i namnrymden urn:riv:clinicalprocess:healthcond:description:3.",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivTimePeriodTypeHealthcondDescription3",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSRivTimePeriodTypeHealthcondDescription3",
      "path" : "SEEHDSRivTimePeriodTypeHealthcondDescription3",
      "short" : "RIV-TA TimePeriodType (clinicalprocess:healthcond:description:3)",
      "definition" : "RIV-TA-datatypen TimePeriodType i namnrymden urn:riv:clinicalprocess:healthcond:description:3."
    },
    {
      "id" : "SEEHDSRivTimePeriodTypeHealthcondDescription3.start",
      "path" : "SEEHDSRivTimePeriodTypeHealthcondDescription3.start",
      "short" : "Starttidpunkt",
      "definition" : "Starttidpunkt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivTimeStamp"
      }]
    },
    {
      "id" : "SEEHDSRivTimePeriodTypeHealthcondDescription3.end",
      "path" : "SEEHDSRivTimePeriodTypeHealthcondDescription3.end",
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
