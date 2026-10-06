# Signeringstidpunkt för uppmärksamhetssignal - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Signeringstidpunkt för uppmärksamhetssignal**

## Extension: Signeringstidpunkt för uppmärksamhetssignal 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/alert-asserted-date | *Version*:0.3.3 |
| Draft as of 2026-10-06 | *Computable Name*:AlertAssertedDate |

Tidpunkt för signering av uppmärksamhetsinformation (alertInformationHeader.legalAuthenticator.signatureTime).

**Context of Use**

**Usage info**

**Användningar:**

* Använd denna Extension: [SE EHDS Flag – Uppmärksamhetsinformation (GetAlertInformation)](StructureDefinition-SEEHDSFlag.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/alert-asserted-date)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-alert-asserted-date.csv), [Excel](StructureDefinition-alert-asserted-date.xlsx), [Schematron](StructureDefinition-alert-asserted-date.sch) 

#### Begränsningar



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "alert-asserted-date",
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/alert-asserted-date",
  "version" : "0.3.3",
  "name" : "AlertAssertedDate",
  "title" : "Signeringstidpunkt för uppmärksamhetssignal",
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
  "description" : "Tidpunkt för signering av uppmärksamhetsinformation (alertInformationHeader.legalAuthenticator.signatureTime).",
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
    "expression" : "Element"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Signeringstidpunkt för uppmärksamhetssignal",
      "definition" : "Tidpunkt för signering av uppmärksamhetsinformation (alertInformationHeader.legalAuthenticator.signatureTime)."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/alert-asserted-date"
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
