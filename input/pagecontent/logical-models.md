# Logical Models

Denna sida dokumenterar de logiska informationsmodeller som utgör grunden för profilerna i denna IG. De logiska modellerna är en exakt avbildning av svarsmeddelandena i Ineras RIVTA-tjänstekontrakt: samma elementnamn, nästling, ordning, XML-namnrymder och datatyper som i XSD:erna, med kardinaliteter verifierade mot respektive TKB. De kan därför användas både som dokumentation och som källstruktur när en FML-motor (StructureMap) läser RIV-TA-XML direkt.

---

### Syfte

De logiska modellerna nedan representerar de informationskrav som definieras av respektive tjänstekontrakt i Ineras tjänstekatalog. De tjänar som auktoritativ källa för vilka data som ska utväxlas och utgör grunden för FHIR-profilerna i IG:t.

---

### Modeller

| Logisk modell | Tjänstekontrakt | FHIR-grupp |
|---|---|---|
| [SEEHDSLMDiagnosis](StructureDefinition-SEEHDSLMDiagnosis.html) | GetDiagnosis | Patientöversikt |
| [SEEHDSLMAlertInformation](StructureDefinition-SEEHDSLMAlertInformation.html) | GetAlertInformation | Patientöversikt |
| [SEEHDSLMMedicationHistory](StructureDefinition-SEEHDSLMMedicationHistory.html) | GetMedicationHistory | Patientöversikt |
| [SEEHDSLMVaccinationHistory](StructureDefinition-SEEHDSLMVaccinationHistory.html) | GetVaccinationHistory | Patientöversikt |
| [SEEHDSLMFunctionalStatus](StructureDefinition-SEEHDSLMFunctionalStatus.html) | GetFunctionalStatus | Patientöversikt |
| [SEEHDSLMMaternityMedicalHistory](StructureDefinition-SEEHDSLMMaternityMedicalHistory.html) | GetMaternityMedicalHistory | Patientöversikt |
| [SEEHDSLMCarePlans](StructureDefinition-SEEHDSLMCarePlans.html) | GetCarePlans | Patientöversikt |
| [SEEHDSLMCareContacts](StructureDefinition-SEEHDSLMCareContacts.html) | GetCareContacts | Patientöversikt |
| [SEEHDSLMCareDocumentation](StructureDefinition-SEEHDSLMCareDocumentation.html) | GetCareDocumentation | Patientöversikt |
| [SEEHDSLMLaboratoryOrderOutcome](StructureDefinition-SEEHDSLMLaboratoryOrderOutcome.html) | GetLaboratoryOrderOutcome | Laboratorie och diagnostik |
| [SEEHDSLMImagingOutcome](StructureDefinition-SEEHDSLMImagingOutcome.html) | GetImagingOutcome | Bilddiagnostik |
| [SEEHDSLMReferralOutcome](StructureDefinition-SEEHDSLMReferralOutcome.html) | GetReferralOutcome | Remiss och process |
| [SEEHDSLMRequestActivities](StructureDefinition-SEEHDSLMRequestActivities.html) | GetRequestActivities | Remiss och process |
| [SEEHDSLMObservations](StructureDefinition-SEEHDSLMObservations.html) | GetObservations | Tillväxtkurva barn |
| [SEEHDSLMAccessLog](StructureDefinition-SEEHDSLMAccessLog.html) | GetAccessLogForPatient | Logg |

---

### Hur modellerna är byggda {#uppbyggnad}

Modellerna är genererade från XSD:erna i respektive RIV-TA-domän (bitbucket.org/rivta-domains) och slås ihop med beskrivningar från TKB:n och den tidigare handskrivna dokumentationen.

| Egenskap i XSD:n | Representation i den logiska modellen |
|---|---|
| Rotelementet, t.ex. `GetDiagnosisResponse` | Modellens rot. Tillägget `http://hl7.org/fhir/tools/StructureDefinition/xml-name` anger XML-namnet och `elementdefinition-namespace` responder-namnrymden |
| Elementets namnrymd | `elementdefinition-namespace` på varje element vars namnrymd skiljer sig från rotens. Rotens direkta barn ligger i responder-namnrymden; allt därunder i domänens kärnnamnrymd (eller en `_ext`-namnrymd) |
| Komplex typ, t.ex. `PatientSummaryHeaderType` | `BackboneElement` med samma barn i samma ordning |
| RIV-TA-datatyp: `IIType`, `CVType`, `PersonIdType`, `PQType`, `PQIntervalType`, `TimePeriodType`, `PartialDateType`, `PartialTimeStampType` | Egen logisk modell per namnrymd, t.ex. `SEEHDSRivCVTypeHealthcondDescription2`, eftersom datatypens underelement ärver datatypens namnrymd och fälten skiljer sig mellan domänerna |
| Enkelt innehåll (`xs:string`, `TimeStampType`, `xs:boolean` …) | En omslagstyp (`SEEHDSRivString`, `SEEHDSRivTimeStamp`, `SEEHDSRivBoolean`, `SEEHDSRivInteger`, `SEEHDSRivDecimal`, `SEEHDSRivDate`, `SEEHDSRivDateTime`, `SEEHDSRivBase64Binary`, `SEEHDSRivAnyURI`) vars `value` har `representation = xmlText`, eftersom RIV-TA lägger värdet som textinnehåll och inte i ett `value`-attribut |
| Kodlista (`xs:enumeration`) | Omslagstyp med tillåtna värden i definitionen; där IG:n har en värdemängd binds den på `.value` |
| Elementnamn med understreck, t.ex. `ivl_pq` | FHIR-namn i camelCase (`ivlPq`) och XML-namnet i `xml-name` |
| Elementnamn som krockar med FHIR:s ärvda element: `id`, `extension`, `modifierExtension` | FHIR-namnen `rivId`, `rivExtension` och `rivModifierExtension`, med XML-namnet i `xml-name`. Mappningssidorna använder XSD-namnen, t.ex. `header.record.id` och `id.extension` |
| Rekursion (`result.related` i GetLaboratoryOrderOutcome) | `contentReference` |
| `xs:any` (utökningspunkter) | Utelämnas |

Typer som `PatientSummaryHeaderType`, `HealthcareProfessionalType`, `OrgUnitType`, `LegalAuthenticatorType` och `ResultType` skrivs ut i varje modell, så att mappningssidornas sökvägar (t.ex. `diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId`) gäller i modellen.

### Användning med FML {#fml}

En FML-motor baserad på HL7:s Java-verktyg (t.ex. Matchbox eller validatorn) kan läsa svarsmeddelandet som källa när modellen och datatypmodellerna är laddade:

- Källan är själva svarselementet, t.ex. `<GetDiagnosisResponse>`. SOAP-kuvertet måste skalas av först.
- Rotelementet matchas mot modellen via `xml-name` och namnrymd.
- Textinnehåll nås via `.value`, t.ex. `src.diagnosis.diagnosisHeader.documentId.value`.
- Tidsstämplar (`SEEHDSRivTimeStamp`) är text i formatet ÅÅÅÅMMDDttmmss och konverteras i FML till `dateTime` med tidszon enligt [GENERAL-001](mappings.html#tidszon). OID:er och `PersonIdType {id, type}` konverteras enligt [GENERAL-002](mapping-issues.html) och [GENERAL-006](mappings.html#patientreferens).

### Verifiering mot TKB {#verifiering}

Varje kardinalitet har jämförts mellan XSD, TKB och den tidigare modellen. TKB:ns tabell "Fältregler" (svar) är källan för begränsningar som är strängare än XSD:n, inklusive N/A (0..0).

- **Bekräftade av TKB** (29 element): strängare än XSD:n och oförändrade, t.ex. `documentTitle`/`documentTime` 0..0 i GetDiagnosis, `result` 1..1 i GetDiagnosis och GetAlertInformation, `documentTime` 1..1 i GetFunctionalStatus, GetMaternityMedicalHistory och GetReferralOutcome.
- **Nya begränsningar från TKB** (24 element), främst 0..0: `nullified`/`nullifiedReason` i GetDiagnosis, GetCarePlans, GetMaternityMedicalHistory och GetReferralOutcome; `legalAuthenticatorRoleCode` och vårdenhet/vårdgivare under bildtagning och remiss i GetImagingOutcome och GetReferralOutcome; `header.signature.orgUnit` i GetLaboratoryOrderOutcome; `documentTime` samt vårdenhet/vårdgivare för förskrivare och utvärderare i GetMedicationHistory.
- **Behållna trots att TKB:n anger annat:**

| Tjänstekontrakt | Element | Modell | TKB | XSD |
|---|---|---|---|---|
| GetMedicationHistory | `medicationMedicalRecord.medicationMedicalRecordHeader.documentTitle` | 0..0 (avsiktligt undertryckt) | 0..1 | 0..1 |
| GetCareContacts | `careContact.careContactHeader.nullified`, `nullifiedReason` | 0..0 | saknas i TKB | 0..1 |

- **TKB lösare än XSD** – modellen följer XSD:n:

| Tjänstekontrakt | Element | TKB | XSD |
|---|---|---|---|
| GetCareDocumentation | `careDocumentation.header.signature.timestamp` | 0..1 | 1..1 |
| GetMedicationHistory | `…drug.dosage.conditionalDosage.conditionDescription` (två ställen) | 0..1 | 1..1 (TKB:n hänvisar själv till ett arkitekturbeslut om diskrepansen) |

- **Stavning:** TKB:n för GetMedicationHistory och GetCarePlans skriver `healthcareProfessionalcareUnitHSAId`/`…careGiverHSAId` med litet c; XSD:n och modellerna har `healthcareProfessionalCareUnitHSAId`. XSD:n stavar `accesssLogs` (GetAccessLogsForPatient) och `burnedInaAnnotations` (GetImagingOutcome) på det sättet, och modellerna följer XSD:n.

> **Vägledning för författare:** Modellerna i `input/fsh/logicalmodels/` är genererade. Ändringar i struktur görs genom att generera om från XSD:n; beskrivningar kan redigeras direkt.
