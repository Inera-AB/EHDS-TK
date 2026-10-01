Profile: IneraEHDSCompositionCareDocumentation
Parent: Composition
Id: inera-ehds-composition-care-documentation
Title: "SE EHDS Composition – Strukturerad journalanteckning från DocBook (GetCareDocumentation)"
Description: """
  Valfri strukturerad representation av en journalanteckning från GetCareDocumentation v3.0 när
  innehållet är DocBook (clinicalDocumentNoteText eller en bilaga med mediaType
  application/docbook+xml). Varje DocBook-<section> blir en Composition.section med XHTML-narrativ
  (Strategi B, se DOC-004 och sidan DocBook-mappning).

  Kompletterar IneraEHDSDocumentReference, där innehållet alltid finns som XHTML (Strategi A).
  Composition kopplas till DocumentReference genom att samma Provenance har båda i
  Provenance.target.
"""

* status = #final
* status ^short = "Alltid final"

* type MS
* type ^short = "Anteckningstyp – kopieras från DocumentReference.type (careDocumentation.body.clinicalDocumentNoteCode)"

* subject 1..1 MS
* subject only Reference(IneraEHDSPatient)
* subject ^short = "Patient – kopieras från DocumentReference.subject"

* date MS
* date ^short = "Journaluppgiftens skapandetidpunkt – kopieras från DocumentReference.date (careDocumentation.header.record.timestamp)"

* author MS
* author only Reference(PractitionerRole or Organization)
* author ^short = "Dokumentationsansvarig – kopieras från DocumentReference.author; om author saknas: vårdenheten (accessControlHeader.accountableCareUnit) som Organization"

* title MS
* title ^short = "careDocumentation.body.clinicalDocumentNoteTitle; fallback \"Journalanteckning\""

* section 1..* MS
* section ^short = "En sektion per DocBook-<section>; löst innehåll under <article> i en avslutande namnlös sektion"
* section.title MS
* section.title ^short = "Text från DocBook-<title>; saknas för namnlös sektion"
* section.text 1..1 MS
* section.text ^short = "Sektionens eget innehåll som XHTML (samma transformation som Strategi A)"
* section.text.status = #generated
* section.section MS
* section.section ^short = "Nästlade DocBook-<section>"
