# SE EHDS AuditEvent – Läsning av åtkomstloggar (GetAccessLogForPatient) - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SE EHDS AuditEvent – Läsning av åtkomstloggar (GetAccessLogForPatient)**

## Resource Profile: SE EHDS AuditEvent – Läsning av åtkomstloggar (GetAccessLogForPatient) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSAuditEventReadAccessLog | *Version*:0.3.3 |
| Draft as of 2026-10-06 | *Computable Name*:SEEHDSAuditEventReadAccessLog |

 
Profil för att läsa åtkomstloggar: representerar en befintlig loggpost som lämnas ut till patienten, mappad från RIVTA-tjänstekontraktet GetAccessLogForPatient (informationsecurity:auditing:log v1.1, 2.0). Täcker 1177 Journal 1.1, 2.0. Krävs ej för NPÖ. 
Profilen används INTE för att logga användningen av FHIR-API:et. De loggposter som ska skapas när API:et nyttjas beskrivs av SEEHDSAuditEventPatientQuery och SEEHDSAuditEventPatientRead. 

**Användningar:**

* CapabilityStatements som använder denna Profil: [SE EHDS Resource Access Provider](CapabilityStatement-SEEHDSResourceAccessProvider.md)
* Denna Profil används inte av några profiler i denna implementationsguide

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSAuditEventReadAccessLog)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSAuditEventReadAccessLog.csv), [Excel](StructureDefinition-SEEHDSAuditEventReadAccessLog.xlsx), [Schematron](StructureDefinition-SEEHDSAuditEventReadAccessLog.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSAuditEventReadAccessLog",
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSAuditEventReadAccessLog",
  "version" : "0.3.3",
  "name" : "SEEHDSAuditEventReadAccessLog",
  "title" : "SE EHDS AuditEvent – Läsning av åtkomstloggar (GetAccessLogForPatient)",
  "status" : "draft",
  "date" : "2026-10-06T07:04:04+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Profil för att läsa åtkomstloggar: representerar en befintlig loggpost som lämnas ut till\npatienten, mappad från RIVTA-tjänstekontraktet GetAccessLogForPatient\n(informationsecurity:auditing:log v1.1, 2.0). Täcker 1177 Journal 1.1, 2.0. Krävs ej för NPÖ.\n\nProfilen används INTE för att logga användningen av FHIR-API:et. De loggposter som ska skapas\nnär API:et nyttjas beskrivs av SEEHDSAuditEventPatientQuery och SEEHDSAuditEventPatientRead.",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "dicom",
    "uri" : "http://nema.org/dicom",
    "name" : "DICOM Tag Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "w3c.prov",
    "uri" : "http://www.w3.org/ns/prov",
    "name" : "W3C PROV"
  },
  {
    "identity" : "fhirprovenance",
    "uri" : "http://hl7.org/fhir/provenance",
    "name" : "FHIR Provenance Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AuditEvent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AuditEvent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AuditEvent",
      "path" : "AuditEvent"
    },
    {
      "id" : "AuditEvent.type",
      "path" : "AuditEvent.type",
      "short" : "Händelsetyp (accessType)",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.subtype",
      "path" : "AuditEvent.subtype",
      "short" : "Händelseundertyp (accessSubType)",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.action",
      "path" : "AuditEvent.action",
      "short" : "Åtgärd (R=Read)",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.recorded",
      "path" : "AuditEvent.recorded",
      "short" : "Loggtidpunkt (accessTime)",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.outcome",
      "path" : "AuditEvent.outcome",
      "short" : "Utfall (accessOutcome)",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent",
      "path" : "AuditEvent.agent",
      "short" : "Aktörer i loggposten",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent.who",
      "path" : "AuditEvent.agent.who",
      "short" : "Användare/system (userId)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSPractitionerRole",
        "http://hl7.org/fhir/StructureDefinition/Device"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent.requestor",
      "path" : "AuditEvent.agent.requestor",
      "short" : "Är aktören den som initierade händelsen",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.agent.purposeOfUse",
      "path" : "AuditEvent.agent.purposeOfUse",
      "short" : "Åtkomstsyfte (accessPurpose)",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.source",
      "path" : "AuditEvent.source",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.source.observer",
      "path" : "AuditEvent.source.observer",
      "short" : "Loggkälla/system (sourceSystemHSAId)",
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity",
      "path" : "AuditEvent.entity",
      "short" : "Objekt/patient som åtkomsten gäller",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity.what",
      "path" : "AuditEvent.entity.what",
      "short" : "Patientidentifierare (patientId)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSPatient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AuditEvent.entity.role",
      "path" : "AuditEvent.entity.role",
      "short" : "Objektets roll i händelsen",
      "mustSupport" : true
    }]
  }
}

```
