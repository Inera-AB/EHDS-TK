# GetAlertInformation - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetAlertInformation**

## Logical Model: GetAlertInformation 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMAlertInformation | *Version*:0.3.3 |
| Draft as of 2026-10-07 | *Computable Name*:SEEHDSLMAlertInformation |

 
Logisk modell för tjänstekontraktet GetAlertInformation (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetAlertInformationResponder:2). Representerar responsens informationsstruktur: uppmärksamhetsinformation för en patient, exempelvis överkänslighet mot läkemedel, allvarlig sjukdom, behandling, smittsam sjukdom, vårdbegränsning eller historisk varning. 
Body-strukturen är XOR – exakt en av hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare, unstructuredAlertInformation ska anges per post. 

**Användningar:**

* Denna Logisk modell används inte av några profiler i denna implementationsguide

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSLMAlertInformation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSLMAlertInformation.csv), [Excel](StructureDefinition-SEEHDSLMAlertInformation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSLMAlertInformation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMAlertInformation",
  "version" : "0.3.3",
  "name" : "SEEHDSLMAlertInformation",
  "title" : "GetAlertInformation",
  "status" : "draft",
  "date" : "2026-10-07T11:41:58+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetAlertInformation\n(RIV-TA urn:riv:clinicalprocess:healthcond:description:GetAlertInformationResponder:2).\nRepresenterar responsens informationsstruktur: uppmärksamhetsinformation för en patient,\nexempelvis överkänslighet mot läkemedel, allvarlig sjukdom, behandling, smittsam sjukdom,\nvårdbegränsning eller historisk varning.\n\nBody-strukturen är XOR – exakt en av hypersensitivity, seriousDisease, treatment,\ncommunicableDisease, restrictionOfCare, unstructuredAlertInformation ska anges per post.",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMAlertInformation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSLMAlertInformation",
      "path" : "SEEHDSLMAlertInformation",
      "short" : "GetAlertInformation",
      "definition" : "Logisk modell för tjänstekontraktet GetAlertInformation\n(RIV-TA urn:riv:clinicalprocess:healthcond:description:GetAlertInformationResponder:2).\nRepresenterar responsens informationsstruktur: uppmärksamhetsinformation för en patient,\nexempelvis överkänslighet mot läkemedel, allvarlig sjukdom, behandling, smittsam sjukdom,\nvårdbegränsning eller historisk varning.\n\nBody-strukturen är XOR – exakt en av hypersensitivity, seriousDisease, treatment,\ncommunicableDisease, restrictionOfCare, unstructuredAlertInformation ska anges per post."
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation",
      "path" : "SEEHDSLMAlertInformation.alertInformation",
      "short" : "Uppmärksamhetsinformation",
      "definition" : "Den uppmärksamhetsinformation som matchar begäran.\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader",
      "short" : "Dokumenthuvud (PatientSummaryHeader)",
      "definition" : "Innehåller basinformation om dokumentet (PatientSummaryHeaderType).\nOBS: documentTitle, documentTime, nullified och nullifiedReason är N/A (0..0) för detta TK.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.documentId",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.documentId",
      "short" : "Dokumentets identitet",
      "definition" : "Dokumentets identitet som är unik inom källsystemet.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.sourceSystemHSAId",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.sourceSystemHSAId",
      "short" : "HSA-id för källsystem",
      "definition" : "HSA-id för det system som tillgängliggör informationen.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.patientId",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.patientId",
      "short" : "Patientidentifierare",
      "definition" : "Identifierare för patient. id = patientens identifierare (12 tecken).\ntype = OID för typ av identifierare.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional",
      "short" : "Ansvarig hälso- och sjukvårdsperson",
      "definition" : "Information om den hälso- och sjukvårdsperson som är ansvarig för informationen.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.authorTime",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.authorTime",
      "short" : "Tidpunkt för registrering",
      "definition" : "Tidpunkt då informationen registrerades. Format: YYYYMMDDhhmmss.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "short" : "HSA-id för hälso- och sjukvårdspersonal",
      "definition" : "HSA-id för hälso- och sjukvårdspersonal.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalName",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalName",
      "short" : "Namn",
      "definition" : "Namn på hälso- och sjukvårdspersonal.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "short" : "Befattning (CVType)",
      "definition" : "Information om personens befattning. KV Befattning (OID 1.2.752.129.2.2.1.4).\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "short" : "Organisationsenhet",
      "definition" : "Den organisation som hälso- och sjukvårdspersonalen är uppdragstagare i.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "short" : "HSA-id för organisationsenhet",
      "definition" : "HSA-id för organisationsenhet.\nKardinalitet: Obligatorisk (inom OrgUnitType).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "short" : "Namn på organisationsenhet",
      "definition" : "Namn på organisationsenhet.\nKardinalitet: Obligatorisk (inom OrgUnitType).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "short" : "Telefon till organisationsenhet",
      "definition" : "Telefon till organisationsenhet.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "short" : "Epost till organisationsenhet",
      "definition" : "Epost till organisationsenhet.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "short" : "Postadress för organisationsenhet",
      "definition" : "Postadress för organisationsenhet.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "short" : "Fysisk plats för organisationsenhet",
      "definition" : "Text som anger namn på plats eller ort för organisationens fysiska placering.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "short" : "HSA-id för vårdenhet",
      "definition" : "HSA-id för vårdenhet. Se regel 1 i TKB.\nKardinalitet: Valfri (villkorlig, se regel 1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "short" : "HSA-id för vårdgivare",
      "definition" : "HSA-id för vårdgivaren.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.legalAuthenticator",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.legalAuthenticator",
      "short" : "Signerande person",
      "definition" : "Information om vem som signerat informationen i dokumentet.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.legalAuthenticator.signatureTime",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.legalAuthenticator.signatureTime",
      "short" : "Tidpunkt för signering",
      "definition" : "Tidpunkt för signering. Format: YYYYMMDDhhmmss.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "short" : "HSA-id för signerande",
      "definition" : "HSA-id för person som signerat dokumentet.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorName",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.legalAuthenticator.legalAuthenticatorName",
      "short" : "Namn på signerande person",
      "definition" : "Namn i klartext för signerande person.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.approvedForPatient",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.approvedForPatient",
      "short" : "Godkänd för visning till patient",
      "definition" : "Anger om information får delas till patient.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.careContactId",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationHeader.careContactId",
      "short" : "Vårdkontakts-id",
      "definition" : "Identitet för den hälso- och sjukvårdskontakt som uppmärksamhetsinformationen gäller.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody",
      "short" : "Uppmärksamhetsinformationens innehåll (AlertInformationBodyType)",
      "definition" : "AlertInformationBodyType — uppmärksamhetsinformationens informationsinnehåll.\nExakt en av hypersensitivity, seriousDisease, treatment, communicableDisease,\nrestrictionOfCare, unstructuredAlertInformation ska anges (XOR).\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.typeOfAlertInformation",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.typeOfAlertInformation",
      "short" : "Typ av uppmärksamhetssignal (CVType)",
      "definition" : "Kod som anger vilken typ av uppmärksamhetssignal som avses.\nBör tas från KV Uppmärksamhetstyp eller KV Informationstyp (OID 1.2.752.129.2.2.2.1).\nOID för KV Uppmärksamhetstyp saknas – använd KV Informationstyp som fallback.\nKardinalitet: Obligatorisk.\nRegel 2 (NPÖ): För att uppmärksamhetssignaler ska skickas till NPÖ måste en av följande\nKV Informationstyp-koder anges: upp-ube, upp-ube-beh, upp-ube-lbe, upp-ube-kod, upp-uas,\nupp-uas-sjd, upp-vbe, upp-vbe-vbe, upp-arb, upp-arb-smf, upp-arb-smf-vag, upp-arb-smf-sjd,\nupp-est, upp-est-rub, upp-est-inh. Alternativt KV Uppmärksamhetstyp-koder: Överkänslighet,\nAllvarlig sjukdom, Allvarlig behandling, Smittsam sjukdom, Vårdbegränsning,\nHistorisk varningsinformation.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.ascertainedDate",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.ascertainedDate",
      "short" : "Datum för konstaterande",
      "definition" : "Datum då förhållandet som föranledde uppmärksamhetssignalen konstaterades.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.verifiedTime",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.verifiedTime",
      "short" : "Tidpunkt för verifiering",
      "definition" : "Tidpunkt då uppmärksamhetssignalen verifierades i det lokala systemet.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.validityTimePeriod",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.validityTimePeriod",
      "short" : "Giltighetstid",
      "definition" : "Tidsintervallet inom vilket uppmärksamhetssignalen är giltig.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.validityTimePeriod.start",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.validityTimePeriod.start",
      "short" : "Startdatum för giltighet",
      "definition" : "Startdatum/tidpunkt för giltighetstiden. Format: YYYYMMDDhhmmss.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.validityTimePeriod.end",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.validityTimePeriod.end",
      "short" : "Slutdatum för giltighet",
      "definition" : "Slutdatum/tidpunkt för giltighetstiden. Format: YYYYMMDDhhmmss.\nAnges när man bedömer att uppmärksamhetssignalen har en känd sluttidpunkt.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.alertInformationComment",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.alertInformationComment",
      "short" : "Kommentar",
      "definition" : "Kommentar av ansvarig hälso- och sjukvårdspersonal angående uppmärksamhetssignalen.\nVid läkemedelsöverkänslighet kan kommentaren avse anamnes, reaktionsbeskrivning, möjliga agens.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.obsoleteTime",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.obsoleteTime",
      "short" : "Tidpunkt för inaktivering",
      "definition" : "Tidpunkt då uppmärksamhetssignalen registrerades som inaktuell i det lokala systemet.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.obsoleteComment",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.obsoleteComment",
      "short" : "Kommentar till inaktivering",
      "definition" : "Information om varför uppmärksamhetssignalen gjorts inaktuell.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.hypersensitivity",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.hypersensitivity",
      "short" : "Överkänslighet (HyperSensitivityType)",
      "definition" : "XOR med seriousDisease, treatment, communicableDisease, restrictionOfCare, unstructuredAlertInformation.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.hypersensitivity.typeOfHypersensitivity",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.hypersensitivity.typeOfHypersensitivity",
      "short" : "Typ av överkänslighet (CVType)",
      "definition" : "Precisering av överkänslighetstyp (ICD10/SNOMED).\nT.ex. läkemedelsöverkänslighet, överkänslighet mot födoämne, djur, växt eller kemikalie.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.hypersensitivity.degreeOfSeverity",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.hypersensitivity.degreeOfSeverity",
      "short" : "Allvarlighetsgrad (CVType)",
      "definition" : "Bedömning av överkänslighetens allvarlighet. KV Allvarlighetsgrad (1.2.752.129.2.2.3.3).\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.hypersensitivity.degreeOfCertainty",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.hypersensitivity.degreeOfCertainty",
      "short" : "Visshet (CVType)",
      "definition" : "Visshetsgrad för överkänsligheten. KV Visshetsgrad (1.2.752.129.2.2.3.11).\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity",
      "short" : "Läkemedelsöverkänslighet (PharmaceuticalHypersensitivityType)",
      "definition" : "Mer detaljerad information om läkemedelsöverkänslighet.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.atcSubstance",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.atcSubstance",
      "short" : "ATC-substans (CVType)",
      "definition" : "Substans eller grupp av substanser som kan orsaka överkänslighetsreaktion.\nATC-kod på minst treställig nivå ska anges vid livshotande/skadande allvarlighetsgrad.\nOID: 1.2.752.129.2.2.3.1.1.\nKardinalitet: Valfri (villkorlig, se TKB).\nCVType-begränsningar (TKB): codeSystem är fast 1.2.752.129.2.2.3.1.1 (ATC).\ncodeSystemName, codeSystemVersion och originalText är 0..0 (får ej anges).\ncode och displayName är 1..1 (obligatoriska) när atcSubstance anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.nonATCSubstance",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.nonATCSubstance",
      "short" : "Substans utan ATC-kod",
      "definition" : "Benämning på aktiv substans utan ATC-kod.\nSka anges om atcSubstance saknas.\nKardinalitet: Valfri.\nVillkor (TKB): nonATCSubstance och nonATCSubstanceComment ska BÅDA anges om atcSubstance saknas.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.nonATCSubstanceComment",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.nonATCSubstanceComment",
      "short" : "Kommentar till avsaknad ATC-kod",
      "definition" : "Förklaring till varför ATC-kod inte används.\nSka anges om atcSubstance saknas.\nKardinalitet: Valfri.\nVillkor (TKB): Ska anges om atcSubstance saknas (tillsammans med nonATCSubstance).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.pharmaceuticalProductId",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.pharmaceuticalProductId",
      "short" : "Läkemedelsprodukt-id (CVType)",
      "definition" : "Identifierare för läkemedelsprodukt som kan orsaka överkänslighet. NPL-id (1.2.752.129.2.1.5.1).\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity",
      "short" : "Annan överkänslighet (OtherHypersensitivityType)",
      "definition" : "Mer detaljerad information om överkänslighet som ej är läkemedelsöverkänslighet.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgent",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgent",
      "short" : "Agens",
      "definition" : "Text som beskriver det agens som bedöms kunna orsaka överkänslighetsreaktion.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgentCode",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgentCode",
      "short" : "Agenskod (CVType)",
      "definition" : "Kod för det agens som bedöms kunna orsaka överkänslighetsreaktion.\nT.ex. LMK-kod (foderkänslighet) eller CAS-kod (kemikalie).\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.seriousDisease",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.seriousDisease",
      "short" : "Allvarlig sjukdom (SeriousDiseaseType)",
      "definition" : "XOR med hypersensitivity, treatment, communicableDisease, restrictionOfCare, unstructuredAlertInformation.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.seriousDisease.disease",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.seriousDisease.disease",
      "short" : "Sjukdomskod (CVType)",
      "definition" : "Allvarlig sjukdom som patienten har. ICD10/SNOMED rekommenderas.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.treatment",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.treatment",
      "short" : "Behandling (TreatmentType)",
      "definition" : "XOR med hypersensitivity, seriousDisease, communicableDisease, restrictionOfCare, unstructuredAlertInformation.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.treatment.treatmentDescription",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.treatment.treatmentDescription",
      "short" : "Behandlingsbeskrivning",
      "definition" : "Beskrivning av allvarlig behandling som patienten genomgår.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.treatment.treatmentCode",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.treatment.treatmentCode",
      "short" : "Behandlingskod (CVType)",
      "definition" : "Preciserad uppgift om behandlingen. KVÅ-kod (1.2.752.116.1.3.2.1.4) rekommenderas.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.treatment.pharmaceuticalTreatment",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.treatment.pharmaceuticalTreatment",
      "short" : "Läkemedel vid behandling (CVType)",
      "definition" : "Läkemedel som används vid uppmärksammad behandling. ATC-kod (1.2.752.129.2.2.3.1.1) rekommenderas.\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.communicableDisease",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.communicableDisease",
      "short" : "Smittsam sjukdom (CommunicableDiseaseType)",
      "definition" : "XOR med hypersensitivity, seriousDisease, treatment, restrictionOfCare, unstructuredAlertInformation.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.communicableDisease.communicableDiseaseCode",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.communicableDisease.communicableDiseaseCode",
      "short" : "Smittsam sjukdomskod (CVType)",
      "definition" : "Kod för smittsam sjukdom. ICD10 rekommenderas.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.communicableDisease.routeOfTransmission",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.communicableDisease.routeOfTransmission",
      "short" : "Smittväg (CVType)",
      "definition" : "Kod för hur sjukdomen smittar. KV Smittväg.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.restrictionOfCare",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.restrictionOfCare",
      "short" : "Vårdbegränsning (RestrictionOfCareType)",
      "definition" : "XOR med hypersensitivity, seriousDisease, treatment, communicableDisease, unstructuredAlertInformation.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.restrictionOfCare.restrictionOfCareComment",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.restrictionOfCare.restrictionOfCareComment",
      "short" : "Kommentar om vårdbegränsning",
      "definition" : "Information om uppmärksammat förhållande som inte avser överkänslighet, sjukdom eller behandling.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.unstructuredAlertInformation",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.unstructuredAlertInformation",
      "short" : "Historisk varning (UnstructuredAlertInformationType)",
      "definition" : "XOR med hypersensitivity, seriousDisease, treatment, communicableDisease, restrictionOfCare.\nAnvänds för tidigare varningsinformation som inte följer NPÖ-strukturen.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationHeading",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationHeading",
      "short" : "Rubrik för historisk varning",
      "definition" : "Beskrivande rubrik för tidigare utfärdad varning.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationContent",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationContent",
      "short" : "Innehåll för historisk varning",
      "definition" : "Beskrivning av vad varningen gäller samt viss administrativ information.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.relatedAlertInformation",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.relatedAlertInformation",
      "short" : "Relaterad uppmärksamhetssignal (RelatedAlertInformationType)",
      "definition" : "Information om samband med andra uppmärksamhetssignaler.\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.relatedAlertInformation.typeOfAlertInformationRelationship",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.relatedAlertInformation.typeOfAlertInformationRelationship",
      "short" : "Typ av samband (CVType)",
      "definition" : "Typ av samband. KV Samband (1.2.752.129.2.2.2.4).\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.relatedAlertInformation.relationComment",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.relatedAlertInformation.relationComment",
      "short" : "Kommentar till samband",
      "definition" : "Kommentar till det aktuella sambandet.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.relatedAlertInformation.documentId",
      "path" : "SEEHDSLMAlertInformation.alertInformation.alertInformationBody.relatedAlertInformation.documentId",
      "short" : "Relaterad dokumentidentitet",
      "definition" : "Lokalt unik identitet för relaterad uppmärksamhetssignal.\nKardinalitet: Obligatorisk, lista (minst en).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.result",
      "path" : "SEEHDSLMAlertInformation.result",
      "short" : "Resultat",
      "definition" : "Innehåller information om begäran gick bra eller ej.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.result.resultCode",
      "path" : "SEEHDSLMAlertInformation.result.resultCode",
      "short" : "Resultatkod",
      "definition" : "Kan endast vara OK, INFO eller ERROR.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.result.errorCode",
      "path" : "SEEHDSLMAlertInformation.result.errorCode",
      "short" : "Felkod",
      "definition" : "Sätts endast om resultCode är ERROR. Tillåtna värden: INVALID_REQUEST.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.result.subcode",
      "path" : "SEEHDSLMAlertInformation.result.subcode",
      "short" : "Subkod",
      "definition" : "Inga subkoder specificerade.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.result.logId",
      "path" : "SEEHDSLMAlertInformation.result.logId",
      "short" : "Log-id",
      "definition" : "En UUID som kan användas vid felanmälan för att spåra felet.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMAlertInformation.result.message",
      "path" : "SEEHDSLMAlertInformation.result.message",
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
