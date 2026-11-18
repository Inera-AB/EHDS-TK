# SE EHDS Observation – Laboratoriesvar (GetLaboratoryOrderOutcome) - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.10.0

## Resursprofil: SE EHDS Observation – Laboratoriesvar (GetLaboratoryOrderOutcome) 

**Användningar:**

* Referera till denna Profil: [SE EHDS DiagnosticReport – Provsvar (GetLaboratoryOrderOutcome)](StructureDefinition-SEEHDSDiagnosticReportLab.md)
* CapabilityStatements som använder denna Profil: [SE EHDS Resource Access Provider](CapabilityStatement-SEEHDSResourceAccessProvider.md)

Du kan också kontrollera [användningar i FHIR IG-statistiken](https://packages2.fhir.org/xig/resource/inera.ehds.ehds-tk|current/StructureDefinition/StructureDefinition-SEEHDSObservationLab.json)

### Formella vyer av profilinnehåll

 [Beskrivningsdifferentialer, ögonblicksbilder och andra representationer](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tabell med nyckelelement](#tabs-key) 
*  [Differentialtabell](#tabs-diff) 
*  [Ögonblicksbildstabell](#tabs-snap) 
*  [Statistik/referenser](#tabs-summ) 
*  [Alla](#tabs-all) 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [MedicalTestResultEuCore](http://hl7.eu/fhir/base/2.0.0-ballot/StructureDefinition-medicalTestResult-eu-core.html) 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [MedicalTestResultEuCore](http://hl7.eu/fhir/base/2.0.0-ballot/StructureDefinition-medicalTestResult-eu-core.html) 

 **Vy med nyckelelement** 

#### Terminologibindningar

#### Begränsningar

 **Differentialvy** 

Denna struktur är härledd från [MedicalTestResultEuCore](http://hl7.eu/fhir/base/2.0.0-ballot/StructureDefinition-medicalTestResult-eu-core.html) 

 **ÖgonblicksbildsvyView** 

#### Terminologibindningar

#### Begränsningar

Denna struktur är härledd från [MedicalTestResultEuCore](http://hl7.eu/fhir/base/2.0.0-ballot/StructureDefinition-medicalTestResult-eu-core.html) 

 

Andra representationer av profilen: [CSV](../StructureDefinition-SEEHDSObservationLab.csv), [Excel](../StructureDefinition-SEEHDSObservationLab.xlsx), [Schematron](../StructureDefinition-SEEHDSObservationLab.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SEEHDSObservationLab",
  "url" : "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSObservationLab",
  "version" : "0.10.0",
  "name" : "SEEHDSObservationLab",
  "title" : "SE EHDS Observation – Laboratoriesvar (GetLaboratoryOrderOutcome)",
  "status" : "draft",
  "date" : "2026-11-18T13:32:07+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Profil för enskilda laboratorieresultat/analyser mappat från GetLaboratoryOrderOutcome. Används i kombination med SEEHDSDiagnosticReportLab.",
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
  "type" : "Observation",
  "baseDefinition" : "http://hl7.eu/fhir/base/StructureDefinition/medicalTestResult-eu-core",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.meta.security",
      "path" : "Observation.meta.security",
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
      "id" : "Observation.meta.security:nopat",
      "path" : "Observation.meta.security",
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
      "id" : "Observation.status",
      "path" : "Observation.status",
      "short" : "Analysstatus (groupOfAnalyses.analysis.status)",
      "mustSupport" : true
    },
    {
      "id" : "Observation.category:laboratory",
      "path" : "Observation.category",
      "sliceName" : "laboratory",
      "short" : "Alltid laboratory (laboratoriesvar från GetLaboratoryOrderOutcome)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Analyskod (groupOfAnalyses.analysis.code – NPU/LOINC)",
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "short" : "Patient (header.accessControlHeader.patientId)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSPatient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "short" : "Analystidpunkt (groupOfAnalyses.analysis.timestamp)",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "Analysresultat (groupOfAnalyses.analysis.result.value – AnyValueType, se LAB-001)",
      "mustSupport" : true
    },
    {
      "id" : "Observation.interpretation",
      "path" : "Observation.interpretation",
      "short" : "Tolkning av resultat (groupOfAnalyses.analysis.result.interpretation)",
      "mustSupport" : true
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "short" : "Analyskommentar (groupOfAnalyses.analysis.comment)",
      "mustSupport" : true
    },
    {
      "id" : "Observation.referenceRange",
      "path" : "Observation.referenceRange",
      "short" : "Referensintervall (groupOfAnalyses.analysis.result.reference)",
      "mustSupport" : true
    }]
  }
}

```
