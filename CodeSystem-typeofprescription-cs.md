# TypeOfPrescription - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.8.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **TypeOfPrescription**

## CodeSystem: TypeOfPrescription 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/typeofprescription | *Version*:0.8.1 |
| Active as of 2026-11-04 | *Computable Name*:TypeOfPrescriptionCS |

 
Kodverk för ordinationstyp i GetMedicationHistory. Anger om en ordination är en insättnings- eller utsättningsordination. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TypeOfPrescription — ValueSet](ValueSet-typeofprescription-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "typeofprescription-cs",
  "url" : "https://fhir.inera.se/CodeSystem/typeofprescription",
  "version" : "0.8.1",
  "name" : "TypeOfPrescriptionCS",
  "title" : "TypeOfPrescription",
  "status" : "active",
  "date" : "2026-11-04T19:17:50+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för ordinationstyp i GetMedicationHistory. Anger om en ordination är en insättnings- eller utsättningsordination.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "I",
    "display" : "Insättningsordination",
    "definition" : "Ordination som innebär att läkemedelsbehandling påbörjas"
  },
  {
    "code" : "U",
    "display" : "Utsättningsordination",
    "definition" : "Ordination som innebär att läkemedelsbehandling avslutas"
  }]
}

```
