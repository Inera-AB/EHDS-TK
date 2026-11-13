# PrescriptionStatus — ValueSet - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.8.1

## ValueSet: PrescriptionStatus — ValueSet 

 **References** 

* [GetMedicationHistory](StructureDefinition-SEEHDSLMMedicationHistory.md)

### Logisk definition (CLD)

 

### Expansion

-------

 [Beskrivning av ovanstående tabell(er)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "prescriptionstatus-vs",
  "url" : "https://fhir.inera.se/ig/ehds-tk/ValueSet/prescriptionstatus-vs",
  "version" : "0.8.1",
  "name" : "PrescriptionStatusVS",
  "title" : "PrescriptionStatus — ValueSet",
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
  "description" : "Tillåtna värden för prescriptionStatus i GetMedicationHistory.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://fhir.inera.se/CodeSystem/prescriptionstatus"
    }]
  }
}

```
