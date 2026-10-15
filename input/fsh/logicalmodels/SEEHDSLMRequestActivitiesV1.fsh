// RIV-TA GetRequestActivities 1.0 – svarsmeddelandet GetRequestActivitiesResponse.
// Struktur, namn, ordning, namnrymder och XSD-kardinaliteter är genererade från
// riv.crm.requeststatus@1.0.7/schemas/interactions/GetRequestActivitiesInteraction/GetRequestActivitiesResponder_1.0.xsd (bitbucket.org/rivta-domains).
// Kardinaliteter är verifierade mot TKB_crm_requeststatus.docx; texter är sammanslagna från tidigare modell och TKB.

Logical: SEEHDSLMRequestActivitiesV1
Id: SEEHDSLMRequestActivitiesV1
Title: "GetRequestActivities 1.0"
Description: """
  Logisk modell för svaret i tjänstekontraktet GetRequestActivities 1.0
  (RIV-TA urn:riv:crm:requeststatus:GetRequestActivitiesResponder:1), domänversion 1.0.7.
  Äldre majorversion som fortfarande används. Senaste versionen beskrivs i SEEHDSLMRequestActivities.
"""
* insert RivRoot(GetRequestActivitiesResponse, urn:riv:crm:requeststatus:GetRequestActivitiesResponder:1)
* requestActivity 0..* BackboneElement "Remisstatus som matchar begäran"
* requestActivity.subjectOfCareId 1..1 SEEHDSRivString "Person eller samordnings-nummer enligt skatteverkets definition 12 tecken" """
    Person eller samordnings-nummer enligt skatteverkets definition 12 tecken. Del av instansen unikhet. Personnummer OID: 1.2.752.129.2.1.3.1
  """
* insert RivNs(requestActivity.subjectOfCareId, urn:riv:crm:requeststatus:1)
* requestActivity.senderRequestId 0..1 SEEHDSRivString "Framställarens identitetsbeteckning för framställan" """
    Framställarens identitetsbeteckning för framställan. Är Remiss Id. Identifierare som är unik inom källsystemet. Om tomt så måste receiverRequestId vara infylld, alltså båda kan inte vara tomma.
  """
* insert RivNs(requestActivity.senderRequestId, urn:riv:crm:requeststatus:1)
* requestActivity.receiverRequestId 0..1 SEEHDSRivString "Mottagarens identitetsbeteckning för framställan Identifierare som är unik inom källsystemet" """
    Mottagarens identitetsbeteckning för framställan Identifierare som är unik inom källsystemet. Om tomt så måste senderRequestId vara infylld, alltså båda kan inte vara tomma.
  """
* insert RivNs(requestActivity.receiverRequestId, urn:riv:crm:requeststatus:1)
* requestActivity.typeOfRequest 1..1 SEEHDSRivString "Kod som anger vilken typ av framställan som avses" """
    Kod som anger vilken typ av framställan som avses. Kodverket saknar nationell förankring. Giltiga värden: 1 = röntgenremiss 2 = labbremiss 4 = allmänremiss 10 = fysiologiremiss
    Tillåtna värden enligt XSD: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10.
  """
* insert RivNs(requestActivity.typeOfRequest, urn:riv:crm:requeststatus:1)
* requestActivity.requestMedium 0..1 SEEHDSRivString "Kod och klartext som anger medium för framställan" """
    Kod och klartext som anger medium för framställan. KTOV/KV Form av framställan (OID: 1.2.752.129.2.2.2.7). Giltiga värden: 3 = skriftligt elektroniskt 4 = skriftligt papper
    Tillåtna värden enligt XSD: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10.
  """
* insert RivNs(requestActivity.requestMedium, urn:riv:crm:requeststatus:1)
* requestActivity.requestIssuedByPersonName 0..1 SEEHDSRivString "Namn på den person som framställt framställan" """Namn på den person som framställt framställan."""
* insert RivNs(requestActivity.requestIssuedByPersonName, urn:riv:crm:requeststatus:1)
* requestActivity.requestIssuedByOrganizationalUnitId 0..1 SEEHDSRivString "Identitetsbeteckning för den organisationsenhet inom vars uppdrag som framställan görs" """
    Identitetsbeteckning för den organisationsenhet inom vars uppdrag som framställan görs. HSA-id OID 1.2.752.129.2.1.4.1
  """
* insert RivNs(requestActivity.requestIssuedByOrganizationalUnitId, urn:riv:crm:requeststatus:1)
* requestActivity.requestIssuedByOrganizationalUnitDescription 0..1 SEEHDSRivString "Beskrivning av enheten" """
    Beskrivning av enheten. Format: fritext. Exempel: Närakuten +468 398 72, Solna Torg 3, 171 45 SOLNA. Saknas requestIssuedByOrganizationalUnitId så skrivs information om enheten här.
  """
* insert RivNs(requestActivity.requestIssuedByOrganizationalUnitDescription, urn:riv:crm:requeststatus:1)
* requestActivity.receivingPersonName 0..1 SEEHDSRivString "Namn på den hälso- och sjukvårdspersonal som mottar framställan Motsvarar HSA ”fullName”" """Namn på den hälso- och sjukvårdspersonal som mottar framställan Motsvarar HSA ”fullName”."""
* insert RivNs(requestActivity.receivingPersonName, urn:riv:crm:requeststatus:1)
* requestActivity.receivingOrganizationalUnitId 0..1 SEEHDSRivString "Identitetsbeteckning för den enhet inom vars uppdrag som framställan mottages HSA-id OID 1.2.752.129.2.1.4.1"
* insert RivNs(requestActivity.receivingOrganizationalUnitId, urn:riv:crm:requeststatus:1)
* requestActivity.receivingOrganizationalUnitDescription 0..1 SEEHDSRivString "Beskrivning av enheten" """
    Beskrivning av enheten. Format: fritext Exempel: Närakuten +468 398 72, Solna Torg 3, 171 45 SOLNA. Om receivingOrganizationalUnitId saknas skrivs information om enheten här.
  """
* insert RivNs(requestActivity.receivingOrganizationalUnitDescription, urn:riv:crm:requeststatus:1)
* requestActivity.careUnit 0..1 SEEHDSRivString "HSA-id för informationsägande vårdenhet" """
    HSA-id för informationsägande vårdenhet. Inre sekretess enligt PDL 4 kap. 4-5 §§ ”vårdenhet”. HSA-id OID 1.2.752.129.2.1.4.1
  """
* insert RivNs(requestActivity.careUnit, urn:riv:crm:requeststatus:1)
* requestActivity.logicalSystemId 1..1 SEEHDSRivString "Referens till informationskällan" """
    Referens till informationskällan. <Systemets HSA-id>. Format enligt aktuell identiferare, tex HSA-id OID 1.2.752.129.2.1.4.1
  """
* insert RivNs(requestActivity.logicalSystemId, urn:riv:crm:requeststatus:1)
* requestActivity.statusCode 1..1 SEEHDSRivString "Anger i vilken status remissen befinner sig i" """
    Anger i vilken status remissen befinner sig i. Kodverket saknar nationell förankring. kod=20 namn=Skickad, används av framställantyp (1=Ja, 4=Ja,10=Ja, 2=Ja) kod=30 namn=Mottagen används av framställantyp (1=Ja, 4=Ja, 10=Ja, 2=Ja) kod=90 namn=Bedömd används av framställantyp (1=Ja, 4=Ja, 10= Ja) kod=126 namn=Preliminärsvar skickat används av framställantyp (1=Ja , 2=Ja) kod=130 namn=Svar skickat används av framställantyp (1=Ja, 4=Ja, 2=Ja) kod=136 namn=Preliminärsvar mottaget används av framställantyp (1=Ja , 2=Ja) kod=140 namn=Svar mottaget används av framställantyp (1=Ja, 4=Ja, 10=Ja, 2=Ja)
    Tillåtna värden enligt XSD: 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 126, 130, 136, 140, 150, 160, 170.
  """
* insert RivNs(requestActivity.statusCode, urn:riv:crm:requeststatus:1)
* requestActivity.eventTime 1..1 SEEHDSRivString "Anger tidspunkt när händelsen inträffade" """Anger tidspunkt när händelsen inträffade."""
* insert RivNs(requestActivity.eventTime, urn:riv:crm:requeststatus:1)
