# SE EHDS Condition – Funktionstillstånd och ADL (GetFunctionalStatus) - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.12.0

## Resursprofil: SE EHDS Condition – Funktionstillstånd och ADL (GetFunctionalStatus) 

**Användningar:**

* Exempel för denna Profil: [Condition/SEEHDSConditionFunctionalExample](Condition-SEEHDSConditionFunctionalExample.md)
* CapabilityStatements som använder denna Profil: [SE EHDS Resource Access Provider](CapabilityStatement-SEEHDSResourceAccessProvider.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/resource/inera.ehds.ehds-tk|current/StructureDefinition/StructureDefinition-SEEHDSConditionFunctional.json)

### Formella vyer av profilinnehåll

 [Beskrivningsdifferentialer, ögonblicksbilder och andra representationer](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabell med nyckelelement](#tabs-key) 
*  [Differentialtabell](#tabs-diff) 
*  [Ögonblicksbildstabell](#tabs-snap) 
*  [Statistik/referenser](#tabs-summ) 
*  [Alla](#tabs-all) 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [ConditionEuCore](http://hl7.eu/fhir/base/2.0.0-ballot/StructureDefinition-condition-eu-core.html) 

#### Terminologibindningar (differential)

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [ConditionEuCore](http://hl7.eu/fhir/base/2.0.0-ballot/StructureDefinition-condition-eu-core.html) 

 **Vy med nyckelelement** 

#### Terminologibindningar

#### Begränsningar

 **Differentialvy** 

Denna struktur är härledd från [ConditionEuCore](http://hl7.eu/fhir/base/2.0.0-ballot/StructureDefinition-condition-eu-core.html) 

#### Terminologibindningar (differential)

 **ÖgonblicksbildsvyView** 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [ConditionEuCore](http://hl7.eu/fhir/base/2.0.0-ballot/StructureDefinition-condition-eu-core.html) 

 

Andra representationer av profilen: [CSV](../StructureDefinition-SEEHDSConditionFunctional.csv), [Excel](../StructureDefinition-SEEHDSConditionFunctional.xlsx), [Schematron](../StructureDefinition-SEEHDSConditionFunctional.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSConditionFunctional",
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSConditionFunctional",
  "version" : "0.12.0",
  "name" : "SEEHDSConditionFunctional",
  "title" : "SE EHDS Condition – Funktionstillstånd och ADL (GetFunctionalStatus)",
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
  "description" : "Profil för funktionstillstånd och ADL-bedömningar mappat från RIVTA-tjänstekontraktet\nGetFunctionalStatus (clinicalprocess:healthcond:description v2.0).\nTäcker NPÖ 2.0 och 1177 Journal 2.0.\n\nTKBn har två bedömningskategorier: 'pad-pad' (PADL-bedömning) och 'fun-fun'\n(funktionsnedsättningsbedömning med ICF-kod). Condition.code mappas mot\nassessmentCategory (för PADL) eller disability.disabilityAssessment (ICF-kod).\nInget statusfält, tidperiod eller svårighetsgradfält finns i TKBn – dessa är härleddda.",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "http://hl7.eu/fhir/base/StructureDefinition/condition-eu-core",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.meta.source",
      "path" : "Condition.meta.source",
      "short" : "Källsystem HSA-id (functionalStatusAssessmentHeader.sourceSystemHSAId) – https://tjanstekatalogen.inera.se/Endpoint/{hsaId} (GENERAL-005)",
      "mustSupport" : true
    },
    {
      "id" : "Condition.meta.security",
      "path" : "Condition.meta.security",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Condition.meta.security:nopat",
      "path" : "Condition.meta.security",
      "sliceName" : "nopat",
      "short" : "Ej för patient (approvedForPatient = false i TK-headern) – se PDL-001",
      "definition" : "Anges när approvedForPatient i tjänstekontraktets header är false. Utelämnas när värdet är true. Koden är NOPAT från v3-ActCode (inte NOPATIENT, som inte finns i kodverket).",
      "min" : 0,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "NOPAT"
      },
      "mustSupport" : true
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "short" : "Utelämnas: klinisk status är okänd (TKB:n saknar status och slutdatum) – se CLINSTAT-001"
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "short" : "Alltid 'confirmed' – härledd (journaluppgifter anses bekräftade)",
      "mustSupport" : true
    },
    {
      "id" : "Condition.category",
      "path" : "Condition.category",
      "short" : "problem-list-item (FHIR condition-category) och pad-pad/fun-fun (AssessmentCategoryCS) i samma CodeableConcept, se FUNC-002",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.category.coding",
      "path" : "Condition.category.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 2,
      "mustSupport" : true
    },
    {
      "id" : "Condition.category.coding:condition-category",
      "path" : "Condition.category.coding",
      "sliceName" : "condition-category",
      "short" : "Alltid problem-list-item (FHIR condition-category)",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Condition.category.coding:condition-category.system",
      "path" : "Condition.category.coding.system",
      "min" : 1,
      "patternUri" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "mustSupport" : true
    },
    {
      "id" : "Condition.category.coding:condition-category.code",
      "path" : "Condition.category.coding.code",
      "min" : 1,
      "patternCode" : "problem-list-item",
      "mustSupport" : true
    },
    {
      "id" : "Condition.category.coding:bedomningskategori",
      "path" : "Condition.category.coding",
      "sliceName" : "bedomningskategori",
      "short" : "Bedömningskategori (functionalStatusAssessmentBody.assessmentCategory) – pad-pad eller fun-fun",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehds-tk/ValueSet/assessmentcategory-vs"
      }
    },
    {
      "id" : "Condition.category.coding:bedomningskategori.system",
      "path" : "Condition.category.coding.system",
      "min" : 1,
      "patternUri" : "https://fhir.inera.se/clinicalprocess-healthcond-description/CodeSystem/assessmentcategory-cs",
      "mustSupport" : true
    },
    {
      "id" : "Condition.category.coding:bedomningskategori.code",
      "path" : "Condition.category.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "short" : "Bedömningskod: assessmentCategory (pad-pad/fun-fun) eller disability.disabilityAssessment (ICF) – se FUNC-001",
      "mustSupport" : true
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "short" : "Patient (functionalStatusAssessmentHeader.patientId)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSPatient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.recordedDate",
      "path" : "Condition.recordedDate",
      "short" : "Bedömningstidpunkt (functionalStatusAssessmentHeader.documentTime)",
      "mustSupport" : true
    },
    {
      "id" : "Condition.recorder",
      "path" : "Condition.recorder",
      "short" : "Ansvarig hälso- och sjukvårdspersonal (functionalStatusAssessmentHeader.accountableHealthcareProfessional)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSPractitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.asserter",
      "path" : "Condition.asserter",
      "short" : "Rättslig äkthetsintygsgivare (functionalStatusAssessmentHeader.legalAuthenticator)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSPractitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.note",
      "path" : "Condition.note",
      "short" : "Fritext och PADL-poster (FUNC-001):\nnote[0].text ← functionalStatusAssessmentBody.comment (helbedömningskommentar)\nnote[n].text ← varje padl-post formaterad som '[typeOfAssessment]: assessment'\nAlternativ (ej valt): separata Observation-resurser per PADL-post med\nObservation.code = typeOfAssessment och Observation.valueString = assessment.",
      "mustSupport" : true
    }]
  }
}

```
