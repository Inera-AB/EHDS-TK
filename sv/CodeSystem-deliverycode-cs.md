# DeliveryCode - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.8.2

## CodeSystem: DeliveryCode 

Detta kodsystem refereras i definitionen av följande värdemängder:

* [DeliveryCode — ValueSet](ValueSet-deliverycode-vs.md)

-------

 [Beskrivning av ovanstående tabell(er)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "deliverycode-cs",
  "url" : "https://fhir.inera.se/CodeSystem/deliverycode",
  "version" : "0.8.2",
  "name" : "DeliveryCodeCS",
  "title" : "DeliveryCode",
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
  "description" : "Kodverk för förlossningssätt (DeliveryCodeEnum). Används i GetMaternityMedicalHistory.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "0",
    "display" : "Ej angivet",
    "definition" : "Förlossningssätt ej angivet"
  },
  {
    "code" : "1",
    "display" : "X-gravid",
    "definition" : "X-gravid"
  },
  {
    "code" : "2",
    "display" : "Spontan abort",
    "definition" : "Spontan abort"
  },
  {
    "code" : "4",
    "display" : "Dödfött",
    "definition" : "Dödfött barn"
  },
  {
    "code" : "5",
    "display" : "Levande fött",
    "definition" : "Levande fött barn"
  }]
}

```
