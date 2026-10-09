# RIV-TA CVType (clinicalprocess:healthcond:actoutcome:3) - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RIV-TA CVType (clinicalprocess:healthcond:actoutcome:3)**

## Logical Model: RIV-TA CVType (clinicalprocess:healthcond:actoutcome:3) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivCVTypeHealthcondActoutcome3 | *Version*:0.3.3 |
| Draft as of 2026-10-09 | *Computable Name*:SEEHDSRivCVTypeHealthcondActoutcome3 |

 
RIV-TA-datatypen CVType i namnrymden urn:riv:clinicalprocess:healthcond:actoutcome:3. 

**Användningar:**

* Använd denna Logisk modell: [GetImagingOutcome](StructureDefinition-SEEHDSLMImagingOutcome.md) and [GetReferralOutcome](StructureDefinition-SEEHDSLMReferralOutcome.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSRivCVTypeHealthcondActoutcome3)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSRivCVTypeHealthcondActoutcome3.csv), [Excel](StructureDefinition-SEEHDSRivCVTypeHealthcondActoutcome3.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSRivCVTypeHealthcondActoutcome3",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
    "valueUri" : "urn:riv:clinicalprocess:healthcond:actoutcome:3"
  }],
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivCVTypeHealthcondActoutcome3",
  "version" : "0.3.3",
  "name" : "SEEHDSRivCVTypeHealthcondActoutcome3",
  "title" : "RIV-TA CVType (clinicalprocess:healthcond:actoutcome:3)",
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
  "description" : "RIV-TA-datatypen CVType i namnrymden urn:riv:clinicalprocess:healthcond:actoutcome:3.",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivCVTypeHealthcondActoutcome3",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSRivCVTypeHealthcondActoutcome3",
      "path" : "SEEHDSRivCVTypeHealthcondActoutcome3",
      "short" : "RIV-TA CVType (clinicalprocess:healthcond:actoutcome:3)",
      "definition" : "RIV-TA-datatypen CVType i namnrymden urn:riv:clinicalprocess:healthcond:actoutcome:3."
    },
    {
      "id" : "SEEHDSRivCVTypeHealthcondActoutcome3.code",
      "path" : "SEEHDSRivCVTypeHealthcondActoutcome3.code",
      "short" : "Kod",
      "definition" : "Kod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSRivCVTypeHealthcondActoutcome3.codeSystem",
      "path" : "SEEHDSRivCVTypeHealthcondActoutcome3.codeSystem",
      "short" : "OID för kodsystem",
      "definition" : "OID för kodsystem",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSRivCVTypeHealthcondActoutcome3.codeSystemName",
      "path" : "SEEHDSRivCVTypeHealthcondActoutcome3.codeSystemName",
      "short" : "Kodsystemets namn",
      "definition" : "Kodsystemets namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSRivCVTypeHealthcondActoutcome3.codeSystemVersion",
      "path" : "SEEHDSRivCVTypeHealthcondActoutcome3.codeSystemVersion",
      "short" : "Kodsystemets version",
      "definition" : "Kodsystemets version",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSRivCVTypeHealthcondActoutcome3.displayName",
      "path" : "SEEHDSRivCVTypeHealthcondActoutcome3.displayName",
      "short" : "Kodens klartext",
      "definition" : "Kodens klartext",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSRivCVTypeHealthcondActoutcome3.originalText",
      "path" : "SEEHDSRivCVTypeHealthcondActoutcome3.originalText",
      "short" : "Originaltext (om kod saknas eller som komplement)",
      "definition" : "Originaltext (om kod saknas eller som komplement)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    }]
  }
}

```
