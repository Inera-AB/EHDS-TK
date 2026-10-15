# RIV-TA DateType - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RIV-TA DateType**

## Logical Model: RIV-TA DateType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivDate | *Version*:0.6.0 |
| Draft as of 2026-10-15 | *Computable Name*:SEEHDSRivDate |

 
Datum i formatet ÅÅÅÅMMDD. Elementets värde ligger som textinnehåll i XML-elementet (representation xmlText). 

**Användningar:**

* Använd denna Logisk modell: [GetAlertInformation](StructureDefinition-SEEHDSLMAlertInformation.md), [GetMaternityMedicalHistory](StructureDefinition-SEEHDSLMMaternityMedicalHistory.md), [GetMedicationHistory](StructureDefinition-SEEHDSLMMedicationHistory.md), [GetObservations](StructureDefinition-SEEHDSLMObservations.md)... Show 3 more, [GetObservations 1.2](StructureDefinition-SEEHDSLMObservationsV12.md), [GetVaccinationHistory](StructureDefinition-SEEHDSLMVaccinationHistory.md) and [GetVaccinationHistory 1.0](StructureDefinition-SEEHDSLMVaccinationHistoryV10.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSRivDate)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSRivDate.csv), [Excel](StructureDefinition-SEEHDSRivDate.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSRivDate",
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivDate",
  "version" : "0.6.0",
  "name" : "SEEHDSRivDate",
  "title" : "RIV-TA DateType",
  "status" : "draft",
  "date" : "2026-10-15T18:03:33+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Datum i formatet ÅÅÅÅMMDD. Elementets värde ligger som textinnehåll i XML-elementet (representation xmlText).",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivDate",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSRivDate",
      "path" : "SEEHDSRivDate",
      "short" : "RIV-TA DateType",
      "definition" : "Datum i formatet ÅÅÅÅMMDD. Elementets värde ligger som textinnehåll i XML-elementet (representation xmlText)."
    },
    {
      "id" : "SEEHDSRivDate.value",
      "path" : "SEEHDSRivDate.value",
      "representation" : ["xmlText"],
      "short" : "Elementets textinnehåll",
      "definition" : "Elementets textinnehåll",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
