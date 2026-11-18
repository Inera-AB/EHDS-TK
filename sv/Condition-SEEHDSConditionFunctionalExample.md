# Exempel: PADL-bedömning från GetFunctionalStatus - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.12.0

## Exempel Condition: Exempel: PADL-bedömning från GetFunctionalStatus

Informationskälla: [https://tjanstekatalogen.inera.se/Endpoint/SE2321000016-4HK5](https://tjanstekatalogen.inera.se/Endpoint/SE2321000016-4HK5)

Profil: [SE EHDS Condition – Funktionstillstånd och ADL (GetFunctionalStatus)](StructureDefinition-SEEHDSConditionFunctional.md)

**identifier**: func-6789

**verificationStatus**: Confirmed

**category**: Problem List Item

**code**: PADL-bedömning

**subject**: [Tolvan Tolvansson (inget angivet kön), Födelsedatum: 1912-12-12 ( http://electronichealth.se/identifier/personnummer#191212121212)](Patient-SEEHDSPatientExample.md)

**recordedDate**: 2023-06-01 12:00:00+0200

**note**: 

> 

[personlig hygien]: Klarar sig själv




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "SEEHDSConditionFunctionalExample",
  "meta" : {
    "source" : "https://tjanstekatalogen.inera.se/Endpoint/SE2321000016-4HK5",
    "profile" : ["https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSConditionFunctional"]
  },
  "identifier" : [{
    "value" : "func-6789"
  }],
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "problem-list-item",
      "display" : "Problem List Item"
    },
    {
      "system" : "https://fhir.inera.se/clinicalprocess-healthcond-description/CodeSystem/assessmentcategory-cs",
      "code" : "pad-pad",
      "display" : "pad-pad"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "https://fhir.inera.se/clinicalprocess-healthcond-description/CodeSystem/assessmentcategory-cs",
      "code" : "pad-pad",
      "display" : "pad-pad"
    }],
    "text" : "PADL-bedömning"
  },
  "subject" : {
    "reference" : "Patient/SEEHDSPatientExample",
    "identifier" : {
      "system" : "http://electronichealth.se/identifier/personnummer",
      "value" : "191212121212"
    }
  },
  "recordedDate" : "2023-06-01T12:00:00+02:00",
  "note" : [{
    "text" : "[personlig hygien]: Klarar sig själv"
  }]
}

```
