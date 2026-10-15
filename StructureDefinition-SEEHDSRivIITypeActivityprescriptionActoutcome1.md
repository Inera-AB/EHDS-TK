# RIV-TA IIType (clinicalprocess:activityprescription:actoutcome:1) - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RIV-TA IIType (clinicalprocess:activityprescription:actoutcome:1)**

## Logical Model: RIV-TA IIType (clinicalprocess:activityprescription:actoutcome:1) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivIITypeActivityprescriptionActoutcome1 | *Version*:0.6.0 |
| Draft as of 2026-10-15 | *Computable Name*:SEEHDSRivIITypeActivityprescriptionActoutcome1 |

 
RIV-TA-datatypen IIType i namnrymden urn:riv:clinicalprocess:activityprescription:actoutcome:1. 

**Användningar:**

* Använd denna Logisk modell: [GetVaccinationHistory 1.0](StructureDefinition-SEEHDSLMVaccinationHistoryV10.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSRivIITypeActivityprescriptionActoutcome1)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSRivIITypeActivityprescriptionActoutcome1.csv), [Excel](StructureDefinition-SEEHDSRivIITypeActivityprescriptionActoutcome1.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSRivIITypeActivityprescriptionActoutcome1",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
    "valueUri" : "urn:riv:clinicalprocess:activityprescription:actoutcome:1"
  }],
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivIITypeActivityprescriptionActoutcome1",
  "version" : "0.6.0",
  "name" : "SEEHDSRivIITypeActivityprescriptionActoutcome1",
  "title" : "RIV-TA IIType (clinicalprocess:activityprescription:actoutcome:1)",
  "status" : "draft",
  "date" : "2026-10-15T17:10:15+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "RIV-TA-datatypen IIType i namnrymden urn:riv:clinicalprocess:activityprescription:actoutcome:1.",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivIITypeActivityprescriptionActoutcome1",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSRivIITypeActivityprescriptionActoutcome1",
      "path" : "SEEHDSRivIITypeActivityprescriptionActoutcome1",
      "short" : "RIV-TA IIType (clinicalprocess:activityprescription:actoutcome:1)",
      "definition" : "RIV-TA-datatypen IIType i namnrymden urn:riv:clinicalprocess:activityprescription:actoutcome:1."
    },
    {
      "id" : "SEEHDSRivIITypeActivityprescriptionActoutcome1.root",
      "path" : "SEEHDSRivIITypeActivityprescriptionActoutcome1.root",
      "short" : "OID eller UUID för identifierarens namnrymd",
      "definition" : "OID eller UUID för identifierarens namnrymd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSRivIITypeActivityprescriptionActoutcome1.rivExtension",
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/xml-name",
        "valueString" : "extension"
      }],
      "path" : "SEEHDSRivIITypeActivityprescriptionActoutcome1.rivExtension",
      "short" : "Identifierarens värde inom namnrymden",
      "definition" : "Identifierarens värde inom namnrymden",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    }]
  }
}

```
