// RIV-TA GetAccessLogsForPatient 1.1 (ehr:log) – svarsmeddelandet GetAccessLogsForPatientResponse.
// Struktur, namn, ordning, namnrymder och XSD-kardinaliteter är genererade från
// riv.ehr.log@1.2.4/schemas/interactions/querying/GetAccessLogsForPatientInteraction/GetAccessLogsForPatientResponder_1.1.xsd (bitbucket.org/rivta-domains).
// Kardinaliteter är verifierade mot TKB_ehr_log.docx; texter är sammanslagna från tidigare modell och TKB.

Logical: SEEHDSLMAccessLogV1
Id: SEEHDSLMAccessLogV1
Title: "GetAccessLogsForPatient 1.1"
Description: """
  Logisk modell för svaret i tjänstekontraktet GetAccessLogsForPatient 1.1 (ehr:log)
  (RIV-TA urn:riv:ehr:log:querying:GetAccessLogsForPatientResponder:1), domänversion 1.2.4.
  Äldre majorversion som fortfarande används. Senaste versionen beskrivs i SEEHDSLMAccessLog.
"""
* insert RivRoot(GetAccessLogsForPatientResponse, urn:riv:ehr:log:querying:GetAccessLogsForPatientResponder:1)
* accessLogsResultType 1..1 BackboneElement "Resultatobjekt med status hurvida tjänsten returnerar ok eller om fel uppstått" """
    Resultatobjekt med status hurvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts korrekt returneras en lista med patientinformation och resultatkod OK. Vid eventuella fel i tjänsteanropet returneras ingen patientinformation. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande.
  """
* insert RivXmlName(accessLogsResultType, AccessLogsResultType)
* accessLogsResultType.result 1..1 BackboneElement "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex." """
    Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.
  """
* insert RivNs(accessLogsResultType.result, urn:riv:ehr:log:querying:1)
* insert RivXmlName(accessLogsResultType.result, Result)
* accessLogsResultType.result.resultCode 1..1 SEEHDSRivString "resultCode" """
    Tillåtna värden enligt XSD: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, REPORT_ON_QUEUE, REPORT_IN_PROCESS, REPORT_NOT_FOUND, MAX_QUERY_RESULT_EXCEEDED.
  """
* insert RivNs(accessLogsResultType.result.resultCode, urn:riv:ehr:log:querying:1)
* insert RivXmlName(accessLogsResultType.result.resultCode, ResultCode)
* accessLogsResultType.result.resultText 1..1 SEEHDSRivString "resultText"
* insert RivNs(accessLogsResultType.result.resultText, urn:riv:ehr:log:querying:1)
* insert RivXmlName(accessLogsResultType.result.resultText, ResultText)
* accessLogsResultType.result.startInterval 0..1 SEEHDSRivDateTime "startInterval"
* insert RivNs(accessLogsResultType.result.startInterval, urn:riv:ehr:log:querying:1)
* insert RivXmlName(accessLogsResultType.result.startInterval, StartInterval)
* accessLogsResultType.result.endInterval 0..1 SEEHDSRivDateTime "endInterval"
* insert RivNs(accessLogsResultType.result.endInterval, urn:riv:ehr:log:querying:1)
* insert RivXmlName(accessLogsResultType.result.endInterval, EndInterval)
* accessLogsResultType.result.queuedReportId 0..1 SEEHDSRivString "queuedReportId"
* insert RivNs(accessLogsResultType.result.queuedReportId, urn:riv:ehr:log:querying:1)
* insert RivXmlName(accessLogsResultType.result.queuedReportId, QueuedReportId)
* accessLogsResultType.result.queueTime 0..1 SEEHDSRivInteger "queueTime"
* insert RivNs(accessLogsResultType.result.queueTime, urn:riv:ehr:log:querying:1)
* insert RivXmlName(accessLogsResultType.result.queueTime, QueueTime)
* accessLogsResultType.accesssLogs 0..1 BackboneElement "Datatyp som håller lista med Access loggar" """Datatyp som håller lista med Access loggar. Kan vara en tom lista."""
* insert RivNs(accessLogsResultType.accesssLogs, urn:riv:ehr:log:querying:1)
* insert RivXmlName(accessLogsResultType.accesssLogs, AccesssLogs)
* accessLogsResultType.accesssLogs.accessLog 0..* BackboneElement "Datatyp som håller information för vilken vårdgivare och vårdenhet som haft åtkomst samt typ av resurs, orsak …" """
    Datatyp som håller information för vilken vårdgivare och vårdenhet som haft åtkomst samt typ av resurs, orsak och tidpunkt.
  """
* insert RivNs(accessLogsResultType.accesssLogs.accessLog, urn:riv:ehr:log:querying:1)
* insert RivXmlName(accessLogsResultType.accesssLogs.accessLog, AccessLog)
* accessLogsResultType.accesssLogs.accessLog.careProviderId 1..1 SEEHDSRivString "Vårdgivare som haft åtkomst" """Vårdgivare som haft åtkomst."""
* insert RivNs(accessLogsResultType.accesssLogs.accessLog.careProviderId, urn:riv:ehr:log:querying:1)
* insert RivXmlName(accessLogsResultType.accesssLogs.accessLog.careProviderId, CareProviderId)
* accessLogsResultType.accesssLogs.accessLog.careProviderName 0..1 SEEHDSRivString "Namn på vårdgivare som haft åtkomst" """Namn på vårdgivare som haft åtkomst."""
* insert RivNs(accessLogsResultType.accesssLogs.accessLog.careProviderName, urn:riv:ehr:log:querying:1)
* insert RivXmlName(accessLogsResultType.accesssLogs.accessLog.careProviderName, CareProviderName)
* accessLogsResultType.accesssLogs.accessLog.careUnitId 1..1 SEEHDSRivString "Vårdenhet som haft åtkomst" """Vårdenhet som haft åtkomst."""
* insert RivNs(accessLogsResultType.accesssLogs.accessLog.careUnitId, urn:riv:ehr:log:querying:1)
* insert RivXmlName(accessLogsResultType.accesssLogs.accessLog.careUnitId, CareUnitId)
* accessLogsResultType.accesssLogs.accessLog.careUnitName 0..1 SEEHDSRivString "Namn på vårdenhet som haft åtkomst" """Namn på vårdenhet som haft åtkomst."""
* insert RivNs(accessLogsResultType.accesssLogs.accessLog.careUnitName, urn:riv:ehr:log:querying:1)
* insert RivXmlName(accessLogsResultType.accesssLogs.accessLog.careUnitName, CareUnitName)
* accessLogsResultType.accesssLogs.accessLog.accessDate 1..1 SEEHDSRivDateTime "Tidpunkt för åtkomst" """Tidpunkt för åtkomst."""
* insert RivNs(accessLogsResultType.accesssLogs.accessLog.accessDate, urn:riv:ehr:log:querying:1)
* insert RivXmlName(accessLogsResultType.accesssLogs.accessLog.accessDate, AccessDate)
* accessLogsResultType.accesssLogs.accessLog.userId 1..1 SEEHDSRivString "Aktörens Id"
* insert RivNs(accessLogsResultType.accesssLogs.accessLog.userId, urn:riv:ehr:log:querying:1)
* insert RivXmlName(accessLogsResultType.accesssLogs.accessLog.userId, UserId)
* accessLogsResultType.accesssLogs.accessLog.userName 0..1 SEEHDSRivString "Namn på vårdaktören"
* insert RivNs(accessLogsResultType.accesssLogs.accessLog.userName, urn:riv:ehr:log:querying:1)
* insert RivXmlName(accessLogsResultType.accesssLogs.accessLog.userName, UserName)
* accessLogsResultType.accesssLogs.accessLog.userTitle 0..1 SEEHDSRivString "Titel på vårdaktören"
* insert RivNs(accessLogsResultType.accesssLogs.accessLog.userTitle, urn:riv:ehr:log:querying:1)
* insert RivXmlName(accessLogsResultType.accesssLogs.accessLog.userTitle, UserTitle)
* accessLogsResultType.accesssLogs.accessLog.purpose 1..1 SEEHDSRivString "Information om syftet med aktiviten" """
    Information om syftet med aktiviten. kan vara något av dessa värden: Vård och behandling, Kvalitetssäkring, Annan dokumentation enligt lag, Statistik, Administration och Kvalitetsregister.
  """
* insert RivNs(accessLogsResultType.accesssLogs.accessLog.purpose, urn:riv:ehr:log:querying:1)
* insert RivXmlName(accessLogsResultType.accesssLogs.accessLog.purpose, Purpose)
* accessLogsResultType.accesssLogs.accessLog.resourceType 1..1 SEEHDSRivString "Typ av resurs" """Typ av resurs."""
* insert RivNs(accessLogsResultType.accesssLogs.accessLog.resourceType, urn:riv:ehr:log:querying:1)
* insert RivXmlName(accessLogsResultType.accesssLogs.accessLog.resourceType, ResourceType)
