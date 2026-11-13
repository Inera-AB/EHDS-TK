# PrescriptionStatus - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.8.1

## CodeSystem: PrescriptionStatus 

Detta kodsystem refereras i definitionen av följande värdemängder:

* [PrescriptionStatus — ValueSet](ValueSet-prescriptionstatus-vs.md)

-------

 [Beskrivning av ovanstående tabell(er)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "prescriptionstatus-cs",
  "url" : "https://fhir.inera.se/CodeSystem/prescriptionstatus",
  "version" : "0.8.1",
  "name" : "PrescriptionStatusCS",
  "title" : "PrescriptionStatus",
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
  "description" : "Kodverk för ordinationsstatus i GetMedicationHistory. Anger om en ordination är aktiv eller inaktiv.",
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
    "code" : "Active",
    "display" : "Aktiv",
    "definition" : "Aktiv ordination — den sista i sin ordinationskedja. Representerar gällande behandling."
  },
  {
    "code" : "Inactive",
    "display" : "Inaktiv",
    "definition" : "Inaktiv ordination — inte den sista i sin ordinationskedja. Historisk ordination."
  }]
}

```
