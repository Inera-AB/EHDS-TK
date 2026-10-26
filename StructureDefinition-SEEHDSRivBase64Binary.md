# RIV-TA xs:base64Binary - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RIV-TA xs:base64Binary**

## Logical Model: RIV-TA xs:base64Binary 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivBase64Binary | *Version*:0.7.0 |
| Draft as of 2026-10-26 | *Computable Name*:SEEHDSRivBase64Binary |

 
Base64-kodat innehåll. Elementets värde ligger som textinnehåll i XML-elementet (representation xmlText). 

**Användningar:**

* Använd denna Logisk modell: [GetCareDocumentation](StructureDefinition-SEEHDSLMCareDocumentation.md), [GetCareDocumentation 2.1](StructureDefinition-SEEHDSLMCareDocumentationV21.md), [GetCarePlans](StructureDefinition-SEEHDSLMCarePlans.md), [GetImagingOutcome](StructureDefinition-SEEHDSLMImagingOutcome.md)... Show 2 more, [GetReferralOutcome](StructureDefinition-SEEHDSLMReferralOutcome.md) and [GetReferralOutcome 3.1](StructureDefinition-SEEHDSLMReferralOutcomeV31.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSRivBase64Binary)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSRivBase64Binary.csv), [Excel](StructureDefinition-SEEHDSRivBase64Binary.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSRivBase64Binary",
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivBase64Binary",
  "version" : "0.7.0",
  "name" : "SEEHDSRivBase64Binary",
  "title" : "RIV-TA xs:base64Binary",
  "status" : "draft",
  "date" : "2026-10-26T15:58:30+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Base64-kodat innehåll. Elementets värde ligger som textinnehåll i XML-elementet (representation xmlText).",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivBase64Binary",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSRivBase64Binary",
      "path" : "SEEHDSRivBase64Binary",
      "short" : "RIV-TA xs:base64Binary",
      "definition" : "Base64-kodat innehåll. Elementets värde ligger som textinnehåll i XML-elementet (representation xmlText)."
    },
    {
      "id" : "SEEHDSRivBase64Binary.value",
      "path" : "SEEHDSRivBase64Binary.value",
      "representation" : ["xmlText"],
      "short" : "Elementets textinnehåll",
      "definition" : "Elementets textinnehåll",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    }]
  }
}

```
