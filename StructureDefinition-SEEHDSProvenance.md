# SE EHDS Provenance - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SE EHDS Provenance**

## Resource Profile: SE EHDS Provenance 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSProvenance | *Version*:0.7.0 |
| Draft as of 2026-10-26 | *Computable Name*:SEEHDSProvenance |

 
Provenance-profil för EHDS-TK. Varje klinisk resurs åtföljs av en Provenance med två agenter som speglar spärr-hierarkin enligt PDL: 
* custodian (yttre Sparr) — den juridiskt ansvariga vårdgivaren
* author (inre Sparr) — den informationsägande vårdenheten
 
Agenterna skiljs åt på `agent.type` (diskriminator av typen pattern på `type`), som ska innehålla kodningen `provenance-participant-type#custodian` respektive `provenance-participant-type#author`. En validator kan därmed avgöra vilken agent som är vilken. Båda agenterna anges som logisk referens med HSA-id i `who.identifier`. Se GENERAL-003. 
OBS: Om den FHIR-server som tillhandahåller data själv hanterar åtkomstfiltrering baserat på anropande vårdpersonals kontext eller patientens e-hälsotjänst, behöver Provenance-agenterna för spärr och `meta.security` för `approvedForPatient` inte inkluderas i svaret — filtreringen sker då redan på servernivå. 

**Användningar:**

* Exempel för denna Profil: [Provenance/SEEHDSProvenanceExample](Provenance-SEEHDSProvenanceExample.md)
* CapabilityStatements som använder denna Profil: [SE EHDS Resource Access Provider](CapabilityStatement-SEEHDSResourceAccessProvider.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/inera.ehds.tk|current/StructureDefinition/SEEHDSProvenance)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SEEHDSProvenance.csv), [Excel](StructureDefinition-SEEHDSProvenance.xlsx), [Schematron](StructureDefinition-SEEHDSProvenance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSProvenance",
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSProvenance",
  "version" : "0.7.0",
  "name" : "SEEHDSProvenance",
  "title" : "SE EHDS Provenance",
  "status" : "draft",
  "date" : "2026-10-26T15:58:30+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Provenance-profil för EHDS-TK. Varje klinisk resurs åtföljs av en Provenance\nmed två agenter som speglar spärr-hierarkin enligt PDL:\n- custodian (yttre Sparr) — den juridiskt ansvariga vårdgivaren\n- author (inre Sparr) — den informationsägande vårdenheten\n\nAgenterna skiljs åt på `agent.type` (diskriminator av typen pattern på `type`),\nsom ska innehålla kodningen `provenance-participant-type#custodian` respektive\n`provenance-participant-type#author`. En validator kan därmed avgöra vilken agent\nsom är vilken. Båda agenterna anges som logisk referens med HSA-id i\n`who.identifier`. Se GENERAL-003.\n\nOBS: Om den FHIR-server som tillhandahåller data själv hanterar åtkomstfiltrering\nbaserat på anropande vårdpersonals kontext eller patientens e-hälsotjänst, behöver\nProvenance-agenterna för spärr och `meta.security` för `approvedForPatient` inte\ninkluderas i svaret — filtreringen sker då redan på servernivå.",
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
        "description" : "Agenterna skiljs åt på agent.type: custodian (vårdgivare, yttre Sparr) och author (vårdenhet, inre Sparr).",
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
      "short" : "Vårdgivare (careProviderHSAId / accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId) – yttre Sparr",
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
      "id" : "Provenance.agent:author",
      "path" : "Provenance.agent",
      "sliceName" : "author",
      "short" : "Informationsägande vårdenhet – inre Sparr",
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
      "short" : "Vårdenhet (careUnitHSAId / accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId) – inre Sparr",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSOrganization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:author.who.identifier",
      "path" : "Provenance.agent.who.identifier",
      "short" : "Vårdenhetens HSA-id",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:author.who.identifier.system",
      "path" : "Provenance.agent.who.identifier.system",
      "min" : 1,
      "patternUri" : "urn:oid:1.2.752.29.4.19",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent:author.who.identifier.value",
      "path" : "Provenance.agent.who.identifier.value",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
