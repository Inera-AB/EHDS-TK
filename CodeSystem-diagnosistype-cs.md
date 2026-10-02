# KV Diagnostyp (fragment) - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KV Diagnostyp (fragment)**

## CodeSystem: KV Diagnostyp (fragment) 

| | |
| :--- | :--- |
| *Official URL*:https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_diagnostyp | *Version*:0.3.3 |
| Active as of 2026-10-02 | *Computable Name*:DiagnosisTypeCS |

 
Fragment av Ineras kodverk kv_diagnostyp med de koder som används för typ av diagnos i GetDiagnosis (diagnosisBody.typeOfDiagnosis): HD = huvuddiagnos, BY = bidiagnos. Kodverket förvaltas av Inera; detta är en delmängd för validering i IG:n. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DiagnosisType — ValueSet](ValueSet-diagnosistype-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "diagnosistype-cs",
  "url" : "https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_diagnostyp",
  "version" : "0.3.3",
  "name" : "DiagnosisTypeCS",
  "title" : "KV Diagnostyp (fragment)",
  "status" : "active",
  "date" : "2026-10-02T11:47:48+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Fragment av Ineras kodverk kv_diagnostyp med de koder som används för typ av diagnos i GetDiagnosis (diagnosisBody.typeOfDiagnosis): HD = huvuddiagnos, BY = bidiagnos. Kodverket förvaltas av Inera; detta är en delmängd för validering i IG:n.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "caseSensitive" : true,
  "content" : "fragment",
  "concept" : [{
    "code" : "HD",
    "display" : "Huvuddiagnos",
    "definition" : "Huvuddiagnos"
  },
  {
    "code" : "BY",
    "display" : "Bidiagnos",
    "definition" : "Bidiagnos"
  }]
}

```
