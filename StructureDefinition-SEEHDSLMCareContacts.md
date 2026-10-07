# GetCareContacts - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCareContacts**

## Logical Model: GetCareContacts 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMCareContacts | *Version*:0.3.3 |
| Draft as of 2026-10-07 | *Computable Name*:SEEHDSLMCareContacts |

 
Logisk modell för tjänstekontraktet GetCareContacts (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContacts:3). Representerar responsens informationsstruktur (GetCareContactsResponseType). En lista med CareContactType returneras. 

**Användningar:**

* Denna Logisk modell används inte av några profiler i denna implementationsguide

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSLMCareContacts)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSLMCareContacts.csv), [Excel](StructureDefinition-SEEHDSLMCareContacts.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSLMCareContacts",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMCareContacts",
  "version" : "0.3.3",
  "name" : "SEEHDSLMCareContacts",
  "title" : "GetCareContacts",
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
  "description" : "Logisk modell för tjänstekontraktet GetCareContacts\n(RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContacts:3).\nRepresenterar responsens informationsstruktur (GetCareContactsResponseType).\nEn lista med CareContactType returneras.",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMCareContacts",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSLMCareContacts",
      "path" : "SEEHDSLMCareContacts",
      "short" : "GetCareContacts",
      "definition" : "Logisk modell för tjänstekontraktet GetCareContacts\n(RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContacts:3).\nRepresenterar responsens informationsstruktur (GetCareContactsResponseType).\nEn lista med CareContactType returneras."
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact",
      "path" : "SEEHDSLMCareContacts.careContact",
      "short" : "Vårdkontakter som matchar begäran",
      "definition" : "Vårdkontakter som matchar begäran",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.documentId",
      "path" : "SEEHDSLMCareContacts.careContact.documentId",
      "short" : "Vårdkontaktens identitet, unik inom källsystemet",
      "definition" : "Vårdkontaktens identitet, unik inom källsystemet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.sourceSystemHSAId",
      "path" : "SEEHDSLMCareContacts.careContact.sourceSystemHSAId",
      "short" : "HSA-id för källsystemet",
      "definition" : "HSA-id för källsystemet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.patientId",
      "path" : "SEEHDSLMCareContacts.careContact.patientId",
      "short" : "Patientens identifierare (personnummer/samordningsnummer)",
      "definition" : "Patientens identifierare (personnummer/samordningsnummer)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional",
      "path" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional",
      "short" : "Ansvarig hälso- och sjukvårdspersonal",
      "definition" : "Ansvarig hälso- och sjukvårdspersonal",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.authorTime",
      "path" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.authorTime",
      "short" : "Tidpunkt då informationen registrerades (YYYYMMDDhhmmss)",
      "definition" : "Tidpunkt då informationen registrerades (YYYYMMDDhhmmss)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "path" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "short" : "HSA-id för ansvarig personal",
      "definition" : "HSA-id för ansvarig personal",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.healthcareProfessionalName",
      "path" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.healthcareProfessionalName",
      "short" : "Namn på ansvarig personal",
      "definition" : "Namn på ansvarig personal",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "path" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "short" : "Befattning (KV Befattning OID 1.2.752.129.2.2.1.4)",
      "definition" : "Befattning (KV Befattning OID 1.2.752.129.2.2.1.4)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "path" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "short" : "Organisationsenhet för ansvarig personal (Regel 4)",
      "definition" : "Organisationsenhet för ansvarig personal (Regel 4)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "path" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "short" : "HSA-id för org.enhet",
      "definition" : "HSA-id för org.enhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "path" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "short" : "Namn på org.enhet",
      "definition" : "Namn på org.enhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "path" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "short" : "Telefon till org.enhet",
      "definition" : "Telefon till org.enhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "path" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "short" : "E-post till org.enhet",
      "definition" : "E-post till org.enhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "path" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "short" : "Postadress för org.enhet",
      "definition" : "Postadress för org.enhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "path" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "short" : "Plats för org.enhet",
      "definition" : "Plats för org.enhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "path" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "short" : "HSA-id för vårdenhet (Regel 1: PDL/Sparr)",
      "definition" : "HSA-id för vårdenhet (Regel 1: PDL/Sparr)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "path" : "SEEHDSLMCareContacts.careContact.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "short" : "HSA-id för vårdgivare (Regel 1: PDL/Sparr)",
      "definition" : "HSA-id för vårdgivare (Regel 1: PDL/Sparr)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.approvedForPatient",
      "path" : "SEEHDSLMCareContacts.careContact.approvedForPatient",
      "short" : "Informationen godkänd för patient (Regel 3)",
      "definition" : "Informationen godkänd för patient (Regel 3)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.documentTitle",
      "path" : "SEEHDSLMCareContacts.careContact.documentTitle",
      "short" : "Titel (ej tillämpligt)",
      "definition" : "N/A — GetCareContacts skickar inte documentTitle. Elementet är 0..0 per TKB.",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.documentTime",
      "path" : "SEEHDSLMCareContacts.careContact.documentTime",
      "short" : "Tidpunkt (ej tillämpligt)",
      "definition" : "N/A — GetCareContacts skickar inte documentTime. Elementet är 0..0 per TKB.",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.legalAuthenticator",
      "path" : "SEEHDSLMCareContacts.careContact.legalAuthenticator",
      "short" : "Signering (ej tillämpligt)",
      "definition" : "N/A — GetCareContacts skickar inte legalAuthenticator. Elementet är 0..0 per TKB.",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.nullified",
      "path" : "SEEHDSLMCareContacts.careContact.nullified",
      "short" : "Makulerat (ej tillämpligt)",
      "definition" : "N/A — GetCareContacts stödjer inte nullified. Elementet är 0..0 per TKB.",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.nullifiedReason",
      "path" : "SEEHDSLMCareContacts.careContact.nullifiedReason",
      "short" : "Makuleringsskäl (ej tillämpligt)",
      "definition" : "N/A — GetCareContacts stödjer inte nullifiedReason. Elementet är 0..0 per TKB.",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.careContactId",
      "path" : "SEEHDSLMCareContacts.careContact.careContactId",
      "short" : "Vårdkontakts-id i header (ej tillämpligt)",
      "definition" : "N/A — careContactId i PatientSummaryHeader är 0..0 per TKB för GetCareContacts.",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.careContactCode",
      "path" : "SEEHDSLMCareContacts.careContact.careContactCode",
      "short" : "Typ av vårdkontakt (KV Vårdkontakttyp OID 1.2.752.129.2.2.2.x)",
      "definition" : "Typ av vårdkontakt (KV Vårdkontakttyp OID 1.2.752.129.2.2.2.x)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.careContactReason",
      "path" : "SEEHDSLMCareContacts.careContact.careContactReason",
      "short" : "Orsak till vårdkontakt (fri text från patient/företrädare)",
      "definition" : "Orsak till vårdkontakt (fri text från patient/företrädare)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.careContactOrgUnit",
      "path" : "SEEHDSLMCareContacts.careContact.careContactOrgUnit",
      "short" : "Enhet för vårdkontakten (Regel 5: krävs för NPÖ)",
      "definition" : "Enhet för vårdkontakten (Regel 5: krävs för NPÖ)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.careContactOrgUnit.orgUnitHSAId",
      "path" : "SEEHDSLMCareContacts.careContact.careContactOrgUnit.orgUnitHSAId",
      "short" : "HSA-id för kontaktenhet (Regel 4: obligatorisk för NPÖ)",
      "definition" : "HSA-id för kontaktenhet (Regel 4: obligatorisk för NPÖ)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.careContactOrgUnit.orgUnitName",
      "path" : "SEEHDSLMCareContacts.careContact.careContactOrgUnit.orgUnitName",
      "short" : "Namn på kontaktenhet (Regel 4: obligatorisk för NPÖ)",
      "definition" : "Namn på kontaktenhet (Regel 4: obligatorisk för NPÖ)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.careContactOrgUnit.orgUnitTelecom",
      "path" : "SEEHDSLMCareContacts.careContact.careContactOrgUnit.orgUnitTelecom",
      "short" : "Telefon till kontaktenhet",
      "definition" : "Telefon till kontaktenhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.careContactOrgUnit.orgUnitEmail",
      "path" : "SEEHDSLMCareContacts.careContact.careContactOrgUnit.orgUnitEmail",
      "short" : "E-post till kontaktenhet",
      "definition" : "E-post till kontaktenhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.careContactOrgUnit.orgUnitAddress",
      "path" : "SEEHDSLMCareContacts.careContact.careContactOrgUnit.orgUnitAddress",
      "short" : "Adress till kontaktenhet",
      "definition" : "Adress till kontaktenhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.careContactOrgUnit.orgUnitLocation",
      "path" : "SEEHDSLMCareContacts.careContact.careContactOrgUnit.orgUnitLocation",
      "short" : "Plats för kontaktenhet",
      "definition" : "Plats för kontaktenhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.careContactTimePeriod",
      "path" : "SEEHDSLMCareContacts.careContact.careContactTimePeriod",
      "short" : "Tidsintervall för vårdkontakten. Villkor: Minst ett av start och end måste anges.",
      "definition" : "Tidsintervall för vårdkontakten. Villkor: Minst ett av start och end måste anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.careContactTimePeriod.start",
      "path" : "SEEHDSLMCareContacts.careContact.careContactTimePeriod.start",
      "short" : "Starttidpunkt (YYYYMMDDhhmmss)",
      "definition" : "Starttidpunkt (YYYYMMDDhhmmss)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.careContactTimePeriod.end",
      "path" : "SEEHDSLMCareContacts.careContact.careContactTimePeriod.end",
      "short" : "Sluttidpunkt (YYYYMMDDhhmmss)",
      "definition" : "Sluttidpunkt (YYYYMMDDhhmmss)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.careContactStatus",
      "path" : "SEEHDSLMCareContacts.careContact.careContactStatus",
      "short" : "Status för vårdkontakten (SNOMED CT SE, OID 1.2.752.116.2.1.1, SCTID 53761000052103)",
      "definition" : "Status för vårdkontakten (SNOMED CT SE, OID 1.2.752.116.2.1.1, SCTID 53761000052103)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.additionalPatientInformation",
      "path" : "SEEHDSLMCareContacts.careContact.additionalPatientInformation",
      "short" : "Ytterligare patientinformation",
      "definition" : "Ytterligare patientinformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.additionalPatientInformation.dateOfBirth",
      "path" : "SEEHDSLMCareContacts.careContact.additionalPatientInformation.dateOfBirth",
      "short" : "Patientens födelsedatum (YYYY / YYYYMM / YYYYMMDD)",
      "definition" : "Patientens födelsedatum (YYYY / YYYYMM / YYYYMMDD)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.careContact.additionalPatientInformation.gender",
      "path" : "SEEHDSLMCareContacts.careContact.additionalPatientInformation.gender",
      "short" : "Patientens kön (KV Kön OID 1.2.752.129.2.2.1.1)",
      "definition" : "Patientens kön (KV Kön OID 1.2.752.129.2.2.1.1)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.result",
      "path" : "SEEHDSLMCareContacts.result",
      "short" : "Resultatkod för anropet",
      "definition" : "Resultatkod för anropet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.result.resultCode",
      "path" : "SEEHDSLMCareContacts.result.resultCode",
      "short" : "Resultatkod: OK, INFO eller ERROR",
      "definition" : "Resultatkod: OK, INFO eller ERROR",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.result.errorCode",
      "path" : "SEEHDSLMCareContacts.result.errorCode",
      "short" : "Felkod vid ERROR (INVALID_REQUEST)",
      "definition" : "Felkod vid ERROR (INVALID_REQUEST)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.result.logId",
      "path" : "SEEHDSLMCareContacts.result.logId",
      "short" : "UUID för felsökning",
      "definition" : "UUID för felsökning",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.result.subCode",
      "path" : "SEEHDSLMCareContacts.result.subCode",
      "short" : "Subkod",
      "definition" : "Subkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareContacts.result.message",
      "path" : "SEEHDSLMCareContacts.result.message",
      "short" : "Beskrivande meddelande (svenska)",
      "definition" : "Beskrivande meddelande (svenska)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
