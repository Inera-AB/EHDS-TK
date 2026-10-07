# GetReferralOutcome - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetReferralOutcome**

## Logical Model: GetReferralOutcome 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMReferralOutcome | *Version*:0.3.3 |
| Draft as of 2026-10-07 | *Computable Name*:SEEHDSLMReferralOutcome |

 
Logisk modell för tjänstekontraktet GetReferralOutcome (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcome:3). Representerar responsens informationsstruktur — svar på konsultationsremiss och begäran om övertagande av vårdansvar. Meddelandeformatet är kompatibelt med HL7v3 CDA v.2. 

**Användningar:**

* Denna Logisk modell används inte av några profiler i denna implementationsguide

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSLMReferralOutcome)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSLMReferralOutcome.csv), [Excel](StructureDefinition-SEEHDSLMReferralOutcome.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSLMReferralOutcome",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMReferralOutcome",
  "version" : "0.3.3",
  "name" : "SEEHDSLMReferralOutcome",
  "title" : "GetReferralOutcome",
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
  "description" : "Logisk modell för tjänstekontraktet GetReferralOutcome\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcome:3).\nRepresenterar responsens informationsstruktur — svar på konsultationsremiss\noch begäran om övertagande av vårdansvar. Meddelandeformatet är kompatibelt\nmed HL7v3 CDA v.2.",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMReferralOutcome",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSLMReferralOutcome",
      "path" : "SEEHDSLMReferralOutcome",
      "short" : "GetReferralOutcome",
      "definition" : "Logisk modell för tjänstekontraktet GetReferralOutcome\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcome:3).\nRepresenterar responsens informationsstruktur — svar på konsultationsremiss\noch begäran om övertagande av vårdansvar. Meddelandeformatet är kompatibelt\nmed HL7v3 CDA v.2."
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome",
      "short" : "Remissvar (ett per remiss)",
      "definition" : "Remissvar (ett per remiss)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader",
      "short" : "PatientSummaryHeader",
      "definition" : "PatientSummaryHeader",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.documentId",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.documentId",
      "short" : "Dokumentets unika id",
      "definition" : "Dokumentets unika id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.sourceSystemHSAId",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.sourceSystemHSAId",
      "short" : "Källsystemets HSA-id",
      "definition" : "Källsystemets HSA-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.documentTitle",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.documentTitle",
      "short" : "Dokumentets titel",
      "definition" : "Dokumentets titel",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.documentTime",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.documentTime",
      "short" : "Dokumentets tidpunkt",
      "definition" : "Dokumentets tidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.patientId",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.patientId",
      "short" : "Patientens id",
      "definition" : "Patientens id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.patientId.value",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.patientId.value",
      "short" : "Patientens personnummer/samordningsnummer",
      "definition" : "Patientens personnummer/samordningsnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.patientId.system",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.patientId.system",
      "short" : "OID för typ av identifierare (t.ex. urn:oid:1.2.752.129.2.1.3.1)",
      "definition" : "OID för typ av identifierare (t.ex. urn:oid:1.2.752.129.2.1.3.1)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional",
      "short" : "Ansvarig hälso- och sjukvårdspersonal",
      "definition" : "Ansvarig hälso- och sjukvårdspersonal",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.authorTime",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.authorTime",
      "short" : "Tidpunkt för dokumentation",
      "definition" : "Tidpunkt för dokumentation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "short" : "Personalens HSA-id",
      "definition" : "Personalens HSA-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalName",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalName",
      "short" : "Personalens namn",
      "definition" : "Personalens namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "short" : "Yrkesroll",
      "definition" : "Yrkesroll",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "short" : "Organisationsenhet",
      "definition" : "Organisationsenhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "short" : "OrgUnit HSA-id",
      "definition" : "OrgUnit HSA-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "short" : "OrgUnit namn",
      "definition" : "OrgUnit namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "short" : "Telefon",
      "definition" : "Telefon",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "short" : "E-post",
      "definition" : "E-post",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "short" : "Adress",
      "definition" : "Adress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "short" : "Plats",
      "definition" : "Plats",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "short" : "Vårdenhetens HSA-id",
      "definition" : "Regel 1: Krävs för spärrhantering och åtkomstkontroll.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "short" : "Vårdgivarens HSA-id",
      "definition" : "Regel 1: Krävs för spärrhantering och åtkomstkontroll.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.legalAuthenticator",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.legalAuthenticator",
      "short" : "Juridiskt ansvarig",
      "definition" : "Juridiskt ansvarig",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.legalAuthenticator.signatureTime",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.legalAuthenticator.signatureTime",
      "short" : "Signeringstidpunkt",
      "definition" : "Signeringstidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "short" : "HSA-id",
      "definition" : "HSA-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.legalAuthenticator.legalAuthenticatorName",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.legalAuthenticator.legalAuthenticatorName",
      "short" : "Namn",
      "definition" : "Namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.approvedForPatient",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.approvedForPatient",
      "short" : "Godkänd för patientvisning",
      "definition" : "Godkänd för patientvisning",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.careContactId",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeHeader.careContactId",
      "short" : "Vårdkontaktid",
      "definition" : "Vårdkontaktid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody",
      "short" : "Remissvarsinformation",
      "definition" : "Remissvarsinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referralOutcomeTypeCode",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referralOutcomeTypeCode",
      "short" : "Typ av remissvar",
      "definition" : "Kodas enligt referralOutcomeTypeCodeEnum. Se QUESTIONS.md ASSUME-002 angående canonicalURL.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referralOutcomeTitle",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referralOutcomeTitle",
      "short" : "Remissvarets titel",
      "definition" : "Remissvarets titel",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referralOutcomeText",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referralOutcomeText",
      "short" : "Remissvarets text",
      "definition" : "Remissvarets text",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.clinicalInformation",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.clinicalInformation",
      "short" : "Klinisk information",
      "definition" : "Klinisk information",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationCode",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationCode",
      "short" : "Klinisk informationskod",
      "definition" : "Klinisk informationskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationText",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationText",
      "short" : "Klinisk informationstext",
      "definition" : "Klinisk informationstext",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.act",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.act",
      "short" : "Åtgärd",
      "definition" : "Åtgärd",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.act.actId",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.act.actId",
      "short" : "Åtgärdens id",
      "definition" : "Åtgärdens id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.act.actCode",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.act.actCode",
      "short" : "Åtgärdskod",
      "definition" : "Åtgärdskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.act.actText",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.act.actText",
      "short" : "Åtgärdstext",
      "definition" : "Åtgärdstext",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.act.actTime",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.act.actTime",
      "short" : "Tidpunkt för åtgärd",
      "definition" : "Tidpunkt för åtgärd",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.act.actResult",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.act.actResult",
      "short" : "Resultat (multimedia)",
      "definition" : "Resultat (multimedia)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.act.actResult.mediaType",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.act.actResult.mediaType",
      "short" : "Medietyp",
      "definition" : "Medietyp",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.act.actResult.value",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.act.actResult.value",
      "short" : "Binärt innehåll",
      "definition" : "Binärt innehåll",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.act.actResult.reference",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.act.actResult.reference",
      "short" : "Referens-URL",
      "definition" : "Referens-URL",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "url"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.attested",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.attested",
      "short" : "Attestering",
      "definition" : "Attestering",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.attested.attestedTime",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.attested.attestedTime",
      "short" : "Attest-tidpunkt",
      "definition" : "Attest-tidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.attested.attesterHSAId",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.attested.attesterHSAId",
      "short" : "Attesterarens HSA-id",
      "definition" : "Attesterarens HSA-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.attested.attesterName",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.attested.attesterName",
      "short" : "Attesterarens namn",
      "definition" : "Attesterarens namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referral",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referral",
      "short" : "Remissens uppgifter",
      "definition" : "Remissens uppgifter",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referral.referralId",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referral.referralId",
      "short" : "Remissens id",
      "definition" : "Remissens id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referral.referralReason",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referral.referralReason",
      "short" : "Remissorsak",
      "definition" : "Remissorsak",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referral.referralTime",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referral.referralTime",
      "short" : "Remisstidpunkt",
      "definition" : "Remisstidpunkt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor",
      "short" : "Remittent",
      "definition" : "Remittent",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor.authorTime",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor.authorTime",
      "short" : "Tidpunkt",
      "definition" : "Tidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalHSAId",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalHSAId",
      "short" : "HSA-id",
      "definition" : "HSA-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalName",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalName",
      "short" : "Namn",
      "definition" : "Namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalRoleCode",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalRoleCode",
      "short" : "Yrkesroll",
      "definition" : "Yrkesroll",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit",
      "short" : "Org-enhet",
      "definition" : "Org-enhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referral.careContactId",
      "path" : "SEEHDSLMReferralOutcome.referralOutcome.referralOutcomeBody.referral.careContactId",
      "short" : "Vårdkontaktid",
      "definition" : "Vårdkontaktid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
