# RIV-TA IIType (clinicalprocess:healthcond:description:2) - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RIV-TA IIType (clinicalprocess:healthcond:description:2)**

## Logical Model: RIV-TA IIType (clinicalprocess:healthcond:description:2) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivIITypeHealthcondDescription2 | *Version*:0.7.0 |
| Draft as of 2026-10-26 | *Computable Name*:SEEHDSRivIITypeHealthcondDescription2 |

 
RIV-TA-datatypen IIType i namnrymden urn:riv:clinicalprocess:healthcond:description:2. 

**Användningar:**

* Använd denna Logisk modell: [GetCareDocumentation 2.1](StructureDefinition-SEEHDSLMCareDocumentationV21.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSRivIITypeHealthcondDescription2)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSRivIITypeHealthcondDescription2.csv), [Excel](StructureDefinition-SEEHDSRivIITypeHealthcondDescription2.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSRivIITypeHealthcondDescription2",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace",
    "valueUri" : "urn:riv:clinicalprocess:healthcond:description:2"
  }],
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivIITypeHealthcondDescription2",
  "version" : "0.7.0",
  "name" : "SEEHDSRivIITypeHealthcondDescription2",
  "title" : "RIV-TA IIType (clinicalprocess:healthcond:description:2)",
  "status" : "draft",
  "date" : "2026-10-26T15:58:30+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "RIV-TA-datatypen IIType i namnrymden urn:riv:clinicalprocess:healthcond:description:2.",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivIITypeHealthcondDescription2",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSRivIITypeHealthcondDescription2",
      "path" : "SEEHDSRivIITypeHealthcondDescription2",
      "short" : "RIV-TA IIType (clinicalprocess:healthcond:description:2)",
      "definition" : "RIV-TA-datatypen IIType i namnrymden urn:riv:clinicalprocess:healthcond:description:2."
    },
    {
      "id" : "SEEHDSRivIITypeHealthcondDescription2.root",
      "path" : "SEEHDSRivIITypeHealthcondDescription2.root",
      "short" : "OID eller UUID för identifierarens namnrymd",
      "definition" : "OID eller UUID för identifierarens namnrymd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSRivString"
      }]
    },
    {
      "id" : "SEEHDSRivIITypeHealthcondDescription2.rivExtension",
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/xml-name",
        "valueString" : "extension"
      }],
      "path" : "SEEHDSRivIITypeHealthcondDescription2.rivExtension",
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
