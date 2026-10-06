Instance: SEEHDSResourceAccessProvider
InstanceOf: CapabilityStatement
Usage: #definition
Title: "SE EHDS Resource Access Provider"
Description: """
  Krav på ett FHIR-API som tillhandahåller data från RIVTA-tjänstekontrakten enligt denna IG.
  Bygger på EURIDICE (EU Health Data API) Resource Access Provider och anger vilka profiler i
  denna IG som resurserna ska följa.
"""
* name = "SEEHDSResourceAccessProvider"
* status = #draft
* experimental = false
* date = "2026-10-05"
* publisher = "Inera AB"
* kind = #requirements
* instantiates = "http://hl7.eu/fhir/health-data-api/CapabilityStatement/resource-access-provider-eu-api"
* fhirVersion = #4.0.1
* format[+] = #json
* format[+] = #xml
* rest[+].mode = #server
* rest[=].documentation = "Alla sökningar är patientavgränsade (patient-parameter krävs), enligt EURIDICE. Varje utlämning loggas enligt SEEHDSAuditEventPatientQuery/SEEHDSAuditEventPatientRead."
* rest[=].resource[+].type = #Patient
* rest[=].resource[=].supportedProfile[+] = Canonical(SEEHDSPatient)
* rest[=].resource[+].type = #Condition
* rest[=].resource[=].supportedProfile[+] = Canonical(SEEHDSConditionDiagnosis)
* rest[=].resource[=].supportedProfile[+] = Canonical(SEEHDSConditionFunctional)
* rest[=].resource[+].type = #AllergyIntolerance
* rest[=].resource[=].supportedProfile[+] = Canonical(SEEHDSAllergyIntolerance)
* rest[=].resource[+].type = #Flag
* rest[=].resource[=].supportedProfile[+] = Canonical(SEEHDSFlag)
* rest[=].resource[+].type = #MedicationStatement
* rest[=].resource[=].supportedProfile[+] = Canonical(SEEHDSMedicationStatement)
* rest[=].resource[+].type = #Immunization
* rest[=].resource[=].supportedProfile[+] = Canonical(SEEHDSImmunization)
* rest[=].resource[+].type = #Observation
* rest[=].resource[=].supportedProfile[+] = Canonical(SEEHDSObservationLab)
* rest[=].resource[=].supportedProfile[+] = Canonical(SEEHDSObservationGrowth)
* rest[=].resource[=].supportedProfile[+] = Canonical(SEEHDSObservationMaternity)
* rest[=].resource[+].type = #DiagnosticReport
* rest[=].resource[=].supportedProfile[+] = Canonical(SEEHDSDiagnosticReportLab)
* rest[=].resource[=].supportedProfile[+] = Canonical(SEEHDSDiagnosticReportImaging)
* rest[=].resource[=].supportedProfile[+] = Canonical(SEEHDSDiagnosticReportReferral)
* rest[=].resource[+].type = #Encounter
* rest[=].resource[=].supportedProfile[+] = Canonical(SEEHDSEncounter)
* rest[=].resource[+].type = #DocumentReference
* rest[=].resource[=].supportedProfile[+] = Canonical(SEEHDSDocumentReference)
* rest[=].resource[+].type = #Composition
* rest[=].resource[=].supportedProfile[+] = Canonical(SEEHDSCompositionCareDocumentation)
* rest[=].resource[+].type = #CarePlan
* rest[=].resource[=].supportedProfile[+] = Canonical(SEEHDSCarePlan)
* rest[=].resource[+].type = #ImagingStudy
* rest[=].resource[=].supportedProfile[+] = Canonical(SEEHDSImagingStudy)
* rest[=].resource[+].type = #ServiceRequest
* rest[=].resource[=].supportedProfile[+] = Canonical(SEEHDSServiceRequestReferral)
* rest[=].resource[+].type = #Task
* rest[=].resource[=].supportedProfile[+] = Canonical(SEEHDSTask)
* rest[=].resource[+].type = #Provenance
* rest[=].resource[=].supportedProfile[+] = Canonical(SEEHDSProvenance)
* rest[=].resource[+].type = #AuditEvent
* rest[=].resource[=].supportedProfile[+] = Canonical(SEEHDSAuditEventReadAccessLog)
* rest[=].resource[=].supportedProfile[+] = Canonical(SEEHDSAuditEventPatientQuery)
* rest[=].resource[=].supportedProfile[+] = Canonical(SEEHDSAuditEventPatientRead)
