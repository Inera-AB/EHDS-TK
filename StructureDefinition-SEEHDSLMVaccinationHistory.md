# GetVaccinationHistory - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetVaccinationHistory**

## Logical Model: GetVaccinationHistory 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMVaccinationHistory | *Version*:0.3.3 |
| Draft as of 2026-10-06 | *Computable Name*:SEEHDSLMVaccinationHistory |

 
Logisk modell för tjänstekontraktet GetVaccinationHistory (RIV-TA urn:riv:clinicalprocess:activityprescription:actoutcome:GetVaccinationHistoryResponder:2). Representerar responsens informationsstruktur — vaccinationsjournal per patient. 

**Användningar:**

* Denna Logisk modell används inte av några profiler i denna implementationsguide

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSLMVaccinationHistory)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSLMVaccinationHistory.csv), [Excel](StructureDefinition-SEEHDSLMVaccinationHistory.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSLMVaccinationHistory",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMVaccinationHistory",
  "version" : "0.3.3",
  "name" : "SEEHDSLMVaccinationHistory",
  "title" : "GetVaccinationHistory",
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
  "description" : "Logisk modell för tjänstekontraktet GetVaccinationHistory\n(RIV-TA urn:riv:clinicalprocess:activityprescription:actoutcome:GetVaccinationHistoryResponder:2).\nRepresenterar responsens informationsstruktur — vaccinationsjournal per patient.",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMVaccinationHistory",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSLMVaccinationHistory",
      "path" : "SEEHDSLMVaccinationHistory",
      "short" : "GetVaccinationHistory",
      "definition" : "Logisk modell för tjänstekontraktet GetVaccinationHistory\n(RIV-TA urn:riv:clinicalprocess:activityprescription:actoutcome:GetVaccinationHistoryResponder:2).\nRepresenterar responsens informationsstruktur — vaccinationsjournal per patient."
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord",
      "short" : "En strukturerad vaccinationsjournal",
      "definition" : "En strukturerad vaccinationsjournal. Kan innehålla en eller flera administreringsposter.\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader",
      "short" : "Basinformation om dokumentet",
      "definition" : "Basinformation om dokumentet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentId",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentId",
      "short" : "Identifierare för uppgift i patientjournal",
      "definition" : "Identifieraren ska vara konsistent och beständig mellan anrop.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.sourceSystemHSAId",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.sourceSystemHSAId",
      "short" : "Det källsystem som uppgiften lagras i",
      "definition" : "Sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTitle",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTitle",
      "short" : "Titel som beskriver informationen",
      "definition" : "Titel som beskriver informationen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTime",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTime",
      "short" : "Händelsetidpunkt (vaccinationstidpunkt)",
      "definition" : "Händelsetidpunkt (vaccinationstidpunkt)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.patientId",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.patientId",
      "short" : "Personidentifierare för patienten",
      "definition" : "id = patientens identifierare (12 tecken utan avskiljare).\ntype = OID för typ av personidentifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional",
      "short" : "Dokumentationsansvarig",
      "definition" : "Dokumentationsansvarig",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.authorTime",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.authorTime",
      "short" : "Tidpunkt för dokumentation",
      "definition" : "Tidpunkt för dokumentation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalHSAId",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalHSAId",
      "short" : "HSA-id för personal",
      "definition" : "HSA-id för personal",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalName",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalName",
      "short" : "Namn på personal",
      "definition" : "Namn på personal",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalRoleCode",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalRoleCode",
      "short" : "Befattning",
      "definition" : "Befattning",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit",
      "short" : "Organisationsenhet",
      "definition" : "Organisationsenhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "short" : "HSA-id för organisationsenhet",
      "definition" : "HSA-id för organisationsenhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "short" : "Namn på organisationsenhet",
      "definition" : "Namn på organisationsenhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "short" : "Telefon till organisationsenhet",
      "definition" : "Telefon till organisationsenhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "short" : "E-post till organisationsenhet",
      "definition" : "E-post till organisationsenhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "short" : "Postadress till organisationsenhet",
      "definition" : "Postadress till organisationsenhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "short" : "Plats/ort för organisationens fysiska placering",
      "definition" : "Plats/ort för organisationens fysiska placering",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalCareUnitHSAId",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalCareUnitHSAId",
      "short" : "HSA-id för vårdenhet",
      "definition" : "HSA-id för vårdenhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalCareGiverHSAId",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalCareGiverHSAId",
      "short" : "HSA-id/id för vårdgivare",
      "definition" : "HSA-id/id för vårdgivare",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator",
      "short" : "Information om signering",
      "definition" : "Information om signering",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.signatureTime",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.signatureTime",
      "short" : "Tidpunkt för signering",
      "definition" : "Tidpunkt för signering",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "short" : "HSA-id för signerande personal",
      "definition" : "HSA-id för signerande personal",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName",
      "short" : "Namn på signerande personal",
      "definition" : "Namn på signerande personal",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.approvedForPatient",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.approvedForPatient",
      "short" : "Beslut om synlighet för patient (PDL-prövning)",
      "definition" : "Beslut om synlighet för patient (PDL-prövning)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.careContactId",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.careContactId",
      "short" : "Identitet för vård- och omsorgskontakt",
      "definition" : "Identitet för vård- och omsorgskontakt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullified",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullified",
      "short" : "Anger om dokumentet makulerats i källsystemet",
      "definition" : "Anger om dokumentet makulerats i källsystemet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullifiedReason",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullifiedReason",
      "short" : "Orsak till makulering. Villkor: Får ENBART anges om nullified = true.",
      "definition" : "Orsak till makulering. Villkor: Får ENBART anges om nullified = true.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody",
      "short" : "Vaccinationsjournalens innehåll",
      "definition" : "Vaccinationsjournalens innehåll",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord",
      "short" : "Administrativ information om vaccinationstillfället",
      "definition" : "Administrativ information om vaccinationstillfället",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.date",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.date",
      "short" : "Datum då vaccination(er) gavs",
      "definition" : "Datum då vaccination(er) gavs",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientPostalCode",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientPostalCode",
      "short" : "Postnummer för patientens senast kända bostadsadress",
      "definition" : "Postnummer för patientens senast kända bostadsadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.vaccinationUnstructuredNote",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.vaccinationUnstructuredNote",
      "short" : "Fritextsammanfattning av strukturerad information",
      "definition" : "Fritextsammanfattning av strukturerad information",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.riskCategory",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.riskCategory",
      "short" : "Patientens riskgruppstillhörighet vid vaccinationstillfället",
      "definition" : "Patientens riskgruppstillhörighet vid vaccinationstillfället",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientAdverseEffect",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientAdverseEffect",
      "short" : "Reaktioner hos patienten vid vaccinationstillfället",
      "definition" : "Reaktioner hos patienten vid vaccinationstillfället",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg",
      "short" : "Information om juridisk vårdgivare",
      "definition" : "Information om juridisk vårdgivare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitHSAId",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitHSAId",
      "short" : "HSA-id för organisationsenhet",
      "definition" : "HSA-id för organisationsenhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitName",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitName",
      "short" : "Namn på organisationsenhet",
      "definition" : "Namn på organisationsenhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitTelecom",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitTelecom",
      "short" : "Telefon",
      "definition" : "Telefon",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitEmail",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitEmail",
      "short" : "E-post",
      "definition" : "E-post",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitAddress",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitAddress",
      "short" : "Postadress",
      "definition" : "Postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitLocation",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitLocation",
      "short" : "Plats/ort",
      "definition" : "Plats/ort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact",
      "short" : "Kontaktperson hos juridiskt ansvarig vårdgivare",
      "definition" : "Kontaktperson hos juridiskt ansvarig vårdgivare",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.actorId",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.actorId",
      "short" : "Identifierare för aktören",
      "definition" : "Identifierare för aktören",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.actorName",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.actorName",
      "short" : "Namn på aktören",
      "definition" : "Namn på aktören",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemName",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemName",
      "short" : "Klartextnamn på källsystemet/organisationen",
      "definition" : "Klartextnamn på källsystemet/organisationen",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductName",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductName",
      "short" : "Källsystemets produktnamn",
      "definition" : "Källsystemets produktnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductVersion",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductVersion",
      "short" : "Källsystemets produktversion",
      "definition" : "Källsystemets produktversion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact",
      "short" : "Kontaktuppgifter till källsystemsansvarig",
      "definition" : "Kontaktuppgifter till källsystemsansvarig",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.actorId",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.actorId",
      "short" : "Identifierare",
      "definition" : "Identifierare",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.actorName",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.actorName",
      "short" : "Namn",
      "definition" : "Namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careUnitSmiId",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careUnitSmiId",
      "short" : "Utförande vårdenhetens registreringsId hos SMI (Folkhälsomyndigheten)",
      "definition" : "Utförande vårdenhetens registreringsId hos SMI (Folkhälsomyndigheten)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord",
      "short" : "Information om utförd vaccination",
      "definition" : "Information om utförd vaccination",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationProgramName",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationProgramName",
      "short" : "Information om vaccinationsprogram",
      "definition" : "Information om vaccinationsprogram",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg",
      "short" : "Information om var vaccinationen ordinerats",
      "definition" : "Information om var vaccinationen ordinerats",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitHSAId",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitHSAId",
      "short" : "HSA-id",
      "definition" : "HSA-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitName",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitName",
      "short" : "Namn",
      "definition" : "Namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson",
      "short" : "Information om vem som ordinerat/förskrivit",
      "definition" : "Information om vem som ordinerat/förskrivit",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.actorId",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.actorId",
      "short" : "Identifierare",
      "definition" : "Identifierare",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.actorName",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.actorName",
      "short" : "Namn",
      "definition" : "Namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg",
      "short" : "Information om vårdenhet som utfört vaccinationen",
      "definition" : "Information om vårdenhet som utfört vaccinationen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitHSAId",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitHSAId",
      "short" : "HSA-id",
      "definition" : "HSA-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitName",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitName",
      "short" : "Namn",
      "definition" : "Namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer",
      "short" : "Information om vem som administrerat vaccineringen",
      "definition" : "Information om vem som administrerat vaccineringen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.actorId",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.actorId",
      "short" : "Identifierare",
      "definition" : "Identifierare",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.actorName",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.actorName",
      "short" : "Namn",
      "definition" : "Namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.anatomicalSite",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.anatomicalSite",
      "short" : "Var på kroppen vaccinet givits",
      "definition" : "Var på kroppen vaccinet givits",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.route",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.route",
      "short" : "Hur vaccinet givits (administrationsväg)",
      "definition" : "Hur vaccinet givits (administrationsväg)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose",
      "short" : "Mängd vaccin som givits",
      "definition" : "Mängd vaccin som givits",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose.quantity",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose.quantity",
      "short" : "Mängd preparat som givits (strukturerad form)",
      "definition" : "Mängd preparat som givits (strukturerad form)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose.displayName",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose.displayName",
      "short" : "Fritextbeskrivning av mängd vaccin, t.ex. '1 ml'",
      "definition" : "Fritextbeskrivning av mängd vaccin, t.ex. '1 ml'",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.isDoseComplete",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.isDoseComplete",
      "short" : "True om vaccinering räknas som hel dos",
      "definition" : "True om vaccinering räknas som hel dos",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.doseOrdinalNumber",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.doseOrdinalNumber",
      "short" : "Anger vilken dos i ordningen",
      "definition" : "Anger vilken dos i ordningen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.numberOfPrescribedDoses",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.numberOfPrescribedDoses",
      "short" : "Antal delvaccinationer för hel dos",
      "definition" : "Antal delvaccinationer för hel dos",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.sourceDescription",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.sourceDescription",
      "short" : "Fritext om källa för efterregistrerad vaccinering",
      "definition" : "Fritext om källa för efterregistrerad vaccinering",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentPrescription",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentPrescription",
      "short" : "Fritext: instruktioner från ordination",
      "definition" : "Fritext: instruktioner från ordination",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentAdministration",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentAdministration",
      "short" : "Fritext: kommentarer vid vaccinering",
      "definition" : "Fritext: kommentarer vid vaccinering",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.patientAdverseEffect",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.patientAdverseEffect",
      "short" : "Reaktioner för det specifika administreringstillfället",
      "definition" : "Reaktioner för det specifika administreringstillfället",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.typeOfVaccine",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.typeOfVaccine",
      "short" : "Vaccintyp (vilka sjukdomar vaccinet skyddar emot)",
      "definition" : "Vaccintyp (vilka sjukdomar vaccinet skyddar emot)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineName",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineName",
      "short" : "Vaccinets produktnamn (NPL-id rekommenderas)",
      "definition" : "Vaccinets produktnamn (NPL-id rekommenderas)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineBatchId",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineBatchId",
      "short" : "Batchnummer för vaccinets tillverkning",
      "definition" : "Batchnummer för vaccinets tillverkning",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineManufacturer",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineManufacturer",
      "short" : "Namn på vaccintillverkaren",
      "definition" : "Namn på vaccintillverkaren",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineTargetDisease",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineTargetDisease",
      "short" : "Sjukdomar vaccinet skyddar emot",
      "definition" : "Sjukdomar vaccinet skyddar emot",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationUniqueReference",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationUniqueReference",
      "short" : "Unik referens till källsystemets vaccinationsinformation",
      "definition" : "Unik referens till källsystemets vaccinationsinformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation",
      "short" : "Ytterligare patientinformation",
      "definition" : "Ytterligare patientinformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation.dateOfBirth",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation.dateOfBirth",
      "short" : "Patientens födelsedatum",
      "definition" : "Patientens födelsedatum",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation.gender",
      "path" : "SEEHDSLMVaccinationHistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation.gender",
      "short" : "Patientens kön. KV Kön (OID 1.2.752.129.2.2.1.1) bör användas. CVType-begränsning (Regel): originalText är förbjudet (0..0) — code, codeSystem och displayName ska anges.",
      "definition" : "Patientens kön. KV Kön (OID 1.2.752.129.2.2.1.1) bör användas. CVType-begränsning (Regel): originalText är förbjudet (0..0) — code, codeSystem och displayName ska anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.result",
      "path" : "SEEHDSLMVaccinationHistory.result",
      "short" : "Svarsstatus",
      "definition" : "Svarsstatus",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.result.resultCode",
      "path" : "SEEHDSLMVaccinationHistory.result.resultCode",
      "short" : "OK, INFO eller ERROR",
      "definition" : "OK, INFO eller ERROR",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehds-tk/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.result.errorCode",
      "path" : "SEEHDSLMVaccinationHistory.result.errorCode",
      "short" : "Sätts om resultCode är ERROR",
      "definition" : "Sätts om resultCode är ERROR",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehds-tk/ValueSet/errorcode-vs"
      }
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.result.subcode",
      "path" : "SEEHDSLMVaccinationHistory.result.subcode",
      "short" : "Inga subkoder specificerade",
      "definition" : "Inga subkoder specificerade",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.result.logId",
      "path" : "SEEHDSLMVaccinationHistory.result.logId",
      "short" : "UUID för felsökning hos producent",
      "definition" : "UUID för felsökning hos producent",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMVaccinationHistory.result.message",
      "path" : "SEEHDSLMVaccinationHistory.result.message",
      "short" : "Beskrivande text för användaren",
      "definition" : "Beskrivande text för användaren",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
