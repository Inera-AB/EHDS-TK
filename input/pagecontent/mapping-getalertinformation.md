# GetAlertInformation – Uppmärksamhetsinformation

**Tjänstekontrakt:** `clinicalprocess:healthcond:description` GetAlertInformation v2.0  
**FHIR-profiler:** [IneraEHDSFlag](StructureDefinition-inera-ehds-flag.html) | [IneraEHDSAllergyIntolerance](StructureDefinition-inera-ehds-allergy-intolerance.html)  
**Logisk modell:** [IneraEHDSLMAlertInformation](StructureDefinition-inera-ehds-lm-alert-information.html)  
**Krävs för NPÖ:** Ja (v2.0) | **Krävs för 1177 Journal:** Ja (v2.0)  
**EHDS-koppling:** Patient Summary – Allergier, överkänslighet och varningsinformation

---

## Profilval – alltid Flag, ibland även AllergyIntolerance

`Flag` skapas **alltid** för varje `alertInformation`-post, oavsett typ av uppmärksamhetssignal (beslut GENERAL-004, ALERT-003).

Om body-typen är `hypersensitivity` skapas **dessutom** en `AllergyIntolerance`-resurs. I det fallet pekar `Flag` på `AllergyIntolerance` via `Flag.extension[flag-detail]` (standard R4-extension; kallas `supportingInfo` i R5).

| Scenario | Resurser som skapas |
|---|---|
| body = `hypersensitivity` | `Flag` + `AllergyIntolerance` (länkad via `extension[flag-detail]`) |
| body = `seriousDisease` | `Flag` (enbart) |
| body = `treatment` | `Flag` (enbart) |
| body = `communicableDisease` | `Flag` (enbart) |
| body = `restrictionOfCare` | `Flag` (enbart) |
| body = `unstructuredAlertInformation` | `Flag` (enbart) |

Body-typen avgörs av vilket XOR-element som anges i `alertInformationBody`.

---

## Mappning av Flag.category och Flag.code

`Flag.category` bär alltid body-typen (obligatorisk) och, vid överkänslighet, även preciseringstypen:

| Slice | Källa | Kommentar |
|---|---|---|
| `Flag.category[alertType]` | `alertInformationBody.typeOfAlertInformation` | Alltid obligatorisk (1..1) |
| `Flag.category[hypersensitivityType]` | `alertInformationBody.hypersensitivity.typeOfHypersensitivity` | Enbart när body = hypersensitivity (0..1) |

`Flag.code` bär den kliniska koden specifik för varje body-typ:

| Body-typ | Flag.code | Kommentar |
|---|---|---|
| `hypersensitivity` | `atcSubstance` (code.coding) eller `hypersensitivityAgentCode` (code.coding); fritext i code.text | XOR: pharmaceuticalHypersensitivity eller otherHypersensitivity |
| `seriousDisease` | `seriousDisease.disease` (ICD10/SNOMED rekommenderas av TKBn) | SNOMED CT från Socialstyrelsens kodverkslista för uppmärksamhetsinformation, urvalet "Annat medicinskt tillstånd" (OID `1.2.752.116.3.1.16.1.1`), kan/bör användas som primärt kodverk – se [ALERT-002](#öppna-frågor) |
| `treatment` | `treatment.treatmentCode` (KVÅ rekommenderas av TKBn) | Tomt CodeableConcept om enbart treatmentDescription finns. SNOMED CT från Socialstyrelsens kodverkslista, urvalet "Behandling" (OID `1.2.752.116.3.1.16.1.2`), kan/bör användas som alternativ/komplement – se [ALERT-002](#öppna-frågor) |
| `communicableDisease` | `communicableDiseaseCode` (ICD10 rekommenderas av TKBn) | SNOMED CT från Socialstyrelsens kodverkslista (urvalen "Förekomst av smittämne"/"Förekomst av smittsam sjukdom") kan anges som alternativ/komplement – exakt OID för dessa två urval är ej bekräftat i denna IG, se [ALERT-002](#öppna-frågor) |
| `unstructuredAlertInformation` | `unstructuredAlertInformationHeading` som code.text | Ingen strukturerad kod |
| `restrictionOfCare` | Tomt CodeableConcept | Ingen strukturerad kod |

> **Om ALERT-002:** Socialstyrelsens kodverkslista för uppmärksamhetsinformation (SNOMED CT,
> OID-familjen `1.2.752.116.3.1.16.1.x`) är identifierad som nationellt kodverk för värden
> per UMI-typ och används nu ovan för `seriousDisease`/`treatment`/`communicableDisease`.
> Kvarstående öppen del av ALERT-002: motsvarande nationellt kodverk saknas fortfarande för
> själva `typeOfAlertInformation`-diskriminatorn (`Flag.category[alertType]`) samt för styrning
> av `AllergyIntolerance.category`.

---

## Flag.status

`Flag.status` sätts enligt följande:

| Villkor | Flag.status |
|---|---|
| `alertInformationBody.obsoleteTime` saknas | `active` |
| `alertInformationBody.obsoleteTime` är satt | `inactive` |

`entered-in-error` används inte.

Detta motsvarar Socialstyrelsens UMI-regel (observerad förekomst & negation=falskt → `active`,
negation=sant → `inactive`). Denna TKB saknar ett explicit negation-fält – `obsoleteTime`
(faktisk inaktivering, se nedan) används som närmast tillgängliga signal för inaktivering tills
en källa som är modellerad enligt UMI (med explicit negation-fält) konsumeras direkt.

---

## Mappningstabell – alertInformationHeader

| RIVTA-element | Kard. | FHIR-element | Kommentar |
|---|---|---|---|
| `alertInformationHeader.documentId` | 1..1 | `Flag.identifier.value` | Källsystemets dokumentidentifierare |
| `alertInformationHeader.sourceSystemHSAId` | 1..1 | `Flag.meta.source` | Format: `urn:oid:1.2.752.129.2.1.4.1#{hsaId}` |
| `alertInformationHeader.patientId.extension` | 1..1 | `Flag.subject.identifier.value` | Personnummer eller samordningsnummer |
| `alertInformationHeader.patientId.root` | 1..1 | `Flag.subject.identifier.system` | OID→URI, se tabell nedan |
| `alertInformationHeader.accountableHealthcareProfessional.authorTime` | 1..1 | `Provenance.recorded` | YYYYMMDDHHMMSS → ISO 8601 (Europe/Stockholm); se [GENERAL-001](#öppna-frågor) |
| `alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId` | 0..1 | `Flag.author` (Reference(PractitionerRole)) | Logisk referens via HSA-id |
| `alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalName` | 0..1 | `PractitionerRole.practitioner.display` | Visningsnamn |
| `alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode` | 0..1 | `PractitionerRole.code` | Yrkesrollskod |
| `alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId` | 0..1 | `PractitionerRole.organization.identifier.value` | Organisationsenhetens HSA-id |
| `alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName` | 0..1 | `PractitionerRole.organization.display` | Organisationsenhetens namn |
| `alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom` | 0..1 | Ej mappad | Kontaktinfo på enhetsnivå – hanteras ej i FHIR-resursen |
| `alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail` | 0..1 | Ej mappad | Kontaktinfo på enhetsnivå – hanteras ej i FHIR-resursen |
| `alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress` | 0..1 | Ej mappad | Kontaktinfo på enhetsnivå – hanteras ej i FHIR-resursen |
| `alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation` | 0..1 | Ej mappad | Kontaktinfo på enhetsnivå – hanteras ej i FHIR-resursen |
| `alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId` | 0..1 | `Provenance.agent[author].who.identifier` | Inre Sparr – vårdenhet |
| `alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId` | 0..1 | `Provenance.agent[custodian].who.identifier` | Yttre Sparr – vårdgivare |
| `alertInformationHeader.legalAuthenticator.signatureTime` | 1..1 (om legalAuth) | `Flag.extension[alertAssertedDate]` | Signeringstidpunkt; YYYYMMDDHHMMSS → ISO 8601 |
| `alertInformationHeader.legalAuthenticator.legalAuthenticatorHSAId` | 0..1 | `Flag.extension[alertAsserter].identifier` | Ingår även i `AllergyIntolerance.asserter` om allergi |
| `alertInformationHeader.legalAuthenticator.legalAuthenticatorName` | 0..1 | Ej mappad | Namn i klartext – HSA-id räcker för logisk referens |
| `alertInformationHeader.approvedForPatient` | 1..1 | `Flag.meta.security` | PDL-kontroll – se [PDL-001](#öppna-frågor) |
| `alertInformationHeader.careContactId` | 0..1 | `Flag.encounter.identifier.value` | Logisk referens till vårdkontakt |

---

## Mappningstabell – alertInformationBody (gemensamma fält)

Följande fält är gemensamma för alla body-typer (förekommer oberoende av XOR-val):

| RIVTA-element | Kard. | FHIR-element | Kommentar |
|---|---|---|---|
| `alertInformationBody.typeOfAlertInformation` | 1..1 | `Flag.category[alertType]` | Kodsystem se [ALERT-002](#öppna-frågor) |
| `alertInformationBody.validityTimePeriod.start` | 1..1 | `Flag.period.start` | YYYYMMDDHHMMSS → ISO 8601 |
| `alertInformationBody.validityTimePeriod.end` | 0..1 | `Flag.period.end` | Planerat giltighetsslutt; se nedan om obsoleteTime |
| `alertInformationBody.obsoleteTime` | 0..1 | `Flag.period.end` + `Flag.status` | Faktisk inaktivering: driver `period.end` (används om ≤ validityTimePeriod.end eller om period.end ej är satt) OCH `Flag.status = inactive` (se [Flag.status](#flagstatus) ovan) |
| `alertInformationBody.obsoleteComment` | 0..1 | `Flag.extension[alertInformationComment]` | Konkateneras: "Inaktiveringskommentar: {obsoleteComment}". Extensionen är standard `note` (hl7.fhir.uv.extensions), se [ALERT-005](#stängda-frågor) |
| `alertInformationBody.ascertainedDate` | 0..1 | `Flag.extension[alertAscertainedDate]` | Datum för konstaterande |
| `alertInformationBody.verifiedTime` | 0..1 | `Flag.extension[alertVerifiedTime]` | Tidpunkt för verifiering i källsystem |
| `alertInformationBody.alertInformationComment` | 0..1 | `Flag.extension[alertInformationComment]` | Klinisk kommentar; standard `note`-extension (ej längre lokal extension, se [ALERT-005](#stängda-frågor)); vid allergi även `AllergyIntolerance.note.text` |

> **Notering om period.end och obsoleteTime:** Båda mappar till `Flag.period.end`. Om båda är satta används det minsta värdet (= faktisk giltighetstid). `obsoleteComment` konkateneras i `alertInformationComment`.

> **OBS:** `alertInformationHeader.documentTitle`, `documentTime`, `nullified` och `nullifiedReason` är N/A (0..0) för detta tjänstekontrakt och mappas inte.

---

## Body XOR-sektion 1: hypersensitivity (överkänslighet)

Gäller när `alertInformationBody.hypersensitivity` är angivet. Skapar Flag **och** AllergyIntolerance.

### Flag-fält (hypersensitivity)

| RIVTA-element | Kard. | FHIR-element | Kommentar |
|---|---|---|---|
| `alertInformationBody.hypersensitivity.typeOfHypersensitivity` | 0..1 | `Flag.category[hypersensitivityType]` | Precisering av överkänslighetstyp (ICD10/SNOMED) |
| `alertInformationBody.hypersensitivity.degreeOfSeverity` | 0..1 | `Flag.extension[degreeOfSeverity]` | KV Allvarlighetsgrad (1.2.752.129.2.2.3.3) |
| `alertInformationBody.hypersensitivity.degreeOfCertainty` | 0..1 | `Flag.extension[degreeOfCertainty]` | KV Visshetsgrad (1.2.752.129.2.2.3.11) |
| `alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.atcSubstance` | 0..1 | `Flag.code.coding` | ATC-kod (1.2.752.129.2.2.3.1.1). XOR med otherHypersensitivity |
| `alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.nonATCSubstance` | 0..1 | `Flag.code.text` | Substansnamn utan ATC-kod |
| `alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.nonATCSubstanceComment` | 0..1 | `Flag.extension[pharmaceuticalHypersensitivity].nonATCSubstanceComment` | Förklaring till avsaknad ATC-kod |
| `alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.pharmaceuticalProductId` | 0..* | `Flag.extension[pharmaceuticalHypersensitivity].pharmaceuticalProductId` | NPL-id (1.2.752.129.2.1.5.1); lista |
| `alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgentCode` | 0..1 | `Flag.code.coding` | Agenskod (LMK-kod, CAS-kod m.fl.). XOR med pharmaceuticalHypersensitivity |
| `alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgent` | 0..1 | `Flag.code.text` | Agens i fritext |
| `alertInformationBody.hypersensitivity.degreeOfSeverity` (härledd) | — | `Flag.extension[criticalityLevel]` | FHIR-mappad tregradig allvarlighetsgrad via ConceptMap `AlertCriticalityMap`; se [ALERT-004](#stängda-frågor). Gör Flag självförsörjande utan AllergyIntolerance |
| `alertInformationBody.hypersensitivity.degreeOfCertainty` (härledd) | — | `Flag.extension[verificationStatus]` | FHIR-mappad visshetsgrad via ConceptMap `AlertVerificationStatusMap`; se [ALERT-004](#stängda-frågor). Gör Flag självförsörjande utan AllergyIntolerance |

### AllergyIntolerance-fält (hypersensitivity)

AllergyIntolerance skapas enbart när body = hypersensitivity. Fält från header och hypersensitivity-blocket mappas:

| RIVTA-element | Kard. | FHIR-element | Kommentar |
|---|---|---|---|
| `alertInformationHeader.documentId` | 1..1 | `AllergyIntolerance.identifier.value` | Samma dokumentid som Flag |
| `alertInformationHeader.patientId.extension` | 1..1 | `AllergyIntolerance.patient.identifier.value` | Personnummer eller samordningsnummer |
| `alertInformationHeader.patientId.root` | 1..1 | `AllergyIntolerance.patient.identifier.system` | OID→URI, se tabell nedan |
| `alertInformationHeader.sourceSystemHSAId` | 1..1 | `AllergyIntolerance.meta.source` | Format: `urn:oid:1.2.752.129.2.1.4.1#{hsaId}` |
| `alertInformationHeader.accountableHealthcareProfessional.authorTime` | 1..1 | `AllergyIntolerance.recordedDate` | YYYYMMDDHHMMSS → ISO 8601 |
| `alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId` | 0..1 | `AllergyIntolerance.recorder` (Reference(PractitionerRole)) | Logisk referens via HSA-id |
| `alertInformationHeader.legalAuthenticator.legalAuthenticatorHSAId` | 0..1 | `AllergyIntolerance.asserter` (Reference(PractitionerRole)) | Logisk referens via HSA-id |
| `alertInformationBody.ascertainedDate` | 0..1 | `AllergyIntolerance.onsetDateTime` | Datum för konstaterande av överkänslighet |
| `alertInformationBody.alertInformationComment` | 0..1 | `AllergyIntolerance.note.text` | Klinisk kommentar |
| `alertInformationBody.hypersensitivity.typeOfHypersensitivity` | 0..1 | `AllergyIntolerance.category` | Härleds från typeOfHypersensitivity; se [ALERT-002](#öppna-frågor) |
| `alertInformationBody.hypersensitivity.degreeOfCertainty` | 0..1 | `AllergyIntolerance.verificationStatus` | ConceptMap `AlertVerificationStatusMap`: KV Visshetsgrad → FHIR verificationStatus; se [ALERT-004](#stängda-frågor) |
| `alertInformationBody.hypersensitivity.degreeOfSeverity` | 0..1 | `AllergyIntolerance.reaction.severity` | ConceptMap `AlertCriticalityMap`: KV Allvarlighetsgrad → FHIR reaction.severity (designbeslut: besvärande→mild, skadlig→moderate, livshotande→severe); se [ALERT-004](#stängda-frågor) |
| `alertInformationBody.hypersensitivity.degreeOfSeverity` | 0..1 | `AllergyIntolerance.criticality` | ConceptMap `AlertCriticalityMap`, tvågradig reduktion: life-threatening/harmful → high, discomforting → low; se [ALERT-004](#stängda-frågor) |
| `alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.atcSubstance` | 0..1 | `AllergyIntolerance.code.coding` | ATC-kod som primär substanskod |
| `alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.nonATCSubstance` | 0..1 | `AllergyIntolerance.code.text` | Fritext substansnamn (fallback om atcSubstance saknas) |
| `alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity.pharmaceuticalProductId` | 0..* | `AllergyIntolerance.reaction.substance.coding` | NPL-id (1.2.752.129.2.1.5.1) |
| `alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgentCode` | 0..1 | `AllergyIntolerance.code.coding` | Agenskod (LMK, CAS m.fl.) |
| `alertInformationBody.hypersensitivity.otherHypersensitivity.hypersensitivityAgent` | 0..1 | `AllergyIntolerance.code.text` | Agens i fritext (fallback om agenskod saknas) |
| `alertInformationBody.obsoleteTime` (härledd) | — | `AllergyIntolerance.clinicalStatus` | `active` om obsoleteTime saknas, `inactive` om satt – samma regel som `Flag.status` (se [Flag.status](#flagstatus)) |
| (härledd – alltid allergy) | — | `AllergyIntolerance.type` | `allergy`; härledd av att body = hypersensitivity |

---

## Body XOR-sektion 2: seriousDisease (allvarlig sjukdom)

Gäller när `alertInformationBody.seriousDisease` är angivet. Skapar enbart Flag.

| RIVTA-element | Kard. | FHIR-element | Kommentar |
|---|---|---|---|
| `alertInformationBody.seriousDisease.disease` | 1..1 | `Flag.code` | Sjukdomskod. ICD10/SNOMED rekommenderas av TKBn; SNOMED CT från Socialstyrelsens kodverkslista, urvalet "Annat medicinskt tillstånd" (OID `1.2.752.116.3.1.16.1.1`), rekommenderas primärt – se [ALERT-002](#öppna-frågor) |

---

## Body XOR-sektion 3: treatment (behandling)

Gäller när `alertInformationBody.treatment` är angivet. Skapar enbart Flag.

| RIVTA-element | Kard. | FHIR-element | Kommentar |
|---|---|---|---|
| `alertInformationBody.treatment.treatmentCode` | 0..1 | `Flag.code` | KVÅ-kod (1.2.752.116.1.3.2.1.4) rekommenderas av TKBn; SNOMED CT från Socialstyrelsens kodverkslista, urvalet "Behandling" (OID `1.2.752.116.3.1.16.1.2`), kan/bör användas som alternativ/komplement – se [ALERT-002](#öppna-frågor). Tomt CodeableConcept om enbart treatmentDescription |
| `alertInformationBody.treatment.treatmentDescription` | 1..1 | `Flag.extension[treatmentDescription]` | Fritextbeskrivning av behandlingen |
| `alertInformationBody.treatment.pharmaceuticalTreatment` | 0..* | `Flag.extension[pharmaceuticalTreatment]` | ATC-kod (1.2.752.129.2.2.3.1.1); lista – ryms ej i Flag.code (1..1) |

---

## Body XOR-sektion 4: communicableDisease (smittsam sjukdom)

Gäller när `alertInformationBody.communicableDisease` är angivet. Skapar enbart Flag.

| RIVTA-element | Kard. | FHIR-element | Kommentar |
|---|---|---|---|
| `alertInformationBody.communicableDisease.communicableDiseaseCode` | 1..1 | `Flag.code` | ICD10-kod rekommenderas av TKBn. SNOMED CT från Socialstyrelsens kodverkslista för uppmärksamhetsinformation (urvalen "Förekomst av smittämne"/"Förekomst av smittsam sjukdom") kan anges som alternativ/komplement i `Flag.code.coding` (flera codings, ett per kodsystem); se [ALERT-002](#öppna-frågor) |
| `alertInformationBody.communicableDisease.routeOfTransmission` | 0..1 | `Flag.extension[routeOfTransmission]` | KV Smittväg |

> **SNOMED CT som alternativ/komplement till ICD10:** `communicableDiseaseCode` kan populeras
> med både en ICD10-coding och en SNOMED CT-coding i samma `Flag.code.coding`-lista, om
> källsystemet tillhandahåller båda. Exakt OID för Socialstyrelsens SNOMED CT-urval för
> "Förekomst av smittämne" respektive "Förekomst av smittsam sjukdom" är ännu inte bekräftat
> i denna IG (till skillnad från "Annat medicinskt tillstånd" `1.2.752.116.3.1.16.1.1` och
> "Behandling" `1.2.752.116.3.1.16.1.2`) – se [ALERT-002](#öppna-frågor).

---

## Body XOR-sektion 5: restrictionOfCare (vårdbegränsning)

Gäller när `alertInformationBody.restrictionOfCare` är angivet. Skapar enbart Flag.

| RIVTA-element | Kard. | FHIR-element | Kommentar |
|---|---|---|---|
| `alertInformationBody.restrictionOfCare.restrictionOfCareComment` | 1..1 | `Flag.extension[restrictionOfCareComment]` | Fritext om vårdbegränsning; ingen strukturerad kod finns |

> `Flag.code` sätts till ett tomt `CodeableConcept` (obligatorisk i FHIR) vid restrictionOfCare.

---

## Body XOR-sektion 6: unstructuredAlertInformation (ostrukturerad varning)

Gäller när `alertInformationBody.unstructuredAlertInformation` är angivet. Skapar enbart Flag.

| RIVTA-element | Kard. | FHIR-element | Kommentar |
|---|---|---|---|
| `alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationHeading` | 1..1 | `Flag.code.text` | Rubrik för varningen; `category[alertType]` = unstructuredAlertInformation |
| `alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationContent` | 1..1 | `Flag.extension[alertInformationComment]` | Innehåll/beskrivning konkateneras i kommentarsfältet |

---

## Mappningstabell – relatedAlertInformation

| RIVTA-element | Kard. | FHIR-element | Kommentar |
|---|---|---|---|
| `alertInformationBody.relatedAlertInformation` | 0..* | `Flag.extension[relatedAlertInformation]` | En extension-instans per relaterad signal |
| `alertInformationBody.relatedAlertInformation.typeOfAlertInformationRelationship` | 1..1 | `Flag.extension[relatedAlertInformation].typeOfRelationship` | KV Samband (1.2.752.129.2.2.2.4) |
| `alertInformationBody.relatedAlertInformation.relationComment` | 0..1 | `Flag.extension[relatedAlertInformation].relationComment` | Kommentar till sambandet |
| `alertInformationBody.relatedAlertInformation.documentId` | 1..* | `Flag.extension[relatedAlertInformation].documentId` | Relaterat dokumentid; en per post |

---

## Mappningstabell – result

| RIVTA-element | Kard. | FHIR-element | Kommentar |
|---|---|---|---|
| `result.resultCode` | 1..1 | Ej mappad | Teknisk responskod – hanteras av transportlagret |
| `result.errorCode` | 0..1 | Ej mappad | Teknisk felkod – hanteras av transportlagret |
| `result.subcode` | 0..1 | Ej mappad | Teknisk subkod – hanteras av transportlagret |
| `result.logId` | 1..1 | Ej mappad | Teknisk spårnings-UUID – hanteras av transportlagret |
| `result.message` | 0..1 | Ej mappad | Teknisk felbeskrivning – hanteras av transportlagret |

---

## PDL och Sparr

PDL-styrning i GetAlertInformation utgår från `accountableHealthcareProfessional`-blockets HSA-id:n i headern:

| PDL-begrepp | RIVTA-källa | Hantering |
|---|---|---|
| Yttre Sparr (vårdgivare) | `alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId` | `Provenance.agent[custodian].who.identifier` |
| Inre Sparr (vårdenhet) | `alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId` | `Provenance.agent[author].who.identifier` |
| Patientgodkännande | `alertInformationHeader.approvedForPatient` (boolean) | `Flag.meta.security`; se [PDL-001](#öppna-frågor) |

---

## Provenance

| Agent | Roll | Källa |
|---|---|---|
| `agent[custodian]` | Juridiskt ansvarig vårdgivare | `alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId` |
| `agent[author]` | Informationsägande vårdenhet | `alertInformationHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId` |

`Provenance.target` refererar Flag (och eventuell AllergyIntolerance) via `urn:uuid:{resurs.id}`.  
`Provenance.recorded` = `alertInformationHeader.accountableHealthcareProfessional.authorTime` (ISO 8601).

---

## OID-till-URI-tabell

| OID | URI |
|---|---|
| `1.2.752.129.2.1.3.1` | `http://electronichealth.se/identifier/personnummer` |
| `1.2.752.129.2.1.3.3` | `http://electronichealth.se/identifier/samordningsnummer` |
| `1.2.752.129.2.1.4.1` | `urn:oid:1.2.752.129.2.1.4.1` |
| `1.2.752.129.2.2.3.1.1` | `urn:oid:1.2.752.129.2.2.3.1.1` (ATC) |
| `1.2.752.129.2.1.5.1` | `urn:oid:1.2.752.129.2.1.5.1` (NPL-id) |

OID:er utan känd URI-mappning bevaras som `urn:oid:{oid}`.

---

## Öppna frågor

| ID | Fråga |
|---|---|
| ALERT-002 | **Delvis löst.** Kodverk för värden per UMI-typ (Socialstyrelsens kodverkslista för uppmärksamhetsinformation, OID-familjen `1.2.752.116.3.1.16.1.x`) är nu identifierat och används för `seriousDisease`/`treatment`/`communicableDisease` (se ovan). Kvarstår: kodsystem för själva `typeOfAlertInformation`-diskriminatorn (`Flag.category[alertType]`) är fortfarande okänt/lokalt i TKBn, vilket också styr om `AllergyIntolerance` skapas och hur `AllergyIntolerance.category` sätts. |
| PDL-001 | **`approvedForPatient` (boolean) saknar FHIR-motsvarighet.** `meta.security` i FHIR har inget standardkodsystem för detta begrepp. Behöver gemensamt beslut för alla TK:er. |
| GENERAL-001 | **Tidsstämpelformat.** RIVTA använder `YYYYMMDDhhmmss` utan tidszon; FHIR kräver ISO 8601 med tidszon. Konvertering ska anta `Europe/Stockholm` (CET/CEST). Gäller alla tidsfält i alla tjänstekontrakt. |

---

## Stängda frågor

| ID | Fråga | Beslut |
|---|---|---|
| ALERT-004 | ConceptMap saknades för `degreeOfCertainty`/`degreeOfSeverity` → FHIR. | **Stängd.** ConceptMaps `AlertVerificationStatusMap.fsh` (degreeOfCertainty → verificationStatus) och `AlertCriticalityMap.fsh` (degreeOfSeverity → criticalityLevel/criticality/reaction.severity) skapade. Källkoderna i ConceptMaps är textuella platshållare i väntan på publicerade kodvärden för KV Allvarlighetsgrad/KV Visshetsgrad. |
| ALERT-005 | `Flag` saknade standard `note`-element; lokal extension `alertInformationComment` användes. | **Stängd.** Bytt till standardextensionen `http://hl7.org/fhir/StructureDefinition/note` (paketet `hl7.fhir.uv.extensions`, tillagt som beroende i sushi-config.yaml), i linje med HL7 Sweden UMI-FHIR-arbetsgruppens mönster. Slicenamnet `alertInformationComment` behålls för bakåtspårbarhet. |
