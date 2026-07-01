// Lokalt kodverk i väntan på ev. formellt nationellt kodverk från HL7 Sweden
// UMI-FHIR-arbetsgruppen. Speglar den tregradiga skalan för allvarlighetsgrad
// (KV Allvarlighetsgrad, OID 1.2.752.129.2.2.3.3) som används i Socialstyrelsens
// UMI-modell och i HL7 Sweden UMI-FHIR-arbetsgruppens criticalityLevel-extension.
// Se ALERT-004.

CodeSystem: AlertCriticalityLevelCS
Id: alert-criticality-level-cs
Title: "AlertCriticalityLevel"
Description: """
  Tregradig skala för allvarlighetsgrad vid överkänslighet, härledd från
  KV Allvarlighetsgrad (1.2.752.129.2.2.3.3): livshotande, skadlig, besvärande.
  Används av extension `AlertCriticalityLevel` på Flag och reduceras vidare till
  en tvågradig skala (high/low) för AllergyIntolerance.criticality via
  ConceptMap AlertCriticalityMap.
"""
* ^url = "https://fhir.inera.se/CodeSystem/alert-criticality-level"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* #life-threatening "Life-threatening" "Livshotande allvarlighetsgrad."
* #harmful "Harmful" "Skadlig allvarlighetsgrad."
* #discomforting "Discomforting" "Besvärande allvarlighetsgrad."
