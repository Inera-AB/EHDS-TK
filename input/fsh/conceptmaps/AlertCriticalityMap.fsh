Instance: AlertCriticalityMap
InstanceOf: ConceptMap
Title: "GetAlertInformation – degreeOfSeverity (KV Allvarlighetsgrad) → FHIR"
Description: """
  Mappning från RIVTA GetAlertInformation hypersensitivity.degreeOfSeverity
  (KV Allvarlighetsgrad, OID 1.2.752.129.2.2.3.3) till tre FHIR-mål (ALERT-004):

  1. `Flag.extension[criticalityLevel]` – tregradig skala, direkt begreppsöversättning
     (livshotande/skadlig/besvärande → life-threatening/harmful/discomforting), i linje
     med HL7 Sweden UMI-FHIR-arbetsgruppens criticalityLevel-mönster.
  2. `AllergyIntolerance.criticality` – tvågradig reduktion av (1):
     life-threatening/harmful → high, discomforting → low.
  3. `AllergyIntolerance.reaction.severity` – tregradig skala (mild/moderate/severe),
     designbeslut i denna IG: besvärande → mild, skadlig → moderate, livshotande → severe.

  OBS: Källkoderna nedan (livshotande/skadlig/besvärande) är textuella platshållare för
  KV Allvarlighetsgrads faktiska kodvärden. Den nationella kodlistans exakta kodvärden
  (t.ex. SNOMED CT eller lokala koder) är inte publicerade i denna IG och behöver
  verifieras/uppdateras när de blir tillgängliga.
"""
Usage: #definition

* id = "alert-criticality-map"
* url = "https://fhir.inera.se/ConceptMap/alert-criticality-map"
* name = "AlertCriticalityMap"
* title = "GetAlertInformation degreeOfSeverity → FHIR (criticalityLevel / criticality / reaction.severity)"
* status = #active
* experimental = false
* date = "2026-07-01"
* sourceUri = "urn:oid:1.2.752.129.2.2.3.3"
* description = "Mappar KV Allvarlighetsgrad (livshotande/skadlig/besvärande, platshållarkoder) till Flag.extension[criticalityLevel], AllergyIntolerance.criticality och AllergyIntolerance.reaction.severity."

// Grupp 0: KV Allvarlighetsgrad → AlertCriticalityLevel (tregradig, Flag.extension[criticalityLevel])
* group[0].source = "urn:oid:1.2.752.129.2.2.3.3"
* group[0].target = "https://fhir.inera.se/CodeSystem/alert-criticality-level"

* group[0].element[0].code = #livshotande
* group[0].element[0].display = "Livshotande"
* group[0].element[0].target[0].code = #life-threatening
* group[0].element[0].target[0].display = "Life-threatening"
* group[0].element[0].target[0].equivalence = #equivalent

* group[0].element[1].code = #skadlig
* group[0].element[1].display = "Skadlig"
* group[0].element[1].target[0].code = #harmful
* group[0].element[1].target[0].display = "Harmful"
* group[0].element[1].target[0].equivalence = #equivalent

* group[0].element[2].code = #besvarande
* group[0].element[2].display = "Besvärande"
* group[0].element[2].target[0].code = #discomforting
* group[0].element[2].target[0].display = "Discomforting"
* group[0].element[2].target[0].equivalence = #equivalent

// Grupp 1: AlertCriticalityLevel (tregradig) → AllergyIntolerance.criticality (tvågradig reduktion)
* group[1].source = "https://fhir.inera.se/CodeSystem/alert-criticality-level"
* group[1].target = "http://hl7.org/fhir/allergy-intolerance-criticality"

* group[1].element[0].code = #life-threatening
* group[1].element[0].display = "Life-threatening"
* group[1].element[0].target[0].code = #high
* group[1].element[0].target[0].display = "High Risk"
* group[1].element[0].target[0].equivalence = #narrower

* group[1].element[1].code = #harmful
* group[1].element[1].display = "Harmful"
* group[1].element[1].target[0].code = #high
* group[1].element[1].target[0].display = "High Risk"
* group[1].element[1].target[0].equivalence = #narrower

* group[1].element[2].code = #discomforting
* group[1].element[2].display = "Discomforting"
* group[1].element[2].target[0].code = #low
* group[1].element[2].target[0].display = "Low Risk"
* group[1].element[2].target[0].equivalence = #narrower

* group[1].unmapped.mode = #fixed
* group[1].unmapped.code = #unable-to-assess
* group[1].unmapped.display = "Unable to Assess Risk"

// Grupp 2: KV Allvarlighetsgrad → AllergyIntolerance.reaction.severity (designbeslut denna IG)
* group[2].source = "urn:oid:1.2.752.129.2.2.3.3"
* group[2].target = "http://hl7.org/fhir/reaction-event-severity"

* group[2].element[0].code = #livshotande
* group[2].element[0].display = "Livshotande"
* group[2].element[0].target[0].code = #severe
* group[2].element[0].target[0].display = "Severe"
* group[2].element[0].target[0].equivalence = #relatedto
* group[2].element[0].target[0].comment = "Designbeslut: livshotande → severe (se ALERT-004)"

* group[2].element[1].code = #skadlig
* group[2].element[1].display = "Skadlig"
* group[2].element[1].target[0].code = #moderate
* group[2].element[1].target[0].display = "Moderate"
* group[2].element[1].target[0].equivalence = #relatedto
* group[2].element[1].target[0].comment = "Designbeslut: skadlig → moderate (se ALERT-004)"

* group[2].element[2].code = #besvarande
* group[2].element[2].display = "Besvärande"
* group[2].element[2].target[0].code = #mild
* group[2].element[2].target[0].display = "Mild"
* group[2].element[2].target[0].equivalence = #relatedto
* group[2].element[2].target[0].comment = "Designbeslut: besvärande → mild (se ALERT-004)"
