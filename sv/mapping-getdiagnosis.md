# GetDiagnosis – Diagnoser - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.12.0

## GetDiagnosis – Diagnoser

**Tjänstekontrakt:** `clinicalprocess:healthcond:description` GetDiagnosis v2.0
 **FHIR-profil:** [SEEHDSConditionDiagnosis](StructureDefinition-SEEHDSConditionDiagnosis.md)
 **Logisk modell:** [SEEHDSLMDiagnosis](StructureDefinition-SEEHDSLMDiagnosis.md)
 **Krävs för NPÖ:** Ja (v2.0) | **Krävs för 1177 Journal:** Ja (v2.0)
 **EHDS-koppling:** Patient Summary – Problem/diagnoser

-------

### Mappningstabell – diagnosisHeader

| | | | |
| :--- | :--- | :--- | :--- |
| `diagnosisHeader.documentId` | 1..1 | `Condition.identifier[0].value` | Källsystemets dokumentidentitet |
| `diagnosisHeader.sourceSystemHSAId` | 1..1 | `Condition.meta.source` | Format:`https://tjanstekatalogen.inera.se/Endpoint/{hsaId}` |
| `diagnosisHeader.patientId.id` | 1..1 | `Condition.subject.identifier.value` | Patientens identifierare (12 tecken), t.ex. personnummer eller samordningsnummer.`patientId`är av RIVTA-typen`PersonIdType {id, type}`;`reference`till SEEHDSPatient +`identifier`, se[GENERAL-006](mappings.md#patientreferens) |
| `diagnosisHeader.patientId.type` | 1..1 | `Condition.subject.identifier.system` | OID för typ av identifierare (t.ex.`1.2.752.129.2.1.3.1`för personnummer); OID→URI, se tabell nedan |
| `diagnosisHeader.accountableHealthcareProfessional.authorTime` | 1..1 | `Condition.recordedDate` | YYYYMMDDHHMMSS → ISO 8601 (Europe/Stockholm), se[GENERAL-001](#öppna-frågor) |
| `diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId` | 0..1 | `Condition.recorder`(Reference(PractitionerRole)) och`Provenance.agent[author].who` | Logisk referens via HSA-id |
| `diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalName` | 0..1 | `PractitionerRole.practitioner.display` | Valfritt komplement till HSA-id |
| `diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode` | 0..1 | `PractitionerRole.code` | Befattningskod |
| `diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId` | 1..1 | `PractitionerRole.organization.identifier` | HSA-id för organisationsenhet |
| `diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName` | 1..1 | `PractitionerRole.organization.display` | Namn på organisationsenhet |
| `diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom` | 0..1 | Ej mappad | Kontaktuppgift på enhetsnivå – ingår inte i`PractitionerRole.organization`-referensen. Utelämnas normalt vid patientens egen åtkomst (kan ändras av EHDS-krav), se[GENERAL-008](mappings.md#organisation). |
| `diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail` | 0..1 | Ej mappad | Se`orgUnitTelecom`. Utelämnas normalt vid patientens egen åtkomst (kan ändras av EHDS-krav), se[GENERAL-008](mappings.md#organisation). |
| `diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress` | 0..1 | Ej mappad | Kontaktuppgift på enhetsnivå, se[GENERAL-008](mappings.md#organisation) |
| `diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation` | 0..1 | Ej mappad | Kontaktuppgift på enhetsnivå, se[GENERAL-008](mappings.md#organisation) |
| `diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId` | 0..1 | `Provenance.agent[author].onBehalfOf.identifier` | Inre Sparr – vårdenhet |
| `diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId` | 0..1 | `Provenance.agent[custodian].who.identifier` | Yttre Sparr – vårdgivare |
| `diagnosisHeader.legalAuthenticator.signatureTime` | 1..1 (om legalAuth) | `Condition.extension[assertedDate]` | Signeringstidpunkt; YYYYMMDDHHMMSS → ISO 8601 |
| `diagnosisHeader.legalAuthenticator.legalAuthenticatorHSAId` | 0..1 | `Condition.asserter.identifier` | Via asserter-referens (PractitionerRole) |
| `diagnosisHeader.legalAuthenticator.legalAuthenticatorName` | 0..1 | Ej mappad | Namn i klartext – HSA-id räcker för logisk referens |
| `diagnosisHeader.approvedForPatient` | 1..1 | `Condition.meta.security[nopat]` | `false`→ kod`NOPAT`från`http://terminology.hl7.org/CodeSystem/v3-ActCode`;`true`→ ingen säkerhetsmärkning. Se[PDL-001](#öppna-frågor) |
| `diagnosisHeader.careContactId` | 0..1 | `Condition.encounter.identifier` | Logisk referens till Encounter |
| `diagnosisHeader.nullified` | 0..0 | N/A | Ej tillämpligt enligt TKB (0..0) |
| `diagnosisHeader.nullifiedReason` | 0..0 | N/A | Ej tillämpligt enligt TKB (0..0) |

> **OBS:** `diagnosisHeader.documentTime` har kardinalitet **0..0** i GetDiagnosis:2 och skickas aldrig av tjänstekontraktet. Detta avviker från det generella PatientSummaryHeader-mönstret (se README.md/mappings.md) där `documentTime` normalt är källan för `recordedDate`/`Provenance.recorded`. För GetDiagnosis är `accountableHealthcareProfessional.authorTime` den korrekta och enda källan för både `Condition.recordedDate` (ovan) och `Provenance.recorded` (se nedan).

-------

### Mappningstabell – diagnosisBody

| | | | |
| :--- | :--- | :--- | :--- |
| — | — | `Condition.category.coding[condition-category]` | Alltid`encounter-diagnosis`från FHIR:s`condition-category`, med`typeOfDiagnosis`som extra coding i samma element; se[DIAG-003](mapping-issues.md#designbeslut-fattade) |
| `diagnosisBody.typeOfDiagnosis` | 1..1 | `Condition.category.coding[diagnostyp]` | Huvuddiagnos (HD) eller Bidiagnos (BY); se tabell nedan |
| `diagnosisBody.chronicDiagnosis` | 0..1 | `Condition.stage[klinisktForlopp]` | `true`→`stage.type`= SNOMED CT`263502005`|Clinical course (attribute)| och`stage.summary`= SNOMED CT`90734009`|Chronic (qualifier value)|.`false`eller saknat värde → ingen`stage`(se[DIAG-001](mapping-issues.md#designbeslut-fattade)) |
| `diagnosisBody.diagnosisTime` | 0..1 | `Condition.onsetDateTime` | YYYYMMDDHHMMSS → ISO 8601 |
| `diagnosisBody.diagnosisCode` | 0..1 | `Condition.code` | Se underelement nedan |
| `diagnosisBody.diagnosisCode.code` | — | `Condition.code.coding.code` | ICD-10-SE kod, t.ex.`J18.9` |
| `diagnosisBody.diagnosisCode.codeSystem` | — | `Condition.code.coding.system` | OID`1.2.752.116.1.1.1.1.3`→`https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/icd-10-se` |
| `diagnosisBody.diagnosisCode.displayName` | — | `Condition.code.coding.display` | Kodverkets officiella benämning |
| `diagnosisBody.diagnosisCode.originalText` | — | `Condition.code.text` | Fritext; fallback:`displayName`om saknad |
| `diagnosisBody.relatedDiagnosis.documentId` | 1..1 (om relatedDiagnosis) | `Condition.extension[relatedCondition].valueReference.identifier.value` | Standardextension`condition-related`(HL7). En extension per`relatedDiagnosis`. Logisk referens:`identifier`ska ha samma`system`som`Condition.identifier`på den relaterade diagnosen (se[DIAG-002](mapping-issues.md#designbeslut-fattade)) |

-------

### Mappningstabell – result

| | | | |
| :--- | :--- | :--- | :--- |
| `result.resultCode` | 1..1 | Ej mappad | Teknisk responskod – hanteras av transportlagret |
| `result.errorCode` | 0..1 | Ej mappad | Teknisk felkod – hanteras av transportlagret |
| `result.logId` | 1..1 | Ej mappad | Teknisk spårnings-UUID – hanteras av transportlagret |
| `result.subCode` | 0..1 | Ej mappad | Teknisk subkod – hanteras av transportlagret |
| `result.message` | 0..1 | Ej mappad | Teknisk felbeskrivning – hanteras av transportlagret |

-------

### Härledda fält

#### clinicalStatus

Inget explicit statusfält och inget slutdatumfält finns i GetDiagnosis v2.0. `Condition.clinicalStatus` sätts därför **inte**. Tidigare sattes det alltid till `active` för att harmonisera med IPS, men det värdet saknade stöd i TKB:n och har tagits bort (GENERAL-007). Varken EU Core eller FHIR kräver `clinicalStatus` för diagnoser som inte är problemlisteposter. Ett utelämnat `clinicalStatus` betyder att statusen är okänd, vilket är det ärliga svaret när slutdatum saknas (se [CLINSTAT-001](mapping-issues.md#designbeslut-fattade)). `active` antas alltså inte bara för att diagnosen saknar slutdatum.

#### abatementDateTime

`Condition.abatementDateTime` sätts **aldrig**. GetDiagnosis:2 har ingen slutpunkt eller period för diagnosen, bara tidpunkten `diagnosisBody.diagnosisTime` (→ `Condition.onsetDateTime`). Avsaknaden av slutdatum är ett känt gap i TKB:n.

`Condition.verificationStatus` sätts alltid till `confirmed` (RIVTA-svar representerar bekräftade journaluppgifter). `diagnosisHeader.nullified` är N/A (0..0) enligt TKB:n, så makulerade diagnoser förekommer inte i svaret.

-------

### healthcareProfessionalType → PractitionerRole

Både `accountableHealthcareProfessional` och `legalAuthenticator` är av RIVTA-typen `healthcareProfessionalType` och mappas till FHIR `PractitionerRole` som logisk referens via HSA-id:

| | |
| :--- | :--- |
| `healthcareProfessionalHSAId` | `PractitionerRole.identifier.value`;`system`=`urn:oid:1.2.752.29.4.19`(HSAIdType är en sträng utan eget OID-fält) |
| `healthcareProfessionalName` | `PractitionerRole.practitioner.display` |
| `healthcareProfessionalRoleCode` | `PractitionerRole.code` |
| `healthcareProfessionalOrgUnit.orgUnitHSAId` | `PractitionerRole.organization.identifier` |
| `healthcareProfessionalOrgUnit.orgUnitName` | `PractitionerRole.organization.display` |

`accountableHealthcareProfessional` → `Condition.recorder`
 `legalAuthenticator` → `Condition.asserter`
 `legalAuthenticator.signatureTime` → `Condition.extension[assertedDate]`

-------

### Profil i meta.profile

Varje producerad Condition anger profilen `https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSConditionDiagnosis` i `meta.profile`. Profilen ärver HL7 Europe Core Condition, så resursen uppfyller även EU Core genom arvet.

-------

### OID till URI-mappningar

| | | |
| :--- | :--- | :--- |
| `1.2.752.129.2.1.3.1` | `http://electronichealth.se/identifier/personnummer` | Personnummer |
| `1.2.752.129.2.1.3.3` | `http://electronichealth.se/identifier/samordningsnummer` | Samordningsnummer |
| `1.2.752.129.2.1.4.1` | `urn:oid:1.2.752.29.4.19` | HSA-id (Inera NTjP) |
| `1.2.752.29.4.19` | `urn:oid:1.2.752.29.4.19` | HSA-id (HL7 Sweden) |
| `1.2.752.116.1.1.1.1.3` | `https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/icd-10-se` | ICD-10-SE (Socialstyrelsen), url i Ineras terminologitjänst |
| `2.16.840.1.113883.6.3` | `http://hl7.org/fhir/sid/icd-10` | ICD-10 (WHO) |
| `2.16.840.1.113883.6.96` | `http://snomed.info/sct` | SNOMED CT |

OID:er utan känd URI-mappning bevaras som `urn:oid:{oid}`.

-------

### Kategori – condition-category och kv_diagnostyp

`Condition.category` har i FHIR en utökningsbar (extensible) bindning till kodverket [condition-category](http://terminology.hl7.org/CodeSystem/condition-category). Valideraren prövar varje category-element för sig, så ett element som bara har en lokal kod ger en varning. Därför har diagnosen **ett** category-element med två codings:

| | | | |
| :--- | :--- | :--- | :--- |
| `coding[condition-category]` | `encounter-diagnosis` | `http://terminology.hl7.org/CodeSystem/condition-category` | Fast värde. GetDiagnosis returnerar diagnoser som satts vid en vårdkontakt, se[DIAG-003](mapping-issues.md#designbeslut-fattade) |
| `coding[diagnostyp]` | `HD`eller`BY` | `https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_diagnostyp` | Lokal kod som preciserar kontaktdiagnosen: huvud- eller bidiagnos |

### diagnosisType – kv_diagnostyp

Slicen `category.coding[diagnostyp]` låser `system` till kv_diagnostyp och har en obligatorisk (required) bindning till [DiagnosisTypeVS](ValueSet-diagnosistype-vs.md). Kodsystemet finns i IG-paketet som fragmentet [DiagnosisTypeCS](CodeSystem-diagnosistype-cs.md) med koderna `HD` och `BY`.

`Condition.category.coding[diagnostyp]` innehåller en kod från Ineras kodverk `kv_diagnostyp`:

| | | |
| :--- | :--- | :--- |
| HD – Huvuddiagnos | `HD` | `https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_diagnostyp` |
| BY – Bidiagnos | `BY` | `https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_diagnostyp` |

-------

### PDL och Sparr

PDL-styrning i GetDiagnosis utgår från `accountableHealthcareProfessional`-blockets HSA-id:n i headern:

| | | |
| :--- | :--- | :--- |
| Yttre Sparr (vårdgivare) | `diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId` | `Provenance.agent[custodian].who.identifier` |
| Inre Sparr (vårdenhet) | `diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId` | `Provenance.agent[author].onBehalfOf.identifier` |
| Jämförelsetid (Sparr/CheckBlocks) | `diagnosisHeader.accountableHealthcareProfessional.authorTime` | Skickas som jämförelsetidpunkt vid anrop till spärrtjänsten (motsvarande`blockComparisonTime`i TK:er med`accessControlHeader`) |
| Patientgodkännande | `diagnosisHeader.approvedForPatient`(boolean) | `Condition.meta.security[nopat]`;`false`→`NOPAT`(v3-ActCode), se[PDL-001](#öppna-frågor) |

**OBS – jämförelsetid:** GetDiagnosis:2 har inget `accessControlHeader.blockComparisonTime` (till skillnad från t.ex. GetCareDocumentation och GetLaboratoryOrderOutcome). `authorTime` är det enda tidsfältet i headern som skickas (`documentTime` är 0..0, se ovan) och är därför källan till den jämförelsetidpunkt som anropet till spärrtjänsten ska använda.

-------

### Provenance

| | | |
| :--- | :--- | :--- |
| `agent[custodian]` | Juridiskt ansvarig vårdgivare | `diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId` |
| `agent[author].who` | Ansvarig person (PractitionerRole), samma person som resursens eget författarelement | `diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId`(HSA-id i`identifier`),`healthcareProfessionalName`(`display`) |
| `agent[author].onBehalfOf` | Informationsägande vårdenhet (inre Sparr) | `diagnosisHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId`(HSA-id i`identifier`) |

Saknas personens HSA-id anges namnet i `agent[author].who.display`. Saknas både HSA-id och namn anges `agent[author].who` med extensionen `data-absent-reason` (`unknown`). Vårdenheten anges alltid i `agent[author].onBehalfOf`, se [Provenance-agenter (GENERAL-003)](mappings.md#provenance-agenter).

`Provenance.target` refererar Condition via `urn:uuid:{Condition.id}`.
 `Provenance.recorded` = `diagnosisHeader.accountableHealthcareProfessional.authorTime` (ISO 8601).

-------

### Exempelresurs

#### RIVTA XML (GetDiagnosis:2)

```
<ns1:diagnosisBody>
  <ns1:diagnosisCode>
    <ns1:code>E11.9</ns1:code>
    <ns1:codeSystem>1.2.752.116.1.1.1.1.3</ns1:codeSystem>
    <ns1:displayName>Diabetes mellitus typ 2 utan komplikationer</ns1:displayName>
  </ns1:diagnosisCode>
  <ns1:typeOfDiagnosis>HD</ns1:typeOfDiagnosis>
  <ns1:chronicDiagnosis>true</ns1:chronicDiagnosis>
  <ns1:diagnosisTime>20230601120000</ns1:diagnosisTime>
</ns1:diagnosisBody>

```

#### Resulterande FHIR Condition (JSON)

```
{
  "resourceType": "Condition",
  "meta": {
    "source": "https://tjanstekatalogen.inera.se/Endpoint/SE2321000016-4HK5",
    "profile": [
      "https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSConditionDiagnosis"
    ]
  },
  "identifier": [{ "value": "doc-12345" }],
  "verificationStatus": { "coding": [{ "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status", "code": "confirmed" }] },
  "category": [{
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/condition-category",
      "code": "encounter-diagnosis", "display": "Encounter Diagnosis"
    }, {
      "system": "https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_diagnostyp",
      "code": "HD", "display": "Huvuddiagnos"
    }]
  }],
  "code": {
    "coding": [{ "system": "https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/icd-10-se", "code": "E11.9", "display": "Diabetes mellitus typ 2 utan komplikationer" }]
  },
  "stage": [{
    "type": { "coding": [{ "system": "http://snomed.info/sct", "code": "263502005", "display": "Clinical course (attribute)" }] },
    "summary": { "coding": [{ "system": "http://snomed.info/sct", "code": "90734009", "display": "Chronic (qualifier value)" }] }
  }],
  "subject": {
    "reference": "Patient/pat-191212121212",
    "identifier": { "system": "http://electronichealth.se/identifier/personnummer", "value": "191212121212" }
  },
  "onsetDateTime": "2023-06-01T12:00:00+02:00",
  "recordedDate": "2023-06-01T12:00:00+02:00"
}

```

-------

### Öppna frågor

| | |
| :--- | :--- |
| PDL-001 | **Beslutat:**`approvedForPatient = false`→`meta.security``v3-ActCode#NOPAT`. Se[Mappningsissues](mapping-issues.md#stangda-fragor). |
| GENERAL-001 | **Beslutat – tidszon.**RIVTA-tidsstämplar tolkas som lokal tid i`Europe/Stockholm`(sommartid beaktas).`dateTime`får explicit offset (`+01:00`/`+02:00`);`instant`anger samma tidpunkt, helst med samma offset-form. Se[Tidsstämplar och tidszon](mappings.md#tidszon). |

-------

### Beslutade issues

| | | |
| :--- | :--- | :--- |
| DIAG-001 | `diagnosisBody.chronicDiagnosis` | `Condition.stage[klinisktForlopp]`med`type`= SNOMED CT`263502005`|Clinical course (attribute)| och`summary`= SNOMED CT`90734009`|Chronic (qualifier value)| när värdet är`true`. Se[Mappningsissues](mapping-issues.md#designbeslut-fattade). |
| DIAG-002 | `diagnosisBody.relatedDiagnosis.documentId` | Standardextension`Condition.extension[relatedCondition]`(`condition-related`) med logisk referens via`valueReference.identifier`. Se[Mappningsissues](mapping-issues.md#designbeslut-fattade). |
| DIAG-003 | `Condition.category` | Standardkoden`encounter-diagnosis`från`condition-category`anges alltid.`typeOfDiagnosis`(HD/BY) ligger kvar som en lokal kategori från kv_diagnostyp. Se[Mappningsissues](mapping-issues.md#designbeslut-fattade). |

