Instance: AlertVerificationStatusMap
InstanceOf: ConceptMap
Title: "GetAlertInformation – degreeOfCertainty (KV Visshetsgrad) → FHIR verificationStatus"
Description: """
  Mappning från RIVTA GetAlertInformation hypersensitivity.degreeOfCertainty
  (KV Visshetsgrad, OID 1.2.752.129.2.2.3.11) till FHIR verificationStatus (ALERT-004),
  använd av både `AllergyIntolerance.verificationStatus` och `Flag.extension[verificationStatus]`.

  Regel (i linje med Socialstyrelsens/HL7 Sweden UMI-FHIR-arbetsgruppens mönster):
  misstänkt → presumed. Om degreeOfCertainty saknas i källan antas observationen fastställd
  → confirmed (unmapped/fixed default). entered-in-error används inte.

  OBS: Källkoden "misstanki" nedan är en textuell platshållare för KV Visshetsgrads faktiska
  kodvärde. Den nationella kodlistans exakta kodvärden är inte publicerade i denna IG och
  behöver verifieras/uppdateras när de blir tillgängliga.
"""
Usage: #definition

* id = "alert-verification-status-map"
* url = "https://fhir.inera.se/ConceptMap/alert-verification-status-map"
* name = "AlertVerificationStatusMap"
* title = "GetAlertInformation degreeOfCertainty → FHIR AllergyIntolerance verificationStatus"
* status = #active
* experimental = false
* date = "2026-07-01"
* sourceUri = "urn:oid:1.2.752.129.2.2.3.11"
* targetUri = "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"
* description = "Mappar KV Visshetsgrad (misstänkt, platshållarkod) till FHIR AllergyIntolerance verificationStatus. Ospecificerat/saknat värde tolkas som confirmed."

* group[0].source = "urn:oid:1.2.752.129.2.2.3.11"
* group[0].target = "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"

* group[0].element[0].code = #misstankt
* group[0].element[0].display = "Misstänkt"
* group[0].element[0].target[0].code = #presumed
* group[0].element[0].target[0].display = "Presumed"
* group[0].element[0].target[0].equivalence = #equivalent

* group[0].unmapped.mode = #fixed
* group[0].unmapped.code = #confirmed
* group[0].unmapped.display = "Confirmed"
