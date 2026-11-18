# AssessmentCategory — ValueSet - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.12.0

## ValueSet: AssessmentCategory — ValueSet 

 **References** 

* [SE EHDS Condition – Funktionstillstånd och ADL (GetFunctionalStatus)](StructureDefinition-SEEHDSConditionFunctional.md)
* [GetFunctionalStatus](StructureDefinition-SEEHDSLMFunctionalStatus.md)

### Logisk definition (CLD)

 

### Expansion

-------

 [Beskrivning av ovanstående tabell(er)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "assessmentcategory-vs",
  "url" : "https://fhir.inera.se/ig/ehds-tk/ValueSet/assessmentcategory-vs",
  "version" : "0.12.0",
  "name" : "AssessmentCategoryVS",
  "title" : "AssessmentCategory — ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-11-18T20:53:46+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Tillåtna värden för fältet assessmentCategory i GetFunctionalStatus.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhir.inera.se/clinicalprocess-healthcond-description/CodeSystem/assessmentcategory-cs"
    }]
  }
}

```
