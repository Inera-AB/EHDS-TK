// RIV-TA GetAccessLogsForPatient 2.0 – svarsmeddelandet GetAccessLogsForPatientResponse.
// Struktur, namn, ordning, namnrymder och XSD-kardinaliteter är genererade från
// riv.informationsecurity.auditing.log/schemas/interactions/GetAccessLogsForPatientInteraction/GetAccessLogsForPatientResponder_2.0.xsd (bitbucket.org/rivta-domains).
// Kardinaliteter är verifierade mot TKB_informationsecurity_auditing_log.docx; texter är sammanslagna från tidigare modell och TKB.

Logical: SEEHDSLMAccessLog
Id: SEEHDSLMAccessLog
Title: "GetAccessLogForPatient"
Description: "Logisk modell för patientens åtkomstloggar hämtad via GetAccessLogForPatient (informationsecurity:auditing:log v1.1, 2.0). Krävs för 1177 Journal 1.1, 2.0 men ej för NPÖ."
* insert RivRoot(GetAccessLogsForPatientResponse, urn:riv:informationsecurity:auditing:log:GetAccessLogsForPatientResponder:2)
* accessLogsResult 1..1 BackboneElement "Resultatobjekt med status huruvida tjänsten returnerar ok eller om fel uppstått" """
    Resultatobjekt med status huruvida tjänsten returnerar ok eller om fel uppstått. Om tjänsten utförts korrekt returneras en lista med patientinformation och resultatkod OK. Vid eventuella fel i tjänsteanropet returneras ingen patientinformation. Statuskod som beskriver orsaken till fel returneras då tillsammans med ett felmeddelande.
  """
* accessLogsResult.reportResult 1..1 BackboneElement "reportResult"
* insert RivNs(accessLogsResult.reportResult, urn:riv:informationsecurity:auditing:log:2)
* accessLogsResult.reportResult.result 1..1 BackboneElement "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex." """
    Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.
  """
* insert RivNs(accessLogsResult.reportResult.result, urn:riv:informationsecurity:auditing:log:2)
* accessLogsResult.reportResult.result.resultCode 1..1 SEEHDSRivString "resultCode" """
    Tillåtna värden enligt XSD: OK, INFO, ERROR, VALIDATION_ERROR, ACCESSDENIED, REPORT_ON_QUEUE, REPORT_IN_PROCESS, REPORT_NOT_FOUND, MAX_QUERY_RESULT_EXCEEDED.
  """
* insert RivNs(accessLogsResult.reportResult.result.resultCode, urn:riv:informationsecurity:auditing:log:2)
* accessLogsResult.reportResult.result.resultText 0..1 SEEHDSRivString "resultText"
* insert RivNs(accessLogsResult.reportResult.result.resultText, urn:riv:informationsecurity:auditing:log:2)
* accessLogsResult.reportResult.startInterval 0..1 SEEHDSRivDateTime "Parameter som anger datum för första loggposten som finns för uppföljning när rapporten skapas" """
    Parameter som anger datum för första loggposten som finns för uppföljning när rapporten skapas.
  """
* insert RivNs(accessLogsResult.reportResult.startInterval, urn:riv:informationsecurity:auditing:log:2)
* accessLogsResult.reportResult.endInterval 0..1 SEEHDSRivDateTime "Parameter som anger datum för sista loggposten som finns för uppföljning när rapporten skapas" """
    Parameter som anger datum för sista loggposten som finns för uppföljning när rapporten skapas.
  """
* insert RivNs(accessLogsResult.reportResult.endInterval, urn:riv:informationsecurity:auditing:log:2)
* accessLogsResult.reportResult.queuedReportId 0..1 SEEHDSRivString "Parameter som anger id på den rapport som efterfrågas och returneras om anropet avslutas innan rapporten är …" """
    Parameter som anger id på den rapport som efterfrågas och returneras om anropet avslutas innan rapporten är genererad. Ytterligare anrop kan då göras med rapport id som inparameter för att hämta rapport. Finns för att undvika hängande anrop samt köa upp jobb vid hög belastning.
  """
* insert RivNs(accessLogsResult.reportResult.queuedReportId, urn:riv:informationsecurity:auditing:log:2)
* accessLogsResult.reportResult.queueTime 0..1 SEEHDSRivInteger "Anger förväntad tid i sekunder tills en köad rapport (identifierad med queuedReportId) kan levereras av …" """
    Anger förväntad tid i sekunder tills en köad rapport (identifierad med queuedReportId) kan levereras av producenten.
  """
* insert RivNs(accessLogsResult.reportResult.queueTime, urn:riv:informationsecurity:auditing:log:2)
* accessLogsResult.accesssLogs 0..1 BackboneElement "Datatyp som håller lista med Access loggar" """Datatyp som håller lista med Access loggar. Kan vara en tom lista."""
* insert RivNs(accessLogsResult.accesssLogs, urn:riv:informationsecurity:auditing:log:2)
* accessLogsResult.accesssLogs.accessLog 0..* BackboneElement "Datatyp som håller information för vilken vårdgivare och vårdenhet som haft åtkomst samt typ av resurs, orsak …" """
    Datatyp som håller information för vilken vårdgivare och vårdenhet som haft åtkomst samt typ av resurs, orsak och tidpunkt.
  """
* insert RivNs(accessLogsResult.accesssLogs.accessLog, urn:riv:informationsecurity:auditing:log:2)
* accessLogsResult.accesssLogs.accessLog.careProviderId 1..1 SEEHDSRivString "Vårdgivare som haft åtkomst" """Vårdgivare som haft åtkomst."""
* insert RivNs(accessLogsResult.accesssLogs.accessLog.careProviderId, urn:riv:informationsecurity:auditing:log:2)
* accessLogsResult.accesssLogs.accessLog.careProviderName 0..1 SEEHDSRivString "Namn på vårdgivare som haft åtkomst" """Namn på vårdgivare som haft åtkomst."""
* insert RivNs(accessLogsResult.accesssLogs.accessLog.careProviderName, urn:riv:informationsecurity:auditing:log:2)
* accessLogsResult.accesssLogs.accessLog.careUnitId 1..1 SEEHDSRivString "Vårdenhet som haft åtkomst" """Vårdenhet som haft åtkomst."""
* insert RivNs(accessLogsResult.accesssLogs.accessLog.careUnitId, urn:riv:informationsecurity:auditing:log:2)
* accessLogsResult.accesssLogs.accessLog.careUnitName 0..1 SEEHDSRivString "Namn på vårdenhet som haft åtkomst" """Namn på vårdenhet som haft åtkomst."""
* insert RivNs(accessLogsResult.accesssLogs.accessLog.careUnitName, urn:riv:informationsecurity:auditing:log:2)
* accessLogsResult.accesssLogs.accessLog.accessDate 1..1 SEEHDSRivDateTime "Tidpunkt för åtkomst" """Tidpunkt för åtkomst."""
* insert RivNs(accessLogsResult.accesssLogs.accessLog.accessDate, urn:riv:informationsecurity:auditing:log:2)
* accessLogsResult.accesssLogs.accessLog.userId 1..1 SEEHDSRivString "Vårdaktörens id" """Vårdaktörens id."""
* insert RivNs(accessLogsResult.accesssLogs.accessLog.userId, urn:riv:informationsecurity:auditing:log:2)
* accessLogsResult.accesssLogs.accessLog.userName 0..1 SEEHDSRivString "Namn på vårdaktör" """Namn på vårdaktör."""
* insert RivNs(accessLogsResult.accesssLogs.accessLog.userName, urn:riv:informationsecurity:auditing:log:2)
* accessLogsResult.accesssLogs.accessLog.userTitle 0..1 SEEHDSRivString "Titel på vårdaktör" """Titel på vårdaktör."""
* insert RivNs(accessLogsResult.accesssLogs.accessLog.userTitle, urn:riv:informationsecurity:auditing:log:2)
* accessLogsResult.accesssLogs.accessLog.purpose 1..1 SEEHDSRivString "Information om syftet med aktiviten" """
    Information om syftet med aktiviten. kan vara något av dessa värden: Vård och behandling, Kvalitetssäkring, Annan dokumentation enligt lag, Statistik, Administration och Kvalitetsregister.
  """
* insert RivNs(accessLogsResult.accesssLogs.accessLog.purpose, urn:riv:informationsecurity:auditing:log:2)
* accessLogsResult.accesssLogs.accessLog.resourceType 1..1 SEEHDSRivString "Typ av resurs" """Typ av resurs. Se ref #7 och #8"""
* insert RivNs(accessLogsResult.accesssLogs.accessLog.resourceType, urn:riv:informationsecurity:auditing:log:2)
