# GetCareDocumentation - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetCareDocumentation**

## Logical Model: GetCareDocumentation 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMCareDocumentation | *Version*:0.3.3 |
| Draft as of 2026-10-07 | *Computable Name*:SEEHDSLMCareDocumentation |

 
Logisk modell för tjänstekontraktet GetCareDocumentation (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:3). Representerar responsens informationsstruktur: journalanteckningar för en patient. Anteckningstyper: utredning, åtgärd/behandling, sammanfattning, samordning, inskrivning, slutanteckning, anteckning utan fysiskt möte, slutenvårdsanteckning och besöksanteckning. Meddelandeformatet är kompatibelt med HL7 v3 CDA v2. 

**Användningar:**

* Denna Logisk modell används inte av några profiler i denna implementationsguide

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSLMCareDocumentation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSLMCareDocumentation.csv), [Excel](StructureDefinition-SEEHDSLMCareDocumentation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSLMCareDocumentation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMCareDocumentation",
  "version" : "0.3.3",
  "name" : "SEEHDSLMCareDocumentation",
  "title" : "GetCareDocumentation",
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
  "description" : "Logisk modell för tjänstekontraktet GetCareDocumentation\n(RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:3).\nRepresenterar responsens informationsstruktur: journalanteckningar för en patient.\nAnteckningstyper: utredning, åtgärd/behandling, sammanfattning, samordning, inskrivning,\nslutanteckning, anteckning utan fysiskt möte, slutenvårdsanteckning och besöksanteckning.\nMeddelandeformatet är kompatibelt med HL7 v3 CDA v2.",
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
  "type" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMCareDocumentation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "SEEHDSLMCareDocumentation",
      "path" : "SEEHDSLMCareDocumentation",
      "short" : "GetCareDocumentation",
      "definition" : "Logisk modell för tjänstekontraktet GetCareDocumentation\n(RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:3).\nRepresenterar responsens informationsstruktur: journalanteckningar för en patient.\nAnteckningstyper: utredning, åtgärd/behandling, sammanfattning, samordning, inskrivning,\nslutanteckning, anteckning utan fysiskt möte, slutenvårdsanteckning och besöksanteckning.\nMeddelandeformatet är kompatibelt med HL7 v3 CDA v2."
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation",
      "short" : "Journalanteckning",
      "definition" : "De anteckningar som matchar begäran. En instans per anteckning.\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.header",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.header",
      "short" : "JoL-header",
      "definition" : "JoL-header v2.2. Innehåller metainformation gemensam för JoL-tjänstekontrakt.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.header.accessControlHeader",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.header.accessControlHeader",
      "short" : "Åtkomstkontrollheader",
      "definition" : "Information för kontroll av åtkomst enligt PDL. Uppgifterna krävs för\nspärrhantering, åtkomstkontroll samt loggning.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.header.accessControlHeader.accountableHealthcareProvider",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.header.accessControlHeader.accountableHealthcareProvider",
      "short" : "Informationsägande vårdgivare",
      "definition" : "Id för informationsägande vårdgivare. HSA-id eller lokalt id.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.header.accessControlHeader.accountableCareUnit",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.header.accessControlHeader.accountableCareUnit",
      "short" : "Informationsägande vårdenhet",
      "definition" : "Id för informationsägande vårdenhet angivet med HSA-id.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.header.accessControlHeader.patientId",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.header.accessControlHeader.patientId",
      "short" : "Patientens identitetsbeteckning",
      "definition" : "Patientens identitetsbeteckning. Personnummer, samordningsnummer eller nationellt reservnummer.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.header.accessControlHeader.careProcessId",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.header.accessControlHeader.careProcessId",
      "short" : "Id för individanpassad vårdprocess",
      "definition" : "Id för den individanpassade vårdprocess som informationen ingår i.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.header.accessControlHeader.blockComparisonTime",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.header.accessControlHeader.blockComparisonTime",
      "short" : "Jämförelsetidpunkt för spärrkontroll",
      "definition" : "Den tidpunkt mot vilken spärrkontroll sker vid åtkomst till journalinformation.\nFormat: YYYYMMDDhhmmss. Kardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.header.accessControlHeader.approvedForPatient",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.header.accessControlHeader.approvedForPatient",
      "short" : "Godkänd för visning till patient",
      "definition" : "Ansvarig vårdpersonals beslut, alternativt baserat på automatisk menprövning,\nom informationen är godkänd för visning till patient.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.header.sourceSystemId",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.header.sourceSystemId",
      "short" : "Källsystem",
      "definition" : "Det källsystem som informationen lagras i. Fältet root sätts till HSA-id för källsystemet.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.header.record",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.header.record",
      "short" : "Uppgift i patientjournal",
      "definition" : "Metainformation avseende journaluppgiften (recorden).\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.header.record.recordId",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.header.record.recordId",
      "short" : "Journaluppgiftens unika identifierare",
      "definition" : "Unik och beständig identifierare för uppgift i patientjournal.\nSka vara unik — samma id får inte förekomma flera gånger (XSD-regel).\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.header.record.timestamp",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.header.record.timestamp",
      "short" : "Skapandetidpunkt",
      "definition" : "Första tidpunkten då denna journalinformation skapades.\nFormat: YYYYMMDDhhmmss. Kardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.header.author",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.header.author",
      "short" : "Dokumentationsansvarig",
      "definition" : "Hälso- och sjukvårdspersonal som ansvarar för informationen i journaluppgiften.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.header.author.authorId",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.header.author.authorId",
      "short" : "HSA-id för dokumentationsansvarig",
      "definition" : "HSA-id för hälso- och sjukvårdspersonal. Fältet root sätts till OID för HSA-id.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.header.author.name",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.header.author.name",
      "short" : "Namn på dokumentationsansvarig",
      "definition" : "Namn på hälso- och sjukvårdspersonal.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.header.author.timestamp",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.header.author.timestamp",
      "short" : "Tidpunkt för informationsskapande",
      "definition" : "Tidpunkt vid vilken journalinformationen skapades av författaren.\nFormat: YYYYMMDDhhmmss. Kardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.header.author.byRole",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.header.author.byRole",
      "short" : "Befattning",
      "definition" : "Information om hälso- och sjukvårdspersonalens befattning vid tidpunkten för dokumentationen.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.header.author.orgUnit",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.header.author.orgUnit",
      "short" : "Organisationsenhet",
      "definition" : "Den organisation som författaren är uppdragstagare i vid dokumentationstillfället.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.header.author.orgUnit.orgUnitHSAId",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.header.author.orgUnit.orgUnitHSAId",
      "short" : "HSA-id för organisationsenhet",
      "definition" : "HSA-id för organisationsenhet.\nKardinalitet: Valfri (OrgUnitType-konvention).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.header.author.orgUnit.orgUnitName",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.header.author.orgUnit.orgUnitName",
      "short" : "Namn på organisationsenhet",
      "definition" : "Namn på den organisation som författaren är uppdragstagare i.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.header.signature",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.header.signature",
      "short" : "Signeringsinformation",
      "definition" : "Signeringsinformation för journaluppgiften.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.header.signature.signatureId",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.header.signature.signatureId",
      "short" : "HSA-id för signerande person",
      "definition" : "HSA-id för hälso- och sjukvårdspersonal som signerat journaluppgiften.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.header.signature.name",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.header.signature.name",
      "short" : "Namn på signerande person",
      "definition" : "Namn på hälso- och sjukvårdspersonal som signerat journaluppgiften.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.header.signature.timestamp",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.header.signature.timestamp",
      "short" : "Tidpunkt för signering",
      "definition" : "Anger tidpunkten för signering av uppgift i patientjournal.\nFormat: YYYYMMDDhhmmss. Kardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.header.signature.byRole",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.header.signature.byRole",
      "short" : "Befattning vid signering",
      "definition" : "Information om signerande persons befattning.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.body",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.body",
      "short" : "Journalanteckningens innehåll",
      "definition" : "Journalanteckning — informationsinnehållet i anteckningen.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "getcaredocumentation-body-xor",
        "severity" : "error",
        "human" : "Antingen clinicalDocumentNoteText eller multimediaEntry ska anges, ej båda",
        "expression" : "clinicalDocumentNoteText.exists() xor multimediaEntry.exists()",
        "source" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMCareDocumentation"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.body.clinicalDocumentNoteCode",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.body.clinicalDocumentNoteCode",
      "short" : "Typ av anteckning",
      "definition" : "Typ av anteckning. Kod tas från KV Anteckningstyp (OID: 1.2.752.129.2.2.2.11).\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehds-tk/ValueSet/clinicaldocumentnotecode-vs"
      }
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.body.clinicalDocumentNoteTitle",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.body.clinicalDocumentNoteTitle",
      "short" : "Rubrik på anteckningen",
      "definition" : "Titel på anteckningen.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.body.clinicalDocumentNoteText",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.body.clinicalDocumentNoteText",
      "short" : "Anteckningens textinnehåll",
      "definition" : "Journalanteckningens innehåll i text. Texten kan vara formaterad i DocBook-format\noch ska då vara 'entity encoded'. Ömsesidigt uteslutande med multimediaEntry.\nKardinalitet: Valfri. XSD-regel: exakt ett av clinicalDocumentNoteText/multimediaEntry ska anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.body.multimediaEntry",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.body.multimediaEntry",
      "short" : "Binär bilaga",
      "definition" : "Journalanteckningens innehåll i form av en multimediafil.\nÖmsesidigt uteslutande med clinicalDocumentNoteText.\nKardinalitet: Valfri. XSD-regel: exakt ett av clinicalDocumentNoteText/multimediaEntry ska anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "getcaredocumentation-multimedia-xor",
        "severity" : "error",
        "human" : "Antingen value eller reference ska anges i multimediaEntry, ej båda",
        "expression" : "value.exists() xor reference.exists()",
        "source" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSLMCareDocumentation"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.body.multimediaEntry.mediaType",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.body.multimediaEntry.mediaType",
      "short" : "Medietyp",
      "definition" : "Typ av multimedia (MIME-typ). Tillåtna värden enligt MediaTypeEnum.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.body.multimediaEntry.value",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.body.multimediaEntry.value",
      "short" : "Binärdata",
      "definition" : "Binärdata som representerar objektet. Ömsesidigt uteslutande med reference.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.body.multimediaEntry.reference",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.body.multimediaEntry.reference",
      "short" : "Referens till extern fil",
      "definition" : "Referens till extern binär fil i form av en URL. Ömsesidigt uteslutande med value.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "url"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.body.dissentingOpinion",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.body.dissentingOpinion",
      "short" : "Avvikande mening",
      "definition" : "Om patienten eller någon för denna ansvarig person är av avvikande mening om\nnågon del av journalanteckningen.\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.body.dissentingOpinion.opinionId",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.body.dissentingOpinion.opinionId",
      "short" : "Id för avvikande mening",
      "definition" : "En universellt unik identifierare för den avvikande meningen.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.body.dissentingOpinion.authorTime",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.body.dissentingOpinion.authorTime",
      "short" : "Tidpunkt för avvikande mening",
      "definition" : "Tidpunkten då den avvikande meningen författades. Format: YYYYMMDDhhmmss.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.body.dissentingOpinion.opinion",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.body.dissentingOpinion.opinion",
      "short" : "Text för avvikande mening",
      "definition" : "Text som innehåller den avvikande meningen.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.body.dissentingOpinion.personId",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.body.dissentingOpinion.personId",
      "short" : "Id för författare till avvikande mening",
      "definition" : "Id för författaren av den avvikande meningen.\nroot sätts till OID för typ av identifierare. För personnummer: 1.2.752.129.2.1.3.1.\nextension sätts till personens identifierare (12 tecken).\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.careDocumentation.body.dissentingOpinion.personName",
      "path" : "SEEHDSLMCareDocumentation.careDocumentation.body.dissentingOpinion.personName",
      "short" : "Namn på författare till avvikande mening",
      "definition" : "Namnet på författaren av den avvikande meningen.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.hasMore",
      "path" : "SEEHDSLMCareDocumentation.hasMore",
      "short" : "Indikation om fler poster",
      "definition" : "Anges av tjänsteproducent när det finns ytterligare information att hämta\n(partiell datahämtning). Referensen ska vara giltig i minst en timme.\nKardinalitet: Valfri, lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.hasMore.logicalAddress",
      "path" : "SEEHDSLMCareDocumentation.hasMore.logicalAddress",
      "short" : "Logisk adress för partiell hämtning",
      "definition" : "Den logiska adressen till tjänsteproducenten som tillhandahåller resterande information.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.hasMore.reference",
      "path" : "SEEHDSLMCareDocumentation.hasMore.reference",
      "short" : "Referens för partiell hämtning",
      "definition" : "En unik identifierare som tjänstekonsumenten anger i nästa anrop via hasMoreReference.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.result",
      "path" : "SEEHDSLMCareDocumentation.result",
      "short" : "Resultat",
      "definition" : "Innehåller information om det gick bra eller ej att besvara begäran.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.result.resultCode",
      "path" : "SEEHDSLMCareDocumentation.result.resultCode",
      "short" : "Resultatkod",
      "definition" : "Anger resultatet av besvarad förfrågan. Tillåtna värden: OK, INFO, ERROR.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "SEEHDSLMCareDocumentation.result.resultText",
      "path" : "SEEHDSLMCareDocumentation.result.resultText",
      "short" : "Resultattext",
      "definition" : "Optionellt felmeddelande som innehåller information om eventuella fel.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
