# SE EHDS AllergyIntolerance – Allergi/överkänslighet (GetAlertInformation) - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SE EHDS AllergyIntolerance – Allergi/överkänslighet (GetAlertInformation)**

## Resource Profile: SE EHDS AllergyIntolerance – Allergi/överkänslighet (GetAlertInformation) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSAllergyIntolerance | *Version*:0.3.3 |
| Draft as of 2026-10-09 | *Computable Name*:SEEHDSAllergyIntolerance |

 
Sekundär profil för allergier och överkänslighet från GetAlertInformation. 
Skapas ENBART när alertInformationBody = hypersensitivity. Den tillhörande SEEHDSFlag-resursen är alltid primär och pekar på denna resurs via Flag.extension[flag-detail] (standard R4-extension; R5: supportingInfo). 
Populeras med klinisk information från hypersensitivity-blocket: 
* atcSubstance/hypersensitivityAgentCode → AllergyIntolerance.code
* degreeOfSeverity → AllergyIntolerance.reaction.severity
* degreeOfCertainty → AllergyIntolerance.verificationStatus (se ALERT-004)
* ascertainedDate → AllergyIntolerance.onsetDateTime
* alertInformationComment → AllergyIntolerance.note
* pharmaceuticalProductId → AllergyIntolerance.reaction.substance.coding (NPL-id)
 
Täcker NPÖ 2.0 och 1177 Journal 2.0. 

**Användningar:**

* CapabilityStatements som använder denna Profil: [SE EHDS Resource Access Provider](CapabilityStatement-SEEHDSResourceAccessProvider.md)
* Denna Profil används inte av några profiler i denna implementationsguide

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSAllergyIntolerance)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSAllergyIntolerance.csv), [Excel](StructureDefinition-SEEHDSAllergyIntolerance.xlsx), [Schematron](StructureDefinition-SEEHDSAllergyIntolerance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSAllergyIntolerance",
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSAllergyIntolerance",
  "version" : "0.3.3",
  "name" : "SEEHDSAllergyIntolerance",
  "title" : "SE EHDS AllergyIntolerance – Allergi/överkänslighet (GetAlertInformation)",
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
  "description" : "Sekundär profil för allergier och överkänslighet från GetAlertInformation.\n\nSkapas ENBART när alertInformationBody = hypersensitivity.\nDen tillhörande SEEHDSFlag-resursen är alltid primär och pekar på denna\nresurs via Flag.extension[flag-detail] (standard R4-extension; R5: supportingInfo).\n\nPopuleras med klinisk information från hypersensitivity-blocket:\n- atcSubstance/hypersensitivityAgentCode → AllergyIntolerance.code\n- degreeOfSeverity → AllergyIntolerance.reaction.severity\n- degreeOfCertainty → AllergyIntolerance.verificationStatus (se ALERT-004)\n- ascertainedDate → AllergyIntolerance.onsetDateTime\n- alertInformationComment → AllergyIntolerance.note\n- pharmaceuticalProductId → AllergyIntolerance.reaction.substance.coding (NPL-id)\n\nTäcker NPÖ 2.0 och 1177 Journal 2.0.",
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
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AllergyIntolerance",
  "baseDefinition" : "http://hl7.eu/fhir/base/StructureDefinition/allergyIntolerance-eu-core",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "AllergyIntolerance",
      "path" : "AllergyIntolerance"
    },
    {
      "id" : "AllergyIntolerance.meta.source",
      "path" : "AllergyIntolerance.meta.source",
      "short" : "Källsystem HSA-id (alertInformationHeader.sourceSystemHSAId) – https://tjanstekatalogen.inera.se/Endpoint/{hsaId} (GENERAL-005)",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.clinicalStatus",
      "path" : "AllergyIntolerance.clinicalStatus",
      "short" : "Alltid 'active' – härledd; inget statusfält i TKBn",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.verificationStatus",
      "path" : "AllergyIntolerance.verificationStatus",
      "short" : "Visshet (alertInformationBody.hypersensitivity.degreeOfCertainty → ConceptMap till verificationStatus); se ALERT-004",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.type",
      "path" : "AllergyIntolerance.type",
      "short" : "Alltid 'allergy' – härledd av att body = hypersensitivity",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.code",
      "path" : "AllergyIntolerance.code",
      "short" : "Agens/substans:\n- pharmaceuticalHypersensitivity.atcSubstance → code.coding (ATC, primär)\n- pharmaceuticalHypersensitivity.nonATCSubstance → code.text\n- otherHypersensitivity.hypersensitivityAgentCode → code.coding\n- otherHypersensitivity.hypersensitivityAgent → code.text",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.patient",
      "path" : "AllergyIntolerance.patient",
      "short" : "Patient (alertInformationHeader.patientId)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSPatient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.onset[x]:onsetDateTime",
      "path" : "AllergyIntolerance.onset[x]",
      "sliceName" : "onsetDateTime",
      "short" : "Datum för konstaterande (alertInformationBody.ascertainedDate)",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.recordedDate",
      "path" : "AllergyIntolerance.recordedDate",
      "short" : "Registreringstidpunkt (alertInformationHeader.accountableHealthcareProfessional.authorTime)",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.recorder",
      "path" : "AllergyIntolerance.recorder",
      "short" : "Dokumentationsansvarig (alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSPractitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.asserter",
      "path" : "AllergyIntolerance.asserter",
      "short" : "Juridisk äkthetsintygsgivare (alertInformationHeader.legalAuthenticator.legalAuthenticatorHSAId)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSPractitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.note",
      "path" : "AllergyIntolerance.note",
      "short" : "Kommentar (alertInformationBody.alertInformationComment)",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.reaction",
      "path" : "AllergyIntolerance.reaction",
      "short" : "Reaktionsinformation (delar av hypersensitivity)",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.reaction.substance",
      "path" : "AllergyIntolerance.reaction.substance",
      "short" : "Läkemedelsprodukt (pharmaceuticalHypersensitivity.pharmaceuticalProductId → reaction.substance.coding med NPL-id)",
      "mustSupport" : true
    },
    {
      "id" : "AllergyIntolerance.reaction.severity",
      "path" : "AllergyIntolerance.reaction.severity",
      "short" : "Allvarlighetsgrad (hypersensitivity.degreeOfSeverity → ConceptMap till reaction.severity)",
      "mustSupport" : true
    }]
  }
}

```
