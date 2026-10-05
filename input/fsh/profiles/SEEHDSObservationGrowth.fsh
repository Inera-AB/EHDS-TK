Profile: SEEHDSObservationGrowth
Parent: SEEHDSObservationBase
Id: SEEHDSObservationGrowth
Title: "SE EHDS Observation – Tillväxtkurva (GetObservations + IoÖ v3)"
Description: """
  Profil för tillväxtobservationer (längd, vikt, huvudomfång, beräknad
  graviditetslängd) för barn och ungdom, baserad på:
  - GetObservations (clinicalprocess:healthcond:basic v2.0)
  - Interaktionsöverenskommelse Tillväxtkurva för barn och ungdom v3 (Inera, 2023-05-15)

  Ärver SEEHDSObservationBase och lägger till:
  - code bunden till GrowthObservationTypeVS (IoÖ-specificerade SNOMED CT-koder)
  - value[x] begränsad till Quantity (pq-grenen; IoÖ anger alltid PQ-värden)
  - Enhet (UCUM) per mättyp: cm (längd/hC), kg (vikt), d (gestationslängd)

  Kodsystem för observationType.type: SNOMED CT SE, OID 1.2.752.116.2.1.1.

  Täcker NPÖ 1.2 och 1177 Journal 1.2.
"""



// ─── Kod – bunden till IoÖ ValueSet ─────────────────────────

* code from GrowthObservationTypeVS (required)
* code MS
* code ^short = """
    IoÖ-kod (observationBody.observationType.type):
    SNOMED CT SE OID 1.2.752.116.2.1.1, kräver en av:
    1153637007 (kroppslängd), 50373000 (mått på kroppslängd),
    248334005 (längd i liggande – ej för nyanslutning),
    27113001 (kroppsvikt), 363812007 (huvudomfång),
    412726003 (graviditetslängd vid födelse).
  """

* code.coding MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "SNOMED CT-kod (obligatorisk per IoÖ)"

* code.coding contains
    snomedSE 1..1 MS

* code.coding[snomedSE].system = "http://snomed.info/sct"
* code.coding[snomedSE] ^short = """
    SNOMED CT SE-kod (IoÖ-obligatorisk):
    1153637007 | kroppslängd |
    50373000   | mått på kroppslängd |
    248334005  | längd i liggande (bakåtkompatibel) |
    27113001   | kroppsvikt |
    363812007  | huvudomfång |
    412726003  | graviditetslängd vid födelse |
  """


// ─── Värde = alltid Quantity (PQ) ─────────────────────────────────────────

* value[x] 1..1 MS
* value[x] only Quantity
* value[x] ^short = "Mätvärde (observationBody.observationValue.pq); IoÖ anger alltid pq-grenen för tillväxtmätningar"

* valueQuantity.value 1..1 MS
* valueQuantity.value ^short = """
    Mätetalet (observationBody.observationValue.pq.value):
    Längd: decimal cm, 0-1 decimal (t.ex. 49.5)
    Vikt:  decimal kg, 0-3 decimaler (t.ex. 5.830)
    Huvud: decimal cm, 1 decimal (t.ex. 38.5)
    Gest:  heltal dagar (t.ex. 280)
  """

* valueQuantity.unit 1..1 MS
* valueQuantity.unit ^short = "Enhet: 'cm' (längd/hC), 'kg' (vikt), 'd' (gestationslängd)"

* valueQuantity.system 1..1 MS
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.system ^short = "Alltid UCUM (http://unitsofmeasure.org)"

* valueQuantity.code 1..1 MS
* valueQuantity.code ^short = "UCUM-kod: cm | kg | d"
