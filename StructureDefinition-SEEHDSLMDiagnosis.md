# GetDiagnosis - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetDiagnosis**

## Logical Model: GetDiagnosis 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMDiagnosis | *Version*:0.3.3 |
| Draft as of 2026-10-06 | *Computable Name*:SEEHDSLMDiagnosis |

 
Logisk modell för tjänstekontraktet GetDiagnosis (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetDiagnosisResponder:2). Representerar responsens informationsstruktur: registrerade diagnoser för en patient inklusive diagnoskod per ursprungligt diagnosticeringstillfälle. 

**Användningar:**

* Denna Logisk modell används inte av några profiler i denna implementationsguide

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSLMDiagnosis)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSLMDiagnosis.csv), [Excel](StructureDefinition-SEEHDSLMDiagnosis.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSLMDiagnosis",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMDiagnosis",
  "version" : "0.3.3",
  "name" : "SEEHDSLMDiagnosis",
  "title" : "GetDiagnosis",
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
  "description" : "Logisk modell för tjänstekontraktet GetDiagnosis\n(RIV-TA urn:riv:clinicalprocess:healthcond:description:GetDiagnosisResponder:2).\nRepresenterar responsens informationsstruktur: registrerade diagnoser för en patient\ninklusive diagnoskod per ursprungligt diagnosticeringstillfälle.",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMDiagnosis",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSLMDiagnosis",
      "path" : "SEEHDSLMDiagnosis",
      "short" : "GetDiagnosis",
      "definition" : "Logisk modell för tjänstekontraktet GetDiagnosis\n(RIV-TA urn:riv:clinicalprocess:healthcond:description:GetDiagnosisResponder:2).\nRepresenterar responsens informationsstruktur: registrerade diagnoser för en patient\ninklusive diagnoskod per ursprungligt diagnosticeringstillfälle."
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis",
      "path" : "SEEHDSLMDiagnosis.diagnosis",
      "short" : "Diagnos",
      "definition" : "De diagnoser som matchar begäran. En instans per diagnos.\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader",
      "short" : "Dokumenthuvud (PatientSummaryHeader)",
      "definition" : "Innehåller basinformation om dokumentet (PatientSummaryHeaderType).\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.documentId",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.documentId",
      "short" : "Dokumentets identitet",
      "definition" : "Dokumentets identitet som är unik inom källsystemet.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.sourceSystemHSAId",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.sourceSystemHSAId",
      "short" : "HSA-id för källsystem",
      "definition" : "HSA-id för det system som tillgängliggör informationen.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.documentTitle",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.documentTitle",
      "short" : "Titel (ej tillämpligt)",
      "definition" : "N/A — GetDiagnosis skickar inte documentTitle. Elementet är 0..0 per TKB.",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.documentTime",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.documentTime",
      "short" : "Tidpunkt (ej tillämpligt)",
      "definition" : "N/A — GetDiagnosis skickar inte documentTime. Elementet är 0..0 per TKB.",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.patientId",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.patientId",
      "short" : "Patientidentifierare",
      "definition" : "Identifierare för patient. id = patientens identifierare (12 tecken).\ntype = OID för typ av identifierare. För personnummer: 1.2.752.129.2.1.3.1.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional",
      "short" : "Ansvarig hälso- och sjukvårdsperson",
      "definition" : "Information om den hälso- och sjukvårdsperson som är ansvarig för informationen.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.authorTime",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.authorTime",
      "short" : "Tidpunkt för registrering",
      "definition" : "Tidpunkt då informationen registrerades. Format: YYYYMMDDhhmmss.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "short" : "Författarens HSA-id",
      "definition" : "Författarens HSA-id.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalName",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalName",
      "short" : "Namn på hälso- och sjukvårdspersonal",
      "definition" : "Namn på hälso- och sjukvårdspersonal. Om tillgängligt ska detta anges.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "short" : "Befattning",
      "definition" : "Information om personens befattning.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "short" : "Organisationsenhet",
      "definition" : "Den organisation som hälso- och sjukvårdspersonalen är uppdragstagare i.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "short" : "HSA-id för organisationsenhet",
      "definition" : "HSA-id för organisationsenhet.\nKardinalitet: Obligatorisk (inom OrgUnitType).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "short" : "Namn på organisationsenhet",
      "definition" : "Namnet på den organisation som hälso- och sjukvårdspersonalen är uppdragstagare i.\nKardinalitet: Obligatorisk (inom OrgUnitType).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "short" : "HSA-id för vårdenhet",
      "definition" : "HSA-id för vårdenhet. Se regel 1 i TKB.\nKardinalitet: Valfri (villkorlig, se regel 1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "short" : "HSA-id för vårdgivare",
      "definition" : "HSA-id för vårdgivaren, som är vårdgivare för den vårdenhet där personalen verkar.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.legalAuthenticator",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.legalAuthenticator",
      "short" : "Signerande person",
      "definition" : "Information om vem som signerat informationen i dokumentet.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.legalAuthenticator.signatureTime",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.legalAuthenticator.signatureTime",
      "short" : "Tidpunkt för signering",
      "definition" : "Tidpunkt för signering. Format: YYYYMMDDhhmmss.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "short" : "HSA-id för signerande person",
      "definition" : "HSA-id för person som signerat dokumentet.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorName",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.legalAuthenticator.legalAuthenticatorName",
      "short" : "Namn på signerande person",
      "definition" : "Namn i klartext för signerande person.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.approvedForPatient",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.approvedForPatient",
      "short" : "Godkänd för visning till patient",
      "definition" : "Anger om information får delas till patient.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.careContactId",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisHeader.careContactId",
      "short" : "Vårdkontakts-id",
      "definition" : "Identitet för den hälso- och sjukvårdskontakt som diagnosen dokumenterades vid.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisBody",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisBody",
      "short" : "Diagnosens innehåll",
      "definition" : "DiagnosisBodyType — diagnosens informationsinnehåll.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisBody.typeOfDiagnosis",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisBody.typeOfDiagnosis",
      "short" : "Typ av diagnos",
      "definition" : "Anges som HD (huvuddiagnos) eller BY (bidiagnos) från kv_diagnostyp. Se DiagnosisTypeCS/DiagnosisTypeVS.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehds-tk/ValueSet/diagnosistype-vs"
      }
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisBody.chronicDiagnosis",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisBody.chronicDiagnosis",
      "short" : "Kronisk diagnos",
      "definition" : "Sätts till true om diagnosen är kronisk, false om den inte är kronisk.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisBody.diagnosisTime",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisBody.diagnosisTime",
      "short" : "Tidpunkt för diagnos",
      "definition" : "Tidpunkt då bedömningen gjordes. Format: YYYYMMDDhhmmss.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisBody.diagnosisCode",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisBody.diagnosisCode",
      "short" : "Diagnoskod",
      "definition" : "Diagnoskod. Normalt ICD-10-SE (OID okänt — se ASSUME-001 i QUESTIONS.md).\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisBody.relatedDiagnosis",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisBody.relatedDiagnosis",
      "short" : "Relaterad diagnos",
      "definition" : "Relaterad diagnos. Associationen används för att koppla en bidiagnos till sin huvuddiagnos.\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.diagnosis.diagnosisBody.relatedDiagnosis.documentId",
      "path" : "SEEHDSLMDiagnosis.diagnosis.diagnosisBody.relatedDiagnosis.documentId",
      "short" : "Relaterad diagnos dokumentid",
      "definition" : "Unik identitet för den relaterade diagnosen.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.result",
      "path" : "SEEHDSLMDiagnosis.result",
      "short" : "Resultat",
      "definition" : "Innehåller information om begäran gick bra eller ej.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.result.resultCode",
      "path" : "SEEHDSLMDiagnosis.result.resultCode",
      "short" : "Resultatkod",
      "definition" : "Kan endast vara OK, INFO eller ERROR.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.result.errorCode",
      "path" : "SEEHDSLMDiagnosis.result.errorCode",
      "short" : "Felkod",
      "definition" : "Sätts endast om resultCode är ERROR. Tillåtna värden: INVALID_REQUEST.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.result.logId",
      "path" : "SEEHDSLMDiagnosis.result.logId",
      "short" : "Log-id",
      "definition" : "En UUID som kan användas vid felanmälan för att spåra felet.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMDiagnosis.result.message",
      "path" : "SEEHDSLMDiagnosis.result.message",
      "short" : "Meddelande",
      "definition" : "En beskrivande text som kan visas för användaren.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
