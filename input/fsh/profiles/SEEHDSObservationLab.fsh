Profile: SEEHDSObservationLab
Parent: $MedicalTestResultEuCore
Id: SEEHDSObservationLab
Title: "SE EHDS Observation – Laboratoriesvar (GetLaboratoryOrderOutcome)"
Description: "Profil för enskilda laboratorieresultat/analyser mappat från GetLaboratoryOrderOutcome. Används i kombination med SEEHDSDiagnosticReportLab."

* subject only Reference(SEEHDSPatient)
* subject MS
* subject ^short = "Patient (header.accessControlHeader.patientId)"

* status 1..1 MS
* status ^short = "Analysstatus (groupOfAnalyses.analysis.status)"

* category[laboratory] 1..1 MS
* category[laboratory] ^short = "Alltid laboratory (laboratoriesvar från GetLaboratoryOrderOutcome)"
* code 1..1 MS
* code ^short = "Analyskod (groupOfAnalyses.analysis.code – NPU/LOINC)"

* effective[x] MS
* effective[x] ^short = "Analystidpunkt (groupOfAnalyses.analysis.timestamp)"

* value[x] MS
* value[x] ^short = "Analysresultat (groupOfAnalyses.analysis.result.value – AnyValueType, se LAB-001)"

* interpretation MS
* interpretation ^short = "Tolkning av resultat (groupOfAnalyses.analysis.result.interpretation)"

* referenceRange MS
* referenceRange ^short = "Referensintervall (groupOfAnalyses.analysis.result.reference)"

* note MS
* note ^short = "Analyskommentar (groupOfAnalyses.analysis.comment)"
