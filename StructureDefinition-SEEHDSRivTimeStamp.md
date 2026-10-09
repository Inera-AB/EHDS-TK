# RIV-TA TimeStampType - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RIV-TA TimeStampType**

## Logical Model: RIV-TA TimeStampType 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivTimeStamp | *Version*:0.3.3 |
| Draft as of 2026-10-09 | *Computable Name*:SEEHDSRivTimeStamp |

 
Tidpunkt i formatet ÅÅÅÅMMDDttmmss (lokal svensk tid utan tidszon). Konverteras till FHIR dateTime/instant med Europe/Stockholm, se GENERAL-001. Elementets värde ligger som textinnehåll i XML-elementet (representation xmlText). 

**Användningar:**

* Använd denna Logisk modell: [GetAlertInformation](StructureDefinition-SEEHDSLMAlertInformation.md), [GetCareContacts](StructureDefinition-SEEHDSLMCareContacts.md), [GetCareDocumentation](StructureDefinition-SEEHDSLMCareDocumentation.md), [GetCarePlans](StructureDefinition-SEEHDSLMCarePlans.md)... Show 15 more, [GetDiagnosis](StructureDefinition-SEEHDSLMDiagnosis.md), [GetFunctionalStatus](StructureDefinition-SEEHDSLMFunctionalStatus.md), [GetImagingOutcome](StructureDefinition-SEEHDSLMImagingOutcome.md), [GetLaboratoryOrderOutcome](StructureDefinition-SEEHDSLMLaboratoryOrderOutcome.md), [GetMaternityMedicalHistory](StructureDefinition-SEEHDSLMMaternityMedicalHistory.md), [GetMedicationHistory](StructureDefinition-SEEHDSLMMedicationHistory.md), [GetObservations](StructureDefinition-SEEHDSLMObservations.md), [GetReferralOutcome](StructureDefinition-SEEHDSLMReferralOutcome.md), [GetRequestActivities](StructureDefinition-SEEHDSLMRequestActivities.md), [GetVaccinationHistory](StructureDefinition-SEEHDSLMVaccinationHistory.md), [RIV-TA TimePeriodType (clinicalprocess:activityprescription:actoutcome:2)](StructureDefinition-SEEHDSRivTimePeriodTypeActivityprescriptionActoutcome2.md), [RIV-TA TimePeriodType (clinicalprocess:healthcond:actoutcome:3)](StructureDefinition-SEEHDSRivTimePeriodTypeHealthcondActoutcome3.md), [RIV-TA TimePeriodType (clinicalprocess:healthcond:actoutcome:4)](StructureDefinition-SEEHDSRivTimePeriodTypeHealthcondActoutcome4.md), [RIV-TA TimePeriodType (clinicalprocess:healthcond:description:2)](StructureDefinition-SEEHDSRivTimePeriodTypeHealthcondDescription2.md) and [RIV-TA TimePeriodType (clinicalprocess:logistics:logistics:3)](StructureDefinition-SEEHDSRivTimePeriodTypeLogisticsLogistics3.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSRivTimeStamp)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSRivTimeStamp.csv), [Excel](StructureDefinition-SEEHDSRivTimeStamp.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSRivTimeStamp",
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivTimeStamp",
  "version" : "0.3.3",
  "name" : "SEEHDSRivTimeStamp",
  "title" : "RIV-TA TimeStampType",
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
  "description" : "Tidpunkt i formatet ÅÅÅÅMMDDttmmss (lokal svensk tid utan tidszon). Konverteras till FHIR dateTime/instant med Europe/Stockholm, se GENERAL-001. Elementets värde ligger som textinnehåll i XML-elementet (representation xmlText).",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivTimeStamp",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSRivTimeStamp",
      "path" : "SEEHDSRivTimeStamp",
      "short" : "RIV-TA TimeStampType",
      "definition" : "Tidpunkt i formatet ÅÅÅÅMMDDttmmss (lokal svensk tid utan tidszon). Konverteras till FHIR dateTime/instant med Europe/Stockholm, se GENERAL-001. Elementets värde ligger som textinnehåll i XML-elementet (representation xmlText)."
    },
    {
      "id" : "SEEHDSRivTimeStamp.value",
      "path" : "SEEHDSRivTimeStamp.value",
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
