# RIV-TA xs:boolean - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RIV-TA xs:boolean**

## Logical Model: RIV-TA xs:boolean 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivBoolean | *Version*:0.3.3 |
| Draft as of 2026-10-09 | *Computable Name*:SEEHDSRivBoolean |

 
Sanningsvärde (true/false). Elementets värde ligger som textinnehåll i XML-elementet (representation xmlText). 

**Användningar:**

* Använd denna Logisk modell: [GetAlertInformation](StructureDefinition-SEEHDSLMAlertInformation.md), [GetCareContacts](StructureDefinition-SEEHDSLMCareContacts.md), [GetCareDocumentation](StructureDefinition-SEEHDSLMCareDocumentation.md), [GetCarePlans](StructureDefinition-SEEHDSLMCarePlans.md)... Show 11 more, [GetDiagnosis](StructureDefinition-SEEHDSLMDiagnosis.md), [GetFunctionalStatus](StructureDefinition-SEEHDSLMFunctionalStatus.md), [GetImagingOutcome](StructureDefinition-SEEHDSLMImagingOutcome.md), [GetLaboratoryOrderOutcome](StructureDefinition-SEEHDSLMLaboratoryOrderOutcome.md), [GetMaternityMedicalHistory](StructureDefinition-SEEHDSLMMaternityMedicalHistory.md), [GetMedicationHistory](StructureDefinition-SEEHDSLMMedicationHistory.md), [GetObservations](StructureDefinition-SEEHDSLMObservations.md), [GetReferralOutcome](StructureDefinition-SEEHDSLMReferralOutcome.md), [GetRequestActivities](StructureDefinition-SEEHDSLMRequestActivities.md), [GetVaccinationHistory](StructureDefinition-SEEHDSLMVaccinationHistory.md) and [RIV-TA PQIntervalType (clinicalprocess:healthcond:actoutcome:4)](StructureDefinition-SEEHDSRivPQIntervalTypeHealthcondActoutcome4.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSRivBoolean)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSRivBoolean.csv), [Excel](StructureDefinition-SEEHDSRivBoolean.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSRivBoolean",
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivBoolean",
  "version" : "0.3.3",
  "name" : "SEEHDSRivBoolean",
  "title" : "RIV-TA xs:boolean",
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
  "description" : "Sanningsvärde (true/false). Elementets värde ligger som textinnehåll i XML-elementet (representation xmlText).",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivBoolean",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSRivBoolean",
      "path" : "SEEHDSRivBoolean",
      "short" : "RIV-TA xs:boolean",
      "definition" : "Sanningsvärde (true/false). Elementets värde ligger som textinnehåll i XML-elementet (representation xmlText)."
    },
    {
      "id" : "SEEHDSRivBoolean.value",
      "path" : "SEEHDSRivBoolean.value",
      "representation" : ["xmlText"],
      "short" : "Elementets textinnehåll",
      "definition" : "Elementets textinnehåll",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
