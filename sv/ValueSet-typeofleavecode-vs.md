# TypeOfLeaveCode — ValueSet - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.8.1

## ValueSet: TypeOfLeaveCode — ValueSet 

 **References** 

Denna värdemängd används inte här; den kan användas på andra ställen (t.ex. specifikationer och/eller implementationer som använder detta innehåll)

### Logisk definition (CLD)

 

### Expansion

-------

 [Beskrivning av ovanstående tabell(er)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "typeofleavecode-vs",
  "url" : "https://fhir.inera.se/ig/ehds-tk/ValueSet/typeofleavecode-vs",
  "version" : "0.8.1",
  "name" : "TypeOfLeaveCodeVS",
  "title" : "TypeOfLeaveCode — ValueSet",
  "status" : "active",
  "date" : "2026-11-13T15:20:27+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Tillåtna värden för typ av ledighet i GetMaternityMedicalHistory.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhir.inera.se/CodeSystem/typeofleavecode"
    }]
  }
}

```
