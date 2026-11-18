# SE EHDS Provenance - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.12.0

## Resursprofil: SE EHDS Provenance 

**Användningar:**

* Exempel för denna Profil: [Provenance/SEEHDSProvenanceExample](Provenance-SEEHDSProvenanceExample.md)
* CapabilityStatements som använder denna Profil: [SE EHDS Resource Access Provider](CapabilityStatement-SEEHDSResourceAccessProvider.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/resource/inera.ehds.ehds-tk|current/StructureDefinition/StructureDefinition-SEEHDSProvenance.json)

### Formella vyer av profilinnehåll

 [Beskrivningsdifferentialer, ögonblicksbilder och andra representationer](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabell med nyckelelement](#tabs-key) 
*  [Differentialtabell](#tabs-diff) 
*  [Ögonblicksbildstabell](#tabs-snap) 
*  [Statistik/referenser](#tabs-summ) 
*  [Alla](#tabs-all) 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [Provenance](http://hl7.org/fhir/R4/provenance.html) 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [Provenance](http://hl7.org/fhir/R4/provenance.html) 

 **Vy med nyckelelement** 

#### Terminologibindningar

#### Begränsningar

 **Differentialvy** 

Denna struktur är härledd från [Provenance](http://hl7.org/fhir/R4/provenance.html) 

 **ÖgonblicksbildsvyView** 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [Provenance](http://hl7.org/fhir/R4/provenance.html) 

 

Andra representationer av profilen: [CSV](../StructureDefinition-SEEHDSProvenance.csv), [Excel](../StructureDefinition-SEEHDSProvenance.xlsx), [Schematron](../StructureDefinition-SEEHDSProvenance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSProvenance",
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSProvenance",
  "version" : "0.12.0",
  "name" : "SEEHDSProvenance",
  "title" : "SE EHDS Provenance",
  "status" : "draft",
  "date" : "2026-11-18T20:53:46+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Provenance-profil för EHDS-TK. Varje klinisk resurs åtföljs av en Provenance\nmed två agenter som speglar spärr-hierarkin enligt PDL:\n- custodian (yttre Sparr): `who` = den juridiskt ansvariga vårdgivaren\n- author (inre Sparr): `who` = personen som ansvarar för uppgiften (PractitionerRole\n  eller Practitioner) och `onBehalfOf` = den informationsägande vårdenheten\n\nMönstret följer FHIR:s referensmodell för Provenance, där `agent.who` är den som\ndeltog och `agent.onBehalfOf` är den organisation som personen agerade för.\nVårdenheten anges alltid i `agent[author].onBehalfOf`, också när personen är okänd.\n\nAgenterna skiljs åt på `agent.type` (diskriminator av typen pattern på `type`),\nsom ska innehålla kodningen `provenance-participant-type#custodian` respektive\n`provenance-participant-type#author`. En validator kan därmed avgöra vilken agent\nsom är vilken. Vårdgivare och vårdenhet anges som logisk referens med HSA-id. Se GENERAL-003.\n\nOBS: Om den FHIR-server som tillhandahåller data själv hanterar åtkomstfiltrering\nbaserat på anropande vårdpersonals kontext eller patientens e-hälsotjänst, behöver\nProvenance-agenterna för spärr och `meta.security` för `approvedForPatient` inte\ninkluderas i svaret — filtreringen sker då redan på servernivå.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "SE",
      "display" : "Sweden"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w3c.prov",
    "uri" : "http://www.w3.org/ns/prov",
    "name" : "W3C PROV"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "fhirauditevent",
    "uri" : "http://hl7.org/fhir/auditevent",
    "name" : "FHIR AuditEvent Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Provenance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Provenance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Provenance",
      "path" : "Provenance"
    },
    {
      "id" : "Provenance.target",
      "path" : "Provenance.target",
      "short" : "Referens till resursen som Provenance gäller",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.recorded",
      "path" : "Provenance.recorded",
      "short" : "Tidpunkt för dokumentation (documentTime från RIVTA, tolkad som Europe/Stockholm och angiven med offset, se GENERAL-001). OBS: för TK:er där documentTime har kardinalitet 0..0 (t.ex. GetDiagnosis) används istället accountableHealthcareProfessional.authorTime; för GetCareDocumentation (JoL-header) används header.author.timestamp med fallback header.record.timestamp (DOC-002) – se tjänstekontraktets mappningssida",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent",
      "path" : "Provenance.agent",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "type"
        }],
        "description" : "Agenterna skiljs åt på agent.type: custodian (vårdgivare, yttre Sparr) och author (person i who, vårdenhet i onBehalfOf, inre Sparr).",
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 2,
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:custodian",
      "path" : "Provenance.agent",
      "sliceName" : "custodian",
      "short" : "Juridiskt ansvarig vårdgivare – yttre Sparr",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:custodian.type",
      "path" : "Provenance.agent.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
          "code" : "custodian"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:custodian.who",
      "path" : "Provenance.agent.who",
      "short" : "Vårdgivare (careProviderHSAId / accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId / accessControlHeader.accountableCareGiver) – yttre Sparr",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSOrganization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:custodian.who.identifier",
      "path" : "Provenance.agent.who.identifier",
      "short" : "Vårdgivarens HSA-id",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:custodian.who.identifier.system",
      "path" : "Provenance.agent.who.identifier.system",
      "min" : 1,
      "patternUri" : "urn:oid:1.2.752.29.4.19",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:custodian.who.identifier.value",
      "path" : "Provenance.agent.who.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:custodian.onBehalfOf",
      "path" : "Provenance.agent.onBehalfOf",
      "max" : "0"
    },
    {
      "id" : "Provenance.agent:author",
      "path" : "Provenance.agent",
      "sliceName" : "author",
      "short" : "Ansvarig person för vårdenhetens räkning – inre Sparr",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:author.type",
      "path" : "Provenance.agent.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
          "code" : "author"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:author.who",
      "path" : "Provenance.agent.who",
      "short" : "Ansvarig person (accountableHealthcareProfessional / header.author); helst samma PractitionerRole som resursens eget författarelement",
      "comment" : "Samma person som resursens eget författarelement (recorder, asserter, author, performer, informationSource) när sådant finns. Saknas personens HSA-id anges namnet i who.display. Saknas både HSA-id och namn anges who med extensionen data-absent-reason (unknown).",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSPractitionerRole",
        "http://hl7.org/fhir/StructureDefinition/Practitioner"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:author.who.identifier",
      "path" : "Provenance.agent.who.identifier",
      "short" : "Personens HSA-id (healthcareProfessionalHSAId / header.author.id)",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:author.who.display",
      "path" : "Provenance.agent.who.display",
      "short" : "Personens namn (healthcareProfessionalName / header.author.name)",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:author.onBehalfOf",
      "path" : "Provenance.agent.onBehalfOf",
      "short" : "Informationsägande vårdenhet (careUnitHSAId / accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId / accessControlHeader.accountableCareUnit) – inre Sparr",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSOrganization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:author.onBehalfOf.identifier",
      "path" : "Provenance.agent.onBehalfOf.identifier",
      "short" : "Vårdenhetens HSA-id",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:author.onBehalfOf.identifier.system",
      "path" : "Provenance.agent.onBehalfOf.identifier.system",
      "min" : 1,
      "patternUri" : "urn:oid:1.2.752.29.4.19",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:author.onBehalfOf.identifier.value",
      "path" : "Provenance.agent.onBehalfOf.identifier.value",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
