# GetImagingOutcome - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetImagingOutcome**

## Logical Model: GetImagingOutcome 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMImagingOutcome | *Version*:0.3.3 |
| Draft as of 2026-10-07 | *Computable Name*:SEEHDSLMImagingOutcome |

 
Logisk modell för tjänstekontraktet GetImagingOutcome (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetImagingOutcome:1). Representerar responsens informationsstruktur — bilddiagnostiska resultat för en patient. Baseras på NPÖ RIV 2.2.0-specifikation. 

**Användningar:**

* Denna Logisk modell används inte av några profiler i denna implementationsguide

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSLMImagingOutcome)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSLMImagingOutcome.csv), [Excel](StructureDefinition-SEEHDSLMImagingOutcome.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSLMImagingOutcome",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMImagingOutcome",
  "version" : "0.3.3",
  "name" : "SEEHDSLMImagingOutcome",
  "title" : "GetImagingOutcome",
  "status" : "draft",
  "date" : "2026-10-07T11:49:57+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetImagingOutcome\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetImagingOutcome:1).\nRepresenterar responsens informationsstruktur — bilddiagnostiska resultat\nför en patient. Baseras på NPÖ RIV 2.2.0-specifikation.",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMImagingOutcome",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSLMImagingOutcome",
      "path" : "SEEHDSLMImagingOutcome",
      "short" : "GetImagingOutcome",
      "definition" : "Logisk modell för tjänstekontraktet GetImagingOutcome\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetImagingOutcome:1).\nRepresenterar responsens informationsstruktur — bilddiagnostiska resultat\nför en patient. Baseras på NPÖ RIV 2.2.0-specifikation."
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome",
      "short" : "Bilddiagnostiskt resultat (ett per undersökning)",
      "definition" : "Bilddiagnostiskt resultat (ett per undersökning)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader",
      "short" : "PatientSummaryHeader",
      "definition" : "PatientSummaryHeader",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.documentId",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.documentId",
      "short" : "Dokumentets unika id",
      "definition" : "Dokumentets unika id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.sourceSystemHSAId",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.sourceSystemHSAId",
      "short" : "Källsystemets HSA-id",
      "definition" : "Källsystemets HSA-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.documentTitle",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.documentTitle",
      "short" : "Dokumentets titel",
      "definition" : "Dokumentets titel",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.documentTime",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.documentTime",
      "short" : "Dokumentets tidpunkt",
      "definition" : "Dokumentets tidpunkt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.patientId",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.patientId",
      "short" : "Patientens id",
      "definition" : "Patientens id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.patientId.value",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.patientId.value",
      "short" : "Patientens personnummer/samordningsnummer",
      "definition" : "Patientens personnummer/samordningsnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.patientId.system",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.patientId.system",
      "short" : "OID för identifierartyp (t.ex. urn:oid:1.2.752.129.2.1.3.1)",
      "definition" : "OID för identifierartyp (t.ex. urn:oid:1.2.752.129.2.1.3.1)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional",
      "short" : "Ansvarig hälso- och sjukvårdspersonal",
      "definition" : "Ansvarig hälso- och sjukvårdspersonal",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.authorTime",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.authorTime",
      "short" : "Tidpunkt",
      "definition" : "Tidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "short" : "HSA-id",
      "definition" : "HSA-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalName",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalName",
      "short" : "Namn",
      "definition" : "Namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "short" : "Yrkesroll",
      "definition" : "Yrkesroll",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "short" : "Org-enhet",
      "definition" : "Org-enhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "short" : "OrgUnit HSA-id",
      "definition" : "OrgUnit HSA-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "short" : "OrgUnit namn",
      "definition" : "OrgUnit namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "short" : "Telefon",
      "definition" : "Telefon",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "short" : "E-post",
      "definition" : "E-post",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "short" : "Adress",
      "definition" : "Adress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "short" : "Plats",
      "definition" : "Plats",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "short" : "Vårdenhetens HSA-id",
      "definition" : "Regel 1: Används för spärrhantering och åtkomstkontroll.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "short" : "Vårdgivarens HSA-id",
      "definition" : "Regel 1: Används för spärrhantering och åtkomstkontroll.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.legalAuthenticator",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.legalAuthenticator",
      "short" : "Juridiskt ansvarig",
      "definition" : "Juridiskt ansvarig",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.legalAuthenticator.signatureTime",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.legalAuthenticator.signatureTime",
      "short" : "Signeringstidpunkt",
      "definition" : "Signeringstidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "short" : "HSA-id",
      "definition" : "HSA-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.legalAuthenticator.legalAuthenticatorName",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.legalAuthenticator.legalAuthenticatorName",
      "short" : "Namn",
      "definition" : "Namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.approvedForPatient",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.approvedForPatient",
      "short" : "Godkänd för patientvisning",
      "definition" : "Godkänd för patientvisning",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.careContactId",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.careContactId",
      "short" : "Vårdkontaktid",
      "definition" : "Vårdkontaktid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.nullified",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.nullified",
      "short" : "Makulerad",
      "definition" : "Makulerad",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.nullifiedReason",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeHeader.nullifiedReason",
      "short" : "Makuleringsorsak",
      "definition" : "Makuleringsorsak",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody",
      "short" : "Bilddiagnostisk information",
      "definition" : "Bilddiagnostisk information",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.examinationSpeciality",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.examinationSpeciality",
      "short" : "Undersökningsspecialitet",
      "definition" : "Undersökningsspecialitet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.typeOfResult",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.typeOfResult",
      "short" : "Typ av resultat",
      "definition" : "Kodas enligt TypeOfResultCodeEnum. Se QUESTIONS.md ASSUME-003.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.resultTime",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.resultTime",
      "short" : "Resultatets tidpunkt",
      "definition" : "Resultatets tidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.resultReport",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.resultReport",
      "short" : "Resultatrapport (fritext)",
      "definition" : "Resultatrapport (fritext)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.resultComment",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.resultComment",
      "short" : "Kommentar till resultatet",
      "definition" : "Kommentar till resultatet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.radiationDose",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.radiationDose",
      "short" : "Stråldos",
      "definition" : "Stråldos",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.patientData",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.patientData",
      "short" : "Patientdata vid undersökningstillfälle",
      "definition" : "Patientdata vid undersökningstillfälle",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.patientData.patientWeight",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.patientData.patientWeight",
      "short" : "Patientens vikt",
      "definition" : "Patientens vikt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.patientData.patientLength",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.patientData.patientLength",
      "short" : "Patientens längd",
      "definition" : "Patientens längd",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording",
      "short" : "Bildtagning",
      "definition" : "Bildtagning",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.recordingId",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.recordingId",
      "short" : "Bildtagningens id",
      "definition" : "Bildtagningens id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.examinationActivity",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.examinationActivity",
      "short" : "Undersökningsaktivitet",
      "definition" : "Undersökningsaktivitet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.examinationTimePeriod",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.examinationTimePeriod",
      "short" : "Undersökningsperiod",
      "definition" : "Undersökningsperiod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.examinationStatus",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.examinationStatus",
      "short" : "Undersökningsstatus",
      "definition" : "Undersökningsstatus",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.examinationUnit",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.examinationUnit",
      "short" : "Undersökningsenhet",
      "definition" : "Undersökningsenhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional",
      "short" : "Ansvarig personal",
      "definition" : "Ansvarig personal",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.authorTime",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.authorTime",
      "short" : "Tidpunkt",
      "definition" : "Tidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "short" : "HSA-id",
      "definition" : "HSA-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalName",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalName",
      "short" : "Namn",
      "definition" : "Namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "short" : "Yrkesroll",
      "definition" : "Yrkesroll",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "short" : "Org-enhet",
      "definition" : "Org-enhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.numberOfImages",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.numberOfImages",
      "short" : "Antal bilder",
      "definition" : "Antal bilder",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.modalityData",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.modalityData",
      "short" : "Modalitetsdata",
      "definition" : "Modalitetsdata",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.typeOfModality",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.typeOfModality",
      "short" : "Modalitetstyp (t.ex. CT, MR)",
      "definition" : "Modalitetstyp (t.ex. CT, MR)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.manufacturer",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.manufacturer",
      "short" : "Tillverkare",
      "definition" : "Tillverkare",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.modelName",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.modelName",
      "short" : "Modellnamn",
      "definition" : "Modellnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.equipmentId",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.equipmentId",
      "short" : "Utrustningens id",
      "definition" : "Utrustningens id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.softwareVersion",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.modalityData.softwareVersion",
      "short" : "Programvaruversion",
      "definition" : "Programvaruversion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData",
      "short" : "DICOM-bilddata",
      "definition" : "DICOM-bilddata",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData.dicomSOP",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData.dicomSOP",
      "short" : "DICOM SOP (UID)",
      "definition" : "DICOM SOP (UID)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData.dicomValue",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData.dicomValue",
      "short" : "DICOM binärdata",
      "definition" : "DICOM binärdata",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData.dicomReference",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageDicomData.dicomReference",
      "short" : "Referens till DICOM-bild",
      "definition" : "Referens till DICOM-bild",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "url"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData",
      "short" : "Strukturerad bilddata",
      "definition" : "Strukturerad bilddata",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.aperture",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.aperture",
      "short" : "Bländare",
      "definition" : "Bländare",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.exposureTime",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.exposureTime",
      "short" : "Exponeringstid",
      "definition" : "Exponeringstid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageCreationTime",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageCreationTime",
      "short" : "Bildskapningstidpunkt",
      "definition" : "Bildskapningstidpunkt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.bodyPartExamined",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.bodyPartExamined",
      "short" : "Undersökt kroppsdel",
      "definition" : "Undersökt kroppsdel",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.contrastAgentUsed",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.contrastAgentUsed",
      "short" : "Kontrastmedel",
      "definition" : "Kontrastmedel",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.magneticFieldStrength",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.magneticFieldStrength",
      "short" : "Magnetfältstyrka",
      "definition" : "Magnetfältstyrka",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.copyright",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.copyright",
      "short" : "Upphovsrätt",
      "definition" : "Upphovsrätt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData",
      "short" : "Bilddata",
      "definition" : "Bilddata",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.mediaType",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.mediaType",
      "short" : "Medietyp",
      "definition" : "Medietyp",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.value",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.value",
      "short" : "Binär bild",
      "definition" : "Binär bild",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.reference",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.reference",
      "short" : "Referens-URL",
      "definition" : "Referens-URL",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "url"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.burnedInAnnotations",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.imageRecording.imageStructuredData.imageData.burnedInAnnotations",
      "short" : "Inbrända annotationer",
      "definition" : "Inbrända annotationer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral",
      "short" : "Kopplad remiss",
      "definition" : "Kopplad remiss",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.referralId",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.referralId",
      "short" : "Remissens id",
      "definition" : "Remissens id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.referralReason",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.referralReason",
      "short" : "Remissorsak",
      "definition" : "Remissorsak",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.anamnesis",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.anamnesis",
      "short" : "Anamnes",
      "definition" : "Anamnes",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.careContactId",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.careContactId",
      "short" : "Vårdkontaktid",
      "definition" : "Vårdkontaktid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional",
      "short" : "Remittent",
      "definition" : "Remittent",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.authorTime",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.authorTime",
      "short" : "Tidpunkt",
      "definition" : "Tidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "short" : "HSA-id",
      "definition" : "HSA-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalName",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalName",
      "short" : "Namn",
      "definition" : "Namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "short" : "Yrkesroll",
      "definition" : "Yrkesroll",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "short" : "Org-enhet (obligatorisk i remissen)",
      "definition" : "Org-enhet (obligatorisk i remissen)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "short" : "OrgUnit HSA-id",
      "definition" : "OrgUnit HSA-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "short" : "OrgUnit namn",
      "definition" : "OrgUnit namn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "short" : "Telefon",
      "definition" : "Telefon",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "short" : "E-post",
      "definition" : "E-post",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "short" : "Adress",
      "definition" : "Adress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "short" : "Plats",
      "definition" : "Plats",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.attested",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.attested",
      "short" : "Attestering",
      "definition" : "Attestering",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.attested.signatureTime",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.attested.signatureTime",
      "short" : "Attesttidpunkt",
      "definition" : "Attesttidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.attested.legalAuthenticatorHSAId",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.attested.legalAuthenticatorHSAId",
      "short" : "HSA-id",
      "definition" : "HSA-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.attested.legalAuthenticatorName",
      "path" : "SEEHDSLMImagingOutcome.imagingOutcome.imagingOutcomeBody.referral.attested.legalAuthenticatorName",
      "short" : "Namn",
      "definition" : "Namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
