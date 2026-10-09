# SE EHDS Observation – Mödravård (GetMaternityMedicalHistory) - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SE EHDS Observation – Mödravård (GetMaternityMedicalHistory)**

## Resource Profile: SE EHDS Observation – Mödravård (GetMaternityMedicalHistory) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSObservationMaternity | *Version*:0.3.3 |
| Draft as of 2026-10-09 | *Computable Name*:SEEHDSObservationMaternity |

 
Generisk profil för medicinsk historik inom mödravård mappat från RIVTA-tjänstekontraktet GetMaternityMedicalHistory (clinicalprocess:healthcond:actoutcome v2.0). Täcker NPÖ 2.0 och 1177 Journal 2.0. 
TKB:n har tre avsnitt (registrationRecord, pregnancyCheckupRecord, postDeliveryRecord). Profilen används både för den grupperande Observationen per avsnitt (code = avsnittskod, code.text = documentTitle, hasMember = fälten) och för medlems-Observationerna, en per fält (MAT-001). 

**Användningar:**

* CapabilityStatements som använder denna Profil: [SE EHDS Resource Access Provider](CapabilityStatement-SEEHDSResourceAccessProvider.md)
* Denna Profil används inte av några profiler i denna implementationsguide

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSObservationMaternity)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSObservationMaternity.csv), [Excel](StructureDefinition-SEEHDSObservationMaternity.xlsx), [Schematron](StructureDefinition-SEEHDSObservationMaternity.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSObservationMaternity",
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSObservationMaternity",
  "version" : "0.3.3",
  "name" : "SEEHDSObservationMaternity",
  "title" : "SE EHDS Observation – Mödravård (GetMaternityMedicalHistory)",
  "status" : "draft",
  "date" : "2026-10-09T07:52:45+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Generisk profil för medicinsk historik inom mödravård mappat från RIVTA-tjänstekontraktet\nGetMaternityMedicalHistory (clinicalprocess:healthcond:actoutcome v2.0).\nTäcker NPÖ 2.0 och 1177 Journal 2.0.\n\nTKB:n har tre avsnitt (registrationRecord, pregnancyCheckupRecord, postDeliveryRecord).\nProfilen används både för den grupperande Observationen per avsnitt (code = avsnittskod,\ncode.text = documentTitle, hasMember = fälten) och för medlems-Observationerna, en per\nfält (MAT-001).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.meta.source",
      "path" : "Observation.meta.source",
      "short" : "Källsystem HSA-id (maternityMedicalRecordHeader.sourceSystemHSAId) – https://tjanstekatalogen.inera.se/Endpoint/{hsaId} (GENERAL-005)",
      "mustSupport" : true
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "short" : "Status",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Grupperande: avsnittskod med code.text = documentTitle (MAT-003). Medlem: fältets kod",
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "short" : "Patient (maternityMedicalRecordHeader.patientId)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSPatient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "short" : "Tidpunkt för dokumentation (maternityMedicalRecordHeader.accountableHealthcareProfessional.authorTime)",
      "mustSupport" : true
    },
    {
      "id" : "Observation.issued",
      "path" : "Observation.issued",
      "short" : "Dokumentets registreringstidpunkt (maternityMedicalRecordHeader.documentTime)",
      "mustSupport" : true
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "short" : "Ansvarig personal/enhet (maternityMedicalRecordHeader.accountableHealthcareProfessional)",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "Medlem: fältets värde (t.ex. pregnancyCheckupRecord.bloodPressureSystolic). Grupperande: inget värde",
      "mustSupport" : true
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "short" : "Sektionsspecifik kommentar",
      "mustSupport" : true
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "short" : "Grupperande: avsnittets medlems-Observationer (MAT-001)",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "short" : "Medlem för upprepad post (t.ex. previousGravidityAndParity[i]): postens fält",
      "mustSupport" : true
    }]
  }
}

```
