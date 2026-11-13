# TypeOfLeaveCode - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.8.2

## CodeSystem: TypeOfLeaveCode 

Detta kodsystem refereras i definitionen av följande värdemängder:

* [TypeOfLeaveCode — ValueSet](ValueSet-typeofleavecode-vs.md)

-------

 [Beskrivning av ovanstående tabell(er)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "typeofleavecode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/typeofleavecode",
  "version" : "0.8.2",
  "name" : "TypeOfLeaveCodeCS",
  "title" : "TypeOfLeaveCode",
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
  "description" : "Kodverk för typ av ledighet (TypeOfLeaveCodeEnum). Används i GetMaternityMedicalHistory.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "0",
    "display" : "Sjukskrivning",
    "definition" : "Sjukskrivning under graviditet"
  },
  {
    "code" : "1",
    "display" : "Havandekapsledighet",
    "definition" : "Havandekapsledighet"
  },
  {
    "code" : "2",
    "display" : "Föräldrarledighet",
    "definition" : "Föräldrarledighet"
  }]
}

```
