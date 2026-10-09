# RIV-TA TimePeriodType (clinicalprocess:activityprescription:actoutcome:2) - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RIV-TA TimePeriodType (clinicalprocess:activityprescription:actoutcome:2)**

## Logical Model: RIV-TA TimePeriodType (clinicalprocess:activityprescription:actoutcome:2) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivTimePeriodTypeActivityprescriptionActoutcome2 | *Version*:0.3.3 |
| Draft as of 2026-10-09 | *Computable Name*:SEEHDSRivTimePeriodTypeActivityprescriptionActoutcome2 |

 
RIV-TA-datatypen TimePeriodType i namnrymden urn:riv:clinicalprocess:activityprescription:actoutcome:2. 

**Användningar:**

* Använd denna Logisk modell: [GetMedicationHistory](StructureDefinition-SEEHDSLMMedicationHistory.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSRivTimePeriodTypeActivityprescriptionActoutcome2)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSRivTimePeriodTypeActivityprescriptionActoutcome2.csv), [Excel](StructureDefinition-SEEHDSRivTimePeriodTypeActivityprescriptionActoutcome2.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSRivTimePeriodTypeActivityprescriptionActoutcome2",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
    "valueUri" : "urn:riv:clinicalprocess:activityprescription:actoutcome:2"
  }],
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivTimePeriodTypeActivityprescriptionActoutcome2",
  "version" : "0.3.3",
  "name" : "SEEHDSRivTimePeriodTypeActivityprescriptionActoutcome2",
  "title" : "RIV-TA TimePeriodType (clinicalprocess:activityprescription:actoutcome:2)",
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
  "description" : "RIV-TA-datatypen TimePeriodType i namnrymden urn:riv:clinicalprocess:activityprescription:actoutcome:2.",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivTimePeriodTypeActivityprescriptionActoutcome2",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSRivTimePeriodTypeActivityprescriptionActoutcome2",
      "path" : "SEEHDSRivTimePeriodTypeActivityprescriptionActoutcome2",
      "short" : "RIV-TA TimePeriodType (clinicalprocess:activityprescription:actoutcome:2)",
      "definition" : "RIV-TA-datatypen TimePeriodType i namnrymden urn:riv:clinicalprocess:activityprescription:actoutcome:2."
    },
    {
      "id" : "SEEHDSRivTimePeriodTypeActivityprescriptionActoutcome2.start",
      "path" : "SEEHDSRivTimePeriodTypeActivityprescriptionActoutcome2.start",
      "short" : "Starttidpunkt",
      "definition" : "Starttidpunkt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivTimeStamp"
      }]
    },
    {
      "id" : "SEEHDSRivTimePeriodTypeActivityprescriptionActoutcome2.end",
      "path" : "SEEHDSRivTimePeriodTypeActivityprescriptionActoutcome2.end",
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
