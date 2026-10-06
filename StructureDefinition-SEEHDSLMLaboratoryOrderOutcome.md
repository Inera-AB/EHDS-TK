# GetLaboratoryOrderOutcome - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetLaboratoryOrderOutcome**

## Logical Model: GetLaboratoryOrderOutcome 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMLaboratoryOrderOutcome | *Version*:0.3.3 |
| Draft as of 2026-10-06 | *Computable Name*:SEEHDSLMLaboratoryOrderOutcome |

 
Logisk modell för tjänstekontraktet GetLaboratoryOrderOutcome (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcome:4). Representerar responsens informationsstruktur — multidisciplinära laboratoriesvar för en patient. 

**Användningar:**

* Denna Logisk modell används inte av några profiler i denna implementationsguide

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSLMLaboratoryOrderOutcome)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSLMLaboratoryOrderOutcome.csv), [Excel](StructureDefinition-SEEHDSLMLaboratoryOrderOutcome.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSLMLaboratoryOrderOutcome",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMLaboratoryOrderOutcome",
  "version" : "0.3.3",
  "name" : "SEEHDSLMLaboratoryOrderOutcome",
  "title" : "GetLaboratoryOrderOutcome",
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
  "description" : "Logisk modell för tjänstekontraktet GetLaboratoryOrderOutcome\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcome:4).\nRepresenterar responsens informationsstruktur — multidisciplinära laboratoriesvar\nför en patient.",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMLaboratoryOrderOutcome",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSLMLaboratoryOrderOutcome",
      "path" : "SEEHDSLMLaboratoryOrderOutcome",
      "short" : "GetLaboratoryOrderOutcome",
      "definition" : "Logisk modell för tjänstekontraktet GetLaboratoryOrderOutcome\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcome:4).\nRepresenterar responsens informationsstruktur — multidisciplinära laboratoriesvar\nför en patient."
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome",
      "short" : "Laboratoriesvar (ett per beställning)",
      "definition" : "En labbeställning med tillhörande svar. Kardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header",
      "short" : "Header med åtkomstkontroll och metadata",
      "definition" : "Header med åtkomstkontroll och metadata",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.accessControlHeader",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.accessControlHeader",
      "short" : "Åtkomstkontrollhuvud (PDL)",
      "definition" : "Åtkomstkontrollhuvud (PDL)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.accessControlHeader.accountableCareGiver",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.accessControlHeader.accountableCareGiver",
      "short" : "Ansvarig vårdgivare (HSA-id)",
      "definition" : "HSA-id för den vårdgivare som är ansvarig för posten. Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.accessControlHeader.accountableCareUnit",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.accessControlHeader.accountableCareUnit",
      "short" : "Ansvarig vårdenhet (HSA-id)",
      "definition" : "HSA-id för den vårdenhet som är ansvarig för posten. Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.accessControlHeader.patientId",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.accessControlHeader.patientId",
      "short" : "Patientens id i svaret",
      "definition" : "Patientens id i svaret",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.accessControlHeader.originalPatientId",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.accessControlHeader.originalPatientId",
      "short" : "Ursprungligt patient-id",
      "definition" : "Ursprungligt patient-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.accessControlHeader.careProcessId",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.accessControlHeader.careProcessId",
      "short" : "Vårdprocessid (UUID)",
      "definition" : "Vårdprocessid (UUID)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.accessControlHeader.blockComparisonTime",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.accessControlHeader.blockComparisonTime",
      "short" : "Tidpunkt för spärrkontroll",
      "definition" : "Tidpunkt för spärrkontroll",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.accessControlHeader.approvedForPatient",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.accessControlHeader.approvedForPatient",
      "short" : "Godkänd för patientvisning",
      "definition" : "Anger om informationsägaren godkänt att patienten kan ta del av informationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.sourceSystemId",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.sourceSystemId",
      "short" : "Källsystemets HSA-id",
      "definition" : "Källsystemets HSA-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.record",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.record",
      "short" : "Poststatus och tidpunkt",
      "definition" : "Poststatus och tidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.record.recordId",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.record.recordId",
      "short" : "Postens unika id",
      "definition" : "Postens unika id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.record.timestamp",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.record.timestamp",
      "short" : "Tidpunkt för posten",
      "definition" : "Tidpunkt för posten",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.author",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.author",
      "short" : "Dokumentationsansvarig",
      "definition" : "Dokumentationsansvarig",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.author.authorId",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.author.authorId",
      "short" : "Författarens HSA-id",
      "definition" : "Författarens HSA-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.author.name",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.author.name",
      "short" : "Författarens namn",
      "definition" : "Författarens namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.author.timestamp",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.author.timestamp",
      "short" : "Tidpunkt för dokumentation",
      "definition" : "Tidpunkt för dokumentation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.author.byRole",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.author.byRole",
      "short" : "Yrkesroll vid dokumentation",
      "definition" : "Yrkesroll vid dokumentation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.author.orgUnit",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.author.orgUnit",
      "short" : "Organisationsenhet",
      "definition" : "Organisationsenhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.author.orgUnit.orgUnitId",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.author.orgUnit.orgUnitId",
      "short" : "OrgUnit HSA-id",
      "definition" : "OrgUnit HSA-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.author.orgUnit.name",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.author.orgUnit.name",
      "short" : "OrgUnit namn",
      "definition" : "OrgUnit namn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.signature",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.signature",
      "short" : "Signatär",
      "definition" : "Signatär",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.signature.signatureId",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.signature.signatureId",
      "short" : "Signatärens HSA-id",
      "definition" : "Signatärens HSA-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.signature.name",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.signature.name",
      "short" : "Signatärens namn",
      "definition" : "Signatärens namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.signature.timestamp",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.signature.timestamp",
      "short" : "Signeringstidpunkt",
      "definition" : "Signeringstidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.signature.byRole",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.header.signature.byRole",
      "short" : "Yrkesroll vid signering",
      "definition" : "Yrkesroll vid signering",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body",
      "short" : "Beställnings- och svarsinformation",
      "definition" : "Beställnings- och svarsinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.identifier",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.identifier",
      "short" : "Beställningens unika id",
      "definition" : "Beställningens unika id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.laboratoryIdentifier",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.laboratoryIdentifier",
      "short" : "Laboratoriets beställningsnummer",
      "definition" : "Laboratoriets beställningsnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.type",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.type",
      "short" : "Typ av laboratoriebeställning",
      "definition" : "Typ av laboratoriebeställning",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.text",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.text",
      "short" : "Fritext om beställningen",
      "definition" : "Fritext om beställningen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral",
      "short" : "Kopplad remiss",
      "definition" : "Kopplad remiss",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.identifier",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.identifier",
      "short" : "Remissens id",
      "definition" : "Remissens id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.timestamp",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.timestamp",
      "short" : "Remissens tidpunkt",
      "definition" : "Remissens tidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.version",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.version",
      "short" : "Remissversion",
      "definition" : "Remissversion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.question",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.question",
      "short" : "Frågeställning i remissen",
      "definition" : "Frågeställning i remissen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.requestedCareService",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.requestedCareService",
      "short" : "Begärd vårdtjänst",
      "definition" : "Begärd vårdtjänst",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.requester",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.requester",
      "short" : "Remittent",
      "definition" : "Remittent",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.requester.requesterId",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.requester.requesterId",
      "short" : "Remittentens HSA-id",
      "definition" : "Remittentens HSA-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.requester.name",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.requester.name",
      "short" : "Remittentens namn",
      "definition" : "Remittentens namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.requester.byRole",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.requester.byRole",
      "short" : "Remittentens yrkesroll",
      "definition" : "Remittentens yrkesroll",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.requester.orgUnit",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.requester.orgUnit",
      "short" : "Remittentens org-enhet",
      "definition" : "Remittentens org-enhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.requester.orgUnit.orgUnitId",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.requester.orgUnit.orgUnitId",
      "short" : "OrgUnit HSA-id",
      "definition" : "OrgUnit HSA-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.requester.orgUnit.name",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.requester.orgUnit.name",
      "short" : "OrgUnit namn",
      "definition" : "OrgUnit namn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.referralInformation",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.referralInformation",
      "short" : "Remissinformation",
      "definition" : "Remissinformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.referralInformation.referralComment",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.referralInformation.referralComment",
      "short" : "Remisskommentar",
      "definition" : "Remisskommentar",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.referralInformation.referralMedicalInformation",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.referral.referralInformation.referralMedicalInformation",
      "short" : "Medicinsk remissinformation",
      "definition" : "Medicinsk remissinformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses",
      "short" : "Analysgrupp (panel)",
      "definition" : "En grupp av relaterade analyser (t.ex. ett analyspaket). Kardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.name",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.name",
      "short" : "Gruppens namn",
      "definition" : "Gruppens namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.comment",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.comment",
      "short" : "Kommentar till gruppen",
      "definition" : "Kommentar till gruppen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.code",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.code",
      "short" : "Gruppens kod",
      "definition" : "Gruppens kod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis",
      "short" : "Enskild analys",
      "definition" : "Enskild analys",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.identifier",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.identifier",
      "short" : "Analysens id",
      "definition" : "Analysens id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.timestamp",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.timestamp",
      "short" : "Tidpunkt för analysen",
      "definition" : "Tidpunkt för analysen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.code",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.code",
      "short" : "Analysens kod (t.ex. NPU)",
      "definition" : "Analysens kod (t.ex. NPU)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.method",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.method",
      "short" : "Analysmetod",
      "definition" : "Analysmetod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.status",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.status",
      "short" : "Analysstatus",
      "definition" : "Analysstatus",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.comment",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.comment",
      "short" : "Kommentar till analysen",
      "definition" : "Kommentar till analysen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.accredited",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.accredited",
      "short" : "Ackrediterad analys",
      "definition" : "Ackrediterad analys",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen",
      "short" : "Prov",
      "definition" : "Prov",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.identifier",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.identifier",
      "short" : "Provnummer",
      "definition" : "Provnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.material",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.material",
      "short" : "Provmaterial",
      "definition" : "Provmaterial",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.timestamp",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.timestamp",
      "short" : "Provtagningstidpunkt",
      "definition" : "Provtagningstidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.anatomicalLocation",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.anatomicalLocation",
      "short" : "Anatomisk plats",
      "definition" : "Anatomisk plats",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.comment",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.comment",
      "short" : "Kommentar om provet",
      "definition" : "Kommentar om provet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity",
      "short" : "Provrelaterad aktivitet",
      "definition" : "Provrelaterad aktivitet",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity.code",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity.code",
      "short" : "Aktivitetskod",
      "definition" : "Aktivitetskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity.time",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity.time",
      "short" : "Aktivitetens tidsperiod",
      "definition" : "Aktivitetens tidsperiod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity.method",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.activity.method",
      "short" : "Aktivitetsmetod",
      "definition" : "Aktivitetsmetod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.container",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.container",
      "short" : "Provbehållare",
      "definition" : "Provbehållare",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.container.identifier",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.container.identifier",
      "short" : "Behållarens id",
      "definition" : "Behållarens id",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.container.type",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.specimen.container.type",
      "short" : "Behållartyp",
      "definition" : "Behållartyp",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.device",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.device",
      "short" : "Mätinstrument",
      "definition" : "Mätinstrument",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.device.identifier",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.device.identifier",
      "short" : "Instrumentets id",
      "definition" : "Instrumentets id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result",
      "short" : "Analysresultat",
      "definition" : "Analysresultat",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.type",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.type",
      "short" : "Resultattyp",
      "definition" : "Resultattyp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.value",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.value",
      "short" : "Resultatvärde (AnyValueType — se anmärkning)",
      "definition" : "ASSUME-001: AnyValueType kan innehålla PQ, string, boolean eller kodad typ.\nModellerad som string i avvaktan på mappningsverifiering. Se QUESTIONS.md.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.comment",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.comment",
      "short" : "Kommentar till resultatet",
      "definition" : "Kommentar till resultatet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.interpretation",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.interpretation",
      "short" : "Tolkning av resultatet",
      "definition" : "Tolkning av resultatet",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference",
      "short" : "Referensintervall",
      "definition" : "Referensintervall",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.interval",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.interval",
      "short" : "Referensintervall (PQIntervalType)",
      "definition" : "Referensintervall (PQIntervalType)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.description",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.description",
      "short" : "Beskrivning av referensintervall",
      "definition" : "Beskrivning av referensintervall",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.population",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.population",
      "short" : "Population för referensintervall",
      "definition" : "Population för referensintervall",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.comment",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.reference.comment",
      "short" : "Kommentar till referensintervall",
      "definition" : "Kommentar till referensintervall",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature",
      "short" : "Mottagarsignatur",
      "definition" : "Mottagarsignatur",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.signatoryId",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.signatoryId",
      "short" : "Signatärens id",
      "definition" : "Signatärens id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.name",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.name",
      "short" : "Signatärens namn",
      "definition" : "Signatärens namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.timestamp",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.timestamp",
      "short" : "Signeringstidpunkt",
      "definition" : "Signeringstidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.byRole",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.recipientSignature.byRole",
      "short" : "Yrkesroll",
      "definition" : "Yrkesroll",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature",
      "short" : "Utförarsignatur",
      "definition" : "Utförarsignatur",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.signatoryId",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.signatoryId",
      "short" : "Signatärens id",
      "definition" : "Signatärens id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.name",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.name",
      "short" : "Signatärens namn",
      "definition" : "Signatärens namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.timestamp",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.timestamp",
      "short" : "Signeringstidpunkt",
      "definition" : "Signeringstidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.byRole",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.performerSignature.byRole",
      "short" : "Yrkesroll",
      "definition" : "Yrkesroll",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.related",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.groupOfAnalyses.analysis.result.related",
      "short" : "Relaterade analyser",
      "definition" : "Relaterade analyser",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.recipientUnit",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.recipientUnit",
      "short" : "Mottagande enhet",
      "definition" : "Mottagande enhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.recipientUnit.unitId",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.recipientUnit.unitId",
      "short" : "Enhetens HSA-id",
      "definition" : "Enhetens HSA-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.recipientUnit.name",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.recipientUnit.name",
      "short" : "Enhetens namn",
      "definition" : "Enhetens namn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.recipientSignature",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.recipientSignature",
      "short" : "Beställarens signatur",
      "definition" : "Beställarens signatur",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.recipientSignature.signatoryId",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.recipientSignature.signatoryId",
      "short" : "Signatärens id",
      "definition" : "Signatärens id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.recipientSignature.name",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.recipientSignature.name",
      "short" : "Signatärens namn",
      "definition" : "Signatärens namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.recipientSignature.timestamp",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.recipientSignature.timestamp",
      "short" : "Signeringstidpunkt",
      "definition" : "Signeringstidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.recipientSignature.byRole",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.recipientSignature.byRole",
      "short" : "Yrkesroll",
      "definition" : "Yrkesroll",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.contactInformation",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.contactInformation",
      "short" : "Kontaktinformation",
      "definition" : "Kontaktinformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.contactInformation.text",
      "path" : "SEEHDSLMLaboratoryOrderOutcome.laboratoryOrderOutcome.body.contactInformation.text",
      "short" : "Kontaktinformationstext",
      "definition" : "Kontaktinformationstext",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
