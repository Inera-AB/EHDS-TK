Profile: SEEHDSTask
Parent: Task
Id: SEEHDSTask
Title: "SE EHDS Task – Remisstatus (GetRequestActivities)"
Description: "Profil för remisstatus och processaktiviteter mappat från RIVTA-tjänstekontraktet GetRequestActivities (crm:requeststatus v2.0). Täcker NPÖ 2.0 och 1177 Journal 1.0, 2.0."

* for only Reference(SEEHDSPatient)
* for MS
* for ^short = "Patient – den efterfrågade patienten (begärans patientId); svaret saknar patientidentitet"

* meta.source MS
* meta.source ^short = "Källsystem (requestActivity.header.sourceSystemId.extension) – https://tjanstekatalogen.inera.se/Endpoint/{hsaId} (GENERAL-005)"

* owner only Reference(SEEHDSPractitionerRole or SEEHDSOrganization)
* owner MS
* owner ^short = "Mottagande enhet (body.request.receivingOrganization)"

* authoredOn MS
* authoredOn ^short = "Skapad i källsystemet (header.record.timestamp)"

* lastModified MS
* lastModified ^short = "Statusändring (body.eventTime)"

* status 1..1 MS
* status ^short = "Status härledd från body.statusCode (Kv status vårdbegäran)"

* intent 1..1 MS

* focus MS
* focus only Reference(SEEHDSServiceRequestReferral)
* focus ^short = "Koppling till remiss (body.request.id)"

* identifier MS
* identifier ^short = "Remisstatusens id (header.record.id)"

* businessStatus MS
* businessStatus ^short = "Remisstatus enligt Kv status vårdbegäran (body.statusCode)"

* requester MS
* requester ^short = "Remittent (body.request.author)"
