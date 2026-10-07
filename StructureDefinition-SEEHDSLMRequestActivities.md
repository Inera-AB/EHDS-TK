# GetRequestActivities - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetRequestActivities**

## Logical Model: GetRequestActivities 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMRequestActivities | *Version*:0.3.3 |
| Draft as of 2026-10-07 | *Computable Name*:SEEHDSLMRequestActivities |

 
Logisk modell för remisstatus och processaktiviteter hämtad via GetRequestActivities (crm:requeststatus v2.0). 

**Användningar:**

* Denna Logisk modell används inte av några profiler i denna implementationsguide

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSLMRequestActivities)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSLMRequestActivities.csv), [Excel](StructureDefinition-SEEHDSLMRequestActivities.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSLMRequestActivities",
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMRequestActivities",
  "version" : "0.3.3",
  "name" : "SEEHDSLMRequestActivities",
  "title" : "GetRequestActivities",
  "status" : "draft",
  "date" : "2026-10-07T11:41:58+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för remisstatus och processaktiviteter hämtad via GetRequestActivities (crm:requeststatus v2.0).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMRequestActivities",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSLMRequestActivities",
      "path" : "SEEHDSLMRequestActivities",
      "short" : "GetRequestActivities",
      "definition" : "Logisk modell för remisstatus och processaktiviteter hämtad via GetRequestActivities (crm:requeststatus v2.0)."
    },
    {
      "id" : "SEEHDSLMRequestActivities.requestHeader",
      "path" : "SEEHDSLMRequestActivities.requestHeader",
      "short" : "Header med metadata",
      "definition" : "Header med metadata",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMRequestActivities.requestHeader.patientId",
      "path" : "SEEHDSLMRequestActivities.requestHeader.patientId",
      "short" : "Patientidentifierare",
      "definition" : "Patientidentifierare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMRequestActivities.requestHeader.sourceSystemHSAId",
      "path" : "SEEHDSLMRequestActivities.requestHeader.sourceSystemHSAId",
      "short" : "Källsystemets HSA-id",
      "definition" : "Källsystemets HSA-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMRequestActivities.requestHeader.documentTime",
      "path" : "SEEHDSLMRequestActivities.requestHeader.documentTime",
      "short" : "Registreringstidpunkt",
      "definition" : "Registreringstidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "SEEHDSLMRequestActivities.requestHeader.careProviderHSAId",
      "path" : "SEEHDSLMRequestActivities.requestHeader.careProviderHSAId",
      "short" : "Vårdgivarens HSA-id",
      "definition" : "Vårdgivarens HSA-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMRequestActivities.requestHeader.careUnitHSAId",
      "path" : "SEEHDSLMRequestActivities.requestHeader.careUnitHSAId",
      "short" : "Vårdenhetens HSA-id",
      "definition" : "Vårdenhetens HSA-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMRequestActivities.requestId",
      "path" : "SEEHDSLMRequestActivities.requestId",
      "short" : "Remissidentifierare (koppling till remiss)",
      "definition" : "Remissidentifierare (koppling till remiss)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMRequestActivities.requestStatus",
      "path" : "SEEHDSLMRequestActivities.requestStatus",
      "short" : "Remisstatus (kv_requestStatus)",
      "definition" : "Remisstatus (kv_requestStatus)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMRequestActivities.requestReceiver",
      "path" : "SEEHDSLMRequestActivities.requestReceiver",
      "short" : "Mottagande enhets HSA-id",
      "definition" : "Mottagande enhets HSA-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMRequestActivities.activityType",
      "path" : "SEEHDSLMRequestActivities.activityType",
      "short" : "Aktivitetstyp",
      "definition" : "Aktivitetstyp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMRequestActivities.activityTime",
      "path" : "SEEHDSLMRequestActivities.activityTime",
      "short" : "Aktivitetstidpunkt",
      "definition" : "Aktivitetstidpunkt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "SEEHDSLMRequestActivities.activityComment",
      "path" : "SEEHDSLMRequestActivities.activityComment",
      "short" : "Aktivitetsbeskrivning/kommentar",
      "definition" : "Aktivitetsbeskrivning/kommentar",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
