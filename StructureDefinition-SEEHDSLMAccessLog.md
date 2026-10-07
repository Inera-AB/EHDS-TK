# GetAccessLogForPatient - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAccessLogForPatient**

## Logical Model: GetAccessLogForPatient 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMAccessLog | *Version*:0.3.3 |
| Draft as of 2026-10-07 | *Computable Name*:SEEHDSLMAccessLog |

 
Logisk modell för patientens åtkomstloggar hämtad via GetAccessLogForPatient (informationsecurity:auditing:log v1.1, 2.0). Krävs för 1177 Journal 1.1, 2.0 men ej för NPÖ. 

**Användningar:**

* Denna Logisk modell används inte av några profiler i denna implementationsguide

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSLMAccessLog)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSLMAccessLog.csv), [Excel](StructureDefinition-SEEHDSLMAccessLog.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSLMAccessLog",
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMAccessLog",
  "version" : "0.3.3",
  "name" : "SEEHDSLMAccessLog",
  "title" : "GetAccessLogForPatient",
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
  "description" : "Logisk modell för patientens åtkomstloggar hämtad via GetAccessLogForPatient (informationsecurity:auditing:log v1.1, 2.0). Krävs för 1177 Journal 1.1, 2.0 men ej för NPÖ.",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMAccessLog",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSLMAccessLog",
      "path" : "SEEHDSLMAccessLog",
      "short" : "GetAccessLogForPatient",
      "definition" : "Logisk modell för patientens åtkomstloggar hämtad via GetAccessLogForPatient (informationsecurity:auditing:log v1.1, 2.0). Krävs för 1177 Journal 1.1, 2.0 men ej för NPÖ."
    },
    {
      "id" : "SEEHDSLMAccessLog.accessLogId",
      "path" : "SEEHDSLMAccessLog.accessLogId",
      "short" : "Loggpostens identifierare",
      "definition" : "Loggpostens identifierare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMAccessLog.patientId",
      "path" : "SEEHDSLMAccessLog.patientId",
      "short" : "Patientidentifierare",
      "definition" : "Patientidentifierare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMAccessLog.accessTime",
      "path" : "SEEHDSLMAccessLog.accessTime",
      "short" : "Åtkomsttidpunkt (UTC)",
      "definition" : "Åtkomsttidpunkt (UTC)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "SEEHDSLMAccessLog.accessType",
      "path" : "SEEHDSLMAccessLog.accessType",
      "short" : "Åtkomsttyp (Läsning/Sökning)",
      "definition" : "Åtkomsttyp (Läsning/Sökning)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMAccessLog.accessSubType",
      "path" : "SEEHDSLMAccessLog.accessSubType",
      "short" : "Åtkomstundertyp",
      "definition" : "Åtkomstundertyp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMAccessLog.accessOutcome",
      "path" : "SEEHDSLMAccessLog.accessOutcome",
      "short" : "Utfall (Beviljad/Nekad)",
      "definition" : "Utfall (Beviljad/Nekad)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMAccessLog.accessPurpose",
      "path" : "SEEHDSLMAccessLog.accessPurpose",
      "short" : "Åtkomstsyfte (Vård/Administration)",
      "definition" : "Åtkomstsyfte (Vård/Administration)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMAccessLog.userId",
      "path" : "SEEHDSLMAccessLog.userId",
      "short" : "Användarens HSA-id",
      "definition" : "Användarens HSA-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMAccessLog.userRole",
      "path" : "SEEHDSLMAccessLog.userRole",
      "short" : "Användarroll",
      "definition" : "Användarroll",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMAccessLog.userOrganization",
      "path" : "SEEHDSLMAccessLog.userOrganization",
      "short" : "Användarens organisations HSA-id",
      "definition" : "Användarens organisations HSA-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMAccessLog.sourceSystemHSAId",
      "path" : "SEEHDSLMAccessLog.sourceSystemHSAId",
      "short" : "Källsystem (loggkälla)",
      "definition" : "Källsystem (loggkälla)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMAccessLog.accessedResource",
      "path" : "SEEHDSLMAccessLog.accessedResource",
      "short" : "Resurs/tjänst som åtkoms",
      "definition" : "Resurs/tjänst som åtkoms",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
