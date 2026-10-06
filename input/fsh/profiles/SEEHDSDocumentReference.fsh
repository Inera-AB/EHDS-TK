Profile: SEEHDSDocumentReference
Parent: DocumentReference
Id: SEEHDSDocumentReference
Title: "SE EHDS DocumentReference – Anteckningar (GetCareDocumentation)"
Description: """
  Profil för vårdanteckningar mappat från RIVTA-tjänstekontraktet GetCareDocumentation
  (clinicalprocess:healthcond:description v3.0). Täcker NPÖ 3.0 och 1177 Journal 3.0.

  Använder JoL-header v2.2 (ej PatientSummaryHeader): accessControlHeader för PDL,
  record för journaluppgift-metadata, author för dokumentationsansvarig,
  signature för signeringsinformation.
"""

* extension contains
    DocumentReferenceSignatureTime named ext-signature-time 0..1 MS
* extension[ext-signature-time] ^short = "Signeringstidpunkt (careDocumentation.header.signature.timestamp) – utelämnas om signature.timestamp saknas (DOC-003)"

* subject only Reference(SEEHDSPatient)
* subject MS
* subject ^short = "Patient (careDocumentation.header.accessControlHeader.patientId)"

* meta.source MS
* meta.source ^short = "Källsystem HSA-id (careDocumentation.header.sourceSystemId) – https://tjanstekatalogen.inera.se/Endpoint/{hsaId} (GENERAL-005)"

* author only Reference(SEEHDSPractitionerRole)
* author MS
* author ^short = "Dokumentationsansvarig (careDocumentation.header.author.authorId – JoL-header)"

* authenticator only Reference(SEEHDSPractitionerRole)
* authenticator MS
* authenticator ^short = "Signerande person (careDocumentation.header.signature.signatureId – JoL-header)"

* date MS
* date ^short = "Journaluppgiftens skapandetidpunkt (careDocumentation.header.record.timestamp)"

* status 1..1 MS
* status ^short = "Dokumentstatus – 'current' normalt; härledd"

* type MS
* type ^short = "Anteckningstyp (careDocumentation.body.clinicalDocumentNoteCode – KV Anteckningstyp)"

* category MS
* category ^short = "Dokumentkategori"

* content 1..* MS
* content.attachment 1..1 MS
* content.attachment.contentType MS
* content.attachment.contentType ^short = "Mimetyp (careDocumentation.body.multimediaEntry.mediaType); för clinicalDocumentNoteText text/plain; charset=utf-8 (fritext) eller text/html; charset=utf-8 (DocBook → XHTML, DOC-004)"
* content.attachment.data MS
* content.attachment.data ^short = "Anteckningstext/binärinnehåll (careDocumentation.body.clinicalDocumentNoteText / multimediaEntry.value) – för clinicalDocumentNoteText: fritext base64-kodas som text/plain; DocBook-XML transformeras till XHTML och base64-kodas som text/html (DOC-004)"
* content.attachment.url MS
* content.attachment.url ^short = "Referens till extern fil (careDocumentation.body.multimediaEntry.reference)"
* content.attachment.title MS
* content.attachment.title ^short = "Anteckningsrubrik (careDocumentation.body.clinicalDocumentNoteTitle)"

* context MS
* context.encounter only Reference(SEEHDSEncounter)
* context.encounter MS
* context.encounter ^short = "Tillhörande vårdkontakt (careDocumentation.header.accessControlHeader – koppling via vårdkontakt-id)"

Extension: DocumentReferenceSignatureTime
Id: ext-signature-time
Title: "Signeringstidpunkt för journalanteckning"
Description: "Tidpunkt då journalanteckningen signerades (careDocumentation.header.signature.timestamp, JoL-header v2.2). Anges endast när signature.timestamp finns i källan; ingen ersättningstidpunkt sätts annars. Se DOC-003."
* ^context[0].type = #element
* ^context[0].expression = "DocumentReference"
* value[x] only dateTime
