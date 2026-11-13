# ResultCode — ValueSet - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.8.2

## ValueSet: ResultCode — ValueSet 

 **References** 

* [GetMedicationHistory](StructureDefinition-SEEHDSLMMedicationHistory.md)
* [GetVaccinationHistory](StructureDefinition-SEEHDSLMVaccinationHistory.md)

### Logisk definition (CLD)

 

### Expansion

-------

 [Beskrivning av ovanstående tabell(er)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "resultcode-vs",
  "url" : "https://fhir.inera.se/ig/ehds-tk/ValueSet/resultcode-vs",
  "version" : "0.8.2",
  "name" : "ResultCodeVS",
  "title" : "ResultCode — ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-11-13T16:07:48+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Tillåtna värden för resultCode i svar.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhir.inera.se/CodeSystem/resultcode-actoutcome"
    }]
  }
}

```
