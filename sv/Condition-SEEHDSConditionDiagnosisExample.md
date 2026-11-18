# Exempel: kronisk huvuddiagnos från GetDiagnosis - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.12.0

## Exempel Condition: Exempel: kronisk huvuddiagnos från GetDiagnosis

Informationskälla: [https://tjanstekatalogen.inera.se/Endpoint/SE2321000016-4HK5](https://tjanstekatalogen.inera.se/Endpoint/SE2321000016-4HK5)

Profil: [SE EHDS Condition – Diagnos (GetDiagnosis)](StructureDefinition-SEEHDSConditionDiagnosis.md)

**identifier**: doc-12345

**verificationStatus**: Confirmed

**category**: Encounter Diagnosis

**code**: Diabetes mellitus typ 2 utan komplikationer

**subject**: [Tolvan Tolvansson (inget angivet kön), Födelsedatum: 1912-12-12 ( http://electronichealth.se/identifier/personnummer#191212121212)](Patient-SEEHDSPatientExample.md)

**onset**: 2023-06-01 12:00:00+0200

**recordedDate**: 2023-06-01 12:00:00+0200

### Stages

| | | |
| :--- | :--- | :--- |
| - | **Summary** | **Type** |
| * | Chronic (qualifier value) | Clinical course (attribute) |



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "SEEHDSConditionDiagnosisExample",
  "meta" : {
    "source" : "https://tjanstekatalogen.inera.se/Endpoint/SE2321000016-4HK5",
    "profile" : ["https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSConditionDiagnosis"]
  },
  "identifier" : [{
    "value" : "doc-12345"
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
      "code" : "encounter-diagnosis",
      "display" : "Encounter Diagnosis"
    },
    {
      "system" : "https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_diagnostyp",
      "code" : "HD",
      "display" : "Huvuddiagnos"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/icd-10-se",
      "code" : "E11.9",
      "display" : "Diabetes mellitus typ 2 utan komplikationer"
    }]
  },
  "subject" : {
    "reference" : "Patient/SEEHDSPatientExample",
    "identifier" : {
      "system" : "http://electronichealth.se/identifier/personnummer",
      "value" : "191212121212"
    }
  },
  "onsetDateTime" : "2023-06-01T12:00:00+02:00",
  "recordedDate" : "2023-06-01T12:00:00+02:00",
  "stage" : [{
    "summary" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "90734009",
        "display" : "Chronic (qualifier value)"
      }]
    },
    "type" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "263502005",
        "display" : "Clinical course (attribute)"
      }]
    }
  }]
}

```
