# Signeringstidpunkt för journalanteckning - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Signeringstidpunkt för journalanteckning**

## Extension: Signeringstidpunkt för journalanteckning 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/ext-signature-time | *Version*:0.3.3 |
| Draft as of 2026-10-01 | *Computable Name*:DocumentReferenceSignatureTime |

Tidpunkt då journalanteckningen signerades (careDocumentation.header.signature.timestamp, JoL-header v2.2). Anges endast när signature.timestamp finns i källan; ingen ersättningstidpunkt sätts annars. Se DOC-003.

**Context of Use**

**Usage info**

**Användningar:**

* Använd denna Extension: [SE EHDS DocumentReference – Anteckningar (GetCareDocumentation)](StructureDefinition-inera-ehds-document-reference.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/ext-signature-time)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ext-signature-time.csv), [Excel](StructureDefinition-ext-signature-time.xlsx), [Schematron](StructureDefinition-ext-signature-time.sch) 

#### Begränsningar



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ext-signature-time",
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/ext-signature-time",
  "version" : "0.3.3",
  "name" : "DocumentReferenceSignatureTime",
  "title" : "Signeringstidpunkt för journalanteckning",
  "status" : "draft",
  "date" : "2026-10-01T18:35:17+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Tidpunkt då journalanteckningen signerades (careDocumentation.header.signature.timestamp, JoL-header v2.2). Anges endast när signature.timestamp finns i källan; ingen ersättningstidpunkt sätts annars. Se DOC-003.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "DocumentReference"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Signeringstidpunkt för journalanteckning",
      "definition" : "Tidpunkt då journalanteckningen signerades (careDocumentation.header.signature.timestamp, JoL-header v2.2). Anges endast när signature.timestamp finns i källan; ingen ersättningstidpunkt sätts annars. Se DOC-003."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/ext-signature-time"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
