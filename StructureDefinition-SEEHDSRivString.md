# RIV-TA text - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RIV-TA text**

## Logical Model: RIV-TA text 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString | *Version*:0.3.3 |
| Draft as of 2026-10-09 | *Computable Name*:SEEHDSRivString |

 
Textinnehåll i ett RIV-TA-element av typen xs:string eller en strängbaserad typ (t.ex. HSAIdType, kodlistor). Elementets värde ligger som textinnehåll i XML-elementet (representation xmlText). 

**Användningar:**

* Använd denna Logisk modell: [GetAccessLogForPatient](StructureDefinition-SEEHDSLMAccessLog.md), [GetAlertInformation](StructureDefinition-SEEHDSLMAlertInformation.md), [GetCareContacts](StructureDefinition-SEEHDSLMCareContacts.md), [GetCareDocumentation](StructureDefinition-SEEHDSLMCareDocumentation.md)... Show 42 more, [GetCarePlans](StructureDefinition-SEEHDSLMCarePlans.md), [GetDiagnosis](StructureDefinition-SEEHDSLMDiagnosis.md), [GetFunctionalStatus](StructureDefinition-SEEHDSLMFunctionalStatus.md), [GetImagingOutcome](StructureDefinition-SEEHDSLMImagingOutcome.md), [GetLaboratoryOrderOutcome](StructureDefinition-SEEHDSLMLaboratoryOrderOutcome.md), [GetMaternityMedicalHistory](StructureDefinition-SEEHDSLMMaternityMedicalHistory.md), [GetMedicationHistory](StructureDefinition-SEEHDSLMMedicationHistory.md), [GetObservations](StructureDefinition-SEEHDSLMObservations.md), [GetReferralOutcome](StructureDefinition-SEEHDSLMReferralOutcome.md), [GetRequestActivities](StructureDefinition-SEEHDSLMRequestActivities.md), [GetVaccinationHistory](StructureDefinition-SEEHDSLMVaccinationHistory.md), [RIV-TA CVType (clinicalprocess:activityprescription:actoutcome:2)](StructureDefinition-SEEHDSRivCVTypeActivityprescriptionActoutcome2.md), [RIV-TA CVType (crm:requeststatus:2)](StructureDefinition-SEEHDSRivCVTypeCrmRequeststatus2.md), [RIV-TA CVType (clinicalprocess:healthcond:actoutcome:2)](StructureDefinition-SEEHDSRivCVTypeHealthcondActoutcome2.md), [RIV-TA CVType (clinicalprocess:healthcond:actoutcome:3)](StructureDefinition-SEEHDSRivCVTypeHealthcondActoutcome3.md), [RIV-TA CVType (clinicalprocess:healthcond:actoutcome:4)](StructureDefinition-SEEHDSRivCVTypeHealthcondActoutcome4.md), [RIV-TA CVType (clinicalprocess:healthcond:basic:2)](StructureDefinition-SEEHDSRivCVTypeHealthcondBasic2.md), [RIV-TA CVType (clinicalprocess:healthcond:description:2)](StructureDefinition-SEEHDSRivCVTypeHealthcondDescription2.md), [RIV-TA CVType (clinicalprocess:healthcond:description:3)](StructureDefinition-SEEHDSRivCVTypeHealthcondDescription3.md), [RIV-TA CVType (clinicalprocess:logistics:logistics:3)](StructureDefinition-SEEHDSRivCVTypeLogisticsLogistics3.md), [RIV-TA IIType (clinicalprocess:activityprescription:actoutcome:2)](StructureDefinition-SEEHDSRivIITypeActivityprescriptionActoutcome2.md), [RIV-TA IIType (crm:requeststatus:2)](StructureDefinition-SEEHDSRivIITypeCrmRequeststatus2.md), [RIV-TA IIType (clinicalprocess:healthcond:actoutcome:3)](StructureDefinition-SEEHDSRivIITypeHealthcondActoutcome3.md), [RIV-TA IIType (clinicalprocess:healthcond:actoutcome:4)](StructureDefinition-SEEHDSRivIITypeHealthcondActoutcome4.md), [RIV-TA IIType (clinicalprocess:healthcond:basic:2)](StructureDefinition-SEEHDSRivIITypeHealthcondBasic2.md), [RIV-TA IIType (clinicalprocess:healthcond:description:3)](StructureDefinition-SEEHDSRivIITypeHealthcondDescription3.md), [RIV-TA IIType (clinicalprocess:logistics:logistics:3)](StructureDefinition-SEEHDSRivIITypeLogisticsLogistics3.md), [RIV-TA PQIntervalType (clinicalprocess:activityprescription:actoutcome:2)](StructureDefinition-SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2.md), [RIV-TA PQIntervalType (clinicalprocess:healthcond:actoutcome:4)](StructureDefinition-SEEHDSRivPQIntervalTypeHealthcondActoutcome4.md), [RIV-TA PQIntervalType (clinicalprocess:healthcond:basic:2)](StructureDefinition-SEEHDSRivPQIntervalTypeHealthcondBasic2.md), [RIV-TA PQType (clinicalprocess:activityprescription:actoutcome:2)](StructureDefinition-SEEHDSRivPQTypeActivityprescriptionActoutcome2.md), [RIV-TA PQType (clinicalprocess:healthcond:actoutcome:2)](StructureDefinition-SEEHDSRivPQTypeHealthcondActoutcome2.md), [RIV-TA PQType (clinicalprocess:healthcond:actoutcome:3)](StructureDefinition-SEEHDSRivPQTypeHealthcondActoutcome3.md), [RIV-TA PQType (clinicalprocess:healthcond:actoutcome:4)](StructureDefinition-SEEHDSRivPQTypeHealthcondActoutcome4.md), [RIV-TA PQType (clinicalprocess:healthcond:basic:2)](StructureDefinition-SEEHDSRivPQTypeHealthcondBasic2.md), [RIV-TA PartialDateType (clinicalprocess:logistics:logistics:3)](StructureDefinition-SEEHDSRivPartialDateTypeLogisticsLogistics3.md), [RIV-TA PartialTimeStampType (clinicalprocess:healthcond:basic:2)](StructureDefinition-SEEHDSRivPartialTimeStampTypeHealthcondBasic2.md), [RIV-TA PersonIdType (clinicalprocess:activityprescription:actoutcome:2)](StructureDefinition-SEEHDSRivPersonIdTypeActivityprescriptionActoutcome2.md), [RIV-TA PersonIdType (clinicalprocess:healthcond:actoutcome:2)](StructureDefinition-SEEHDSRivPersonIdTypeHealthcondActoutcome2.md), [RIV-TA PersonIdType (clinicalprocess:healthcond:actoutcome:3)](StructureDefinition-SEEHDSRivPersonIdTypeHealthcondActoutcome3.md), [RIV-TA PersonIdType (clinicalprocess:healthcond:description:2)](StructureDefinition-SEEHDSRivPersonIdTypeHealthcondDescription2.md) and [RIV-TA PersonIdType (clinicalprocess:logistics:logistics:3)](StructureDefinition-SEEHDSRivPersonIdTypeLogisticsLogistics3.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSRivString)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSRivString.csv), [Excel](StructureDefinition-SEEHDSRivString.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSRivString",
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString",
  "version" : "0.3.3",
  "name" : "SEEHDSRivString",
  "title" : "RIV-TA text",
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
  "description" : "Textinnehåll i ett RIV-TA-element av typen xs:string eller en strängbaserad typ (t.ex. HSAIdType, kodlistor). Elementets värde ligger som textinnehåll i XML-elementet (representation xmlText).",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSRivString",
      "path" : "SEEHDSRivString",
      "short" : "RIV-TA text",
      "definition" : "Textinnehåll i ett RIV-TA-element av typen xs:string eller en strängbaserad typ (t.ex. HSAIdType, kodlistor). Elementets värde ligger som textinnehåll i XML-elementet (representation xmlText)."
    },
    {
      "id" : "SEEHDSRivString.value",
      "path" : "SEEHDSRivString.value",
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
