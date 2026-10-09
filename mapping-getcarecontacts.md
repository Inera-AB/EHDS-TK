# GetCareContacts – Vårdkontakter - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.3.3

* [**Table of Contents**](toc.md)
* **GetCareContacts – Vårdkontakter**

## GetCareContacts – Vårdkontakter

# GetCareContacts – Vårdkontakter

**Tjänstekontrakt:** `clinicalprocess:logistics:logistics` GetCareContacts v3.0
 **FHIR-profil:** [SEEHDSEncounter](StructureDefinition-SEEHDSEncounter.md)
 **Logisk modell:** [SEEHDSLMCareContacts](StructureDefinition-SEEHDSLMCareContacts.md)
 **Krävs för NPÖ:** Ja (v2.0, 3.0) | **Krävs för 1177 Journal:** Ja (v2.0, 3.0)

-------

## Struktur

GetCareContacts returnerar en lista `careContact` (0..*). Varje post innehåller header-fält (documentId, sourceSystemHSAId, patientId, accountableHealthcareProfessional, approvedForPatient) och body-fält (careContactCode, careContactReason, careContactOrgUnit, careContactTimePeriod, careContactStatus, additionalPatientInformation).

-------

## Mappningstabell

### Header – identitet och patient

| | | | |
| :--- | :--- | :--- | :--- |
| `careContact.careContactHeader.documentId` | 1..1 | `Encounter.identifier[0].value` | Källsystemets dokumentidentitet; unik inom källsystemet |
| `careContact.careContactHeader.sourceSystemHSAId` | 1..1 | `Encounter.meta.source` | Format:`https://tjanstekatalogen.inera.se/Endpoint/{hsaId}` |
| `careContact.careContactHeader.patientId.id` | 1..1 | `Encounter.subject.identifier.value` | Personnummer eller samordningsnummer |
| `careContact.careContactHeader.patientId.type` | 1..1 | `Encounter.subject.identifier.system` | OID→URI-konvertering (se OID-tabell nedan) |

### Header – ansvarig personal (accountableHealthcareProfessional)

| | | | |
| :--- | :--- | :--- | :--- |
| `careContact.careContactHeader.accountableHealthcareProfessional.authorTime` | 1..1 | `Encounter.meta.lastUpdated` | Registreringstidpunkt; YYYYMMDDHHMMSS → ISO 8601 |
| `careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId` | 0..1 | `PractitionerRole.identifier.value` | Via`Encounter.participant.individual`-referens |
| `careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalName` | 0..1 | `PractitionerRole.practitioner.display` | Valfritt komplement till HSA-id |
| `careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode` | 0..1 | `PractitionerRole.code` | Befattningskod (KV Befattning OID 1.2.752.129.2.2.1.4) |

### Header – ansvarig personal – organisationsenhet

| | | | |
| :--- | :--- | :--- | :--- |
| `careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId` | 0..1 | `PractitionerRole.organization.identifier` | HSA-id för organisationsenhet |
| `careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName` | 0..1 | `PractitionerRole.organization.display` | Namn på organisationsenhet |
| `careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom` | 0..1 | Ej mappad | Telefonnummer till org.enhet – ingår ej i PractitionerRole.organization; kan lagras i Organization.telecom om Organization-resurs skapas. Utelämnas normalt vid patientens egen åtkomst (kan ändras av EHDS-krav), se[GENERAL-008](mappings.md#organisation). |
| `careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail` | 0..1 | Ej mappad | E-post till org.enhet – se`orgUnitTelecom`ovan. Utelämnas normalt vid patientens egen åtkomst (kan ändras av EHDS-krav), se[GENERAL-008](mappings.md#organisation). |
| `careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress` | 0..1 | Ej mappad | Postadress till org.enhet – ingår ej i PractitionerRole; kan lagras i Organization.address om Organization-resurs skapas |
| `careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation` | 0..1 | Ej mappad | Fritextplats för org.enhet – ingen standardiserad FHIR-plats i Encounter/PractitionerRole |

### Header – PDL/Sparr

| | | | |
| :--- | :--- | :--- | :--- |
| `careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId` | 0..1 | `Provenance.agent[author].who.identifier` | Inre Sparr – vårdenhet (Regel 1) |
| `careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId` | 0..1 | `Provenance.agent[custodian].who.identifier` | Yttre Sparr – vårdgivare (Regel 1) |
| `careContact.careContactHeader.approvedForPatient` | 1..1 | `Encounter.meta.security` | PDL-kontroll (Regel 3) – se PDL-001 i mapping-issues |
| `careContact.careContactHeader.documentTitle` | 0..0 | N/A | Ej tillämpligt för detta TK |
| `careContact.careContactHeader.documentTime` | 0..0 | N/A | Ej tillämpligt för detta TK |
| `careContact.careContactHeader.legalAuthenticator` | 0..0 | N/A | Ej tillämpligt för detta TK |
| `careContact.careContactHeader.nullified` | 0..0 | N/A | Ej tillämpligt för detta TK |
| `careContact.careContactHeader.nullifiedReason` | 0..0 | N/A | Ej tillämpligt för detta TK |
| `careContact.careContactHeader.careContactId` | 0..0 | N/A | Ej tillämpligt för detta TK (careContactId är en korsreferens som inte gäller för kontakter i sin egen lista) |

### Body – kontakttyp, orsak och status

| | | | |
| :--- | :--- | :--- | :--- |
| `careContact.careContactBody.careContactCode` | 0..1 | `Encounter.class` | KV Vårdkontakttyp (OID 1.2.752.129.2.2.2.x) |
| `careContact.careContactBody.careContactReason` | 0..1 | `Encounter.reasonCode.text` | Fri text från patient eller företrädare |
| `careContact.careContactBody.careContactStatus` | 0..1 | `Encounter.status` | SNOMED CT SE (OID 1.2.752.116.2.1.1, SCTID 53761000052103); kräver ConceptMap – se CC-001 |

### Body – tid

| | | | |
| :--- | :--- | :--- | :--- |
| `careContact.careContactBody.careContactTimePeriod` | 0..1 | `Encounter.period` | Om angiven måste minst ett av start/end vara satt |
| `careContact.careContactBody.careContactTimePeriod.start` | 0..1 | `Encounter.period.start` | YYYYMMDDHHMMSS → ISO 8601 |
| `careContact.careContactBody.careContactTimePeriod.end` | 0..1 | `Encounter.period.end` | YYYYMMDDHHMMSS → ISO 8601 |

> **Invariant:** Om `careContactTimePeriod` anges måste minst ett av `start` och `end` vara satt (`encounter-period-min-one`).

### Body – kontaktenhet (careContactOrgUnit)

| | | | |
| :--- | :--- | :--- | :--- |
| `careContact.careContactBody.careContactOrgUnit` | 0..1 | — | Enhet för kontakten (Regel 5) |
| `careContact.careContactBody.careContactOrgUnit.orgUnitHSAId` | 0..1 | `Encounter.serviceProvider.identifier` | Logisk referens till Organization via HSA-id. Kan utelämnas (0..1, Regel 5) |
| `careContact.careContactBody.careContactOrgUnit.orgUnitName` | 0..1 | `Encounter.serviceProvider.display` | Visningsnamn för kontaktenhet. Kan utelämnas (0..1, Regel 5) |
| `careContact.careContactBody.careContactOrgUnit.orgUnitTelecom` | 0..1 | Ej mappad | Telefon till kontaktenhet – ingår ej i Encounter.serviceProvider; kan lagras i Organization.telecom om Organization-resurs skapas. Utelämnas normalt vid patientens egen åtkomst (kan ändras av EHDS-krav), se[GENERAL-008](mappings.md#organisation). |
| `careContact.careContactBody.careContactOrgUnit.orgUnitEmail` | 0..1 | Ej mappad | E-post till kontaktenhet – se`orgUnitTelecom`ovan. Utelämnas normalt vid patientens egen åtkomst (kan ändras av EHDS-krav), se[GENERAL-008](mappings.md#organisation). |
| `careContact.careContactBody.careContactOrgUnit.orgUnitAddress` | 0..1 | Ej mappad | Adress till kontaktenhet – ingår ej i Encounter; kan lagras i Organization.address om Organization-resurs skapas |
| `careContact.careContactBody.careContactOrgUnit.orgUnitLocation` | 0..1 | Ej mappad | Fritextplats för kontaktenhet – ingen standardiserad FHIR-plats i Encounter |

### Body – ytterligare patientinformation (additionalPatientInformation)

| | | | |
| :--- | :--- | :--- | :--- |
| `careContact.careContactBody.additionalPatientInformation` | 0..1 | — | Ytterligare patientuppgifter – komplement när PU-tjänsten ej används |
| `careContact.careContactBody.additionalPatientInformation.dateOfBirth` | 0..1 | `Patient.birthDate`(via`Encounter.subject`) | Lagras på Patient-resursen om en skapas; YYYY / YYYYMM / YYYYMMDD → ISO 8601-datum |
| `careContact.careContactBody.additionalPatientInformation.gender` | 0..1 | `Patient.gender`(via`Encounter.subject`) | KV Kön (OID 1.2.752.129.2.2.1.1) → FHIR AdministrativeGender; kräver ConceptMap |

### Tekniska responsfält (result)

| | | | |
| :--- | :--- | :--- | :--- |
| `result.resultCode` | 1..1 | Ej mappad | Teknisk responskod – hanteras av transportlagret |
| `result.errorCode` | 0..1 | Ej mappad | Teknisk felkod – hanteras av transportlagret |
| `result.logId` | 1..1 | Ej mappad | Teknisk spårnings-UUID – hanteras av transportlagret |
| `result.subCode` | 0..1 | Ej mappad | Teknisk subkod – hanteras av transportlagret |
| `result.message` | 0..1 | Ej mappad | Teknisk felbeskrivning – hanteras av transportlagret |

-------

## PDL och Sparr

PDL-fälten finns under `careContact.careContactHeader.accountableHealthcareProfessional` (inte på toppnivå).

| | | |
| :--- | :--- | :--- |
| `careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId` | `Provenance.agent[custodian].who.identifier` | Yttre Sparr |
| `careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId` | `Provenance.agent[author].who.identifier` | Inre Sparr |

-------

## Provenance

| | | |
| :--- | :--- | :--- |
| `agent[custodian]` | Juridiskt ansvarig vårdgivare | `healthcareProfessionalCareGiverHSAId` |
| `agent[author]` | Informationsägande vårdenhet | `healthcareProfessionalCareUnitHSAId` |

-------

## careContactCode – KV Vårdkontakttyp

Kodverket KV Vårdkontakttyp (OID 1.2.752.129.2.2.2.x) innehåller koder som anger kontaktform. Vanliga värden inkluderar öppenvård, slutenvård och hemsjukvård. Exakt version specificeras av producenten.

-------

## careContactStatus – SNOMED CT SE

Status för vårdkontakt mappas från SNOMED CT SE (OID 1.2.752.116.2.1.1, SCTID 53761000052103) till `Encounter.status`. Mappning av specifika SNOMED-koder till FHIR-statusvärden görs via ConceptMap (ej inkluderad i denna version av IG) – se CC-001.

-------

## OID-till-URI-tabell

| | | |
| :--- | :--- | :--- |
| `1.2.752.129.2.1.3.1` | `http://electronichealth.se/identifier/personnummer` | Personnummer |
| `1.2.752.129.2.1.3.3` | `http://electronichealth.se/identifier/samordningsnummer` | Samordningsnummer |
| `1.2.752.129.2.1.4.1` | `urn:oid:1.2.752.29.4.19` | HSA-id (Inera NTjP) |

OID:er utan känd URI-mappning bevaras som `urn:oid:{oid}`.

-------

## Föreslagna nya issues

| | | |
| :--- | :--- | :--- |
| CC-001 | ConceptMap för SNOMED CT SE (OID 1.2.752.116.2.1.1, SCTID 53761000052103) → FHIR`Encounter.status`saknas. Vilka SNOMED-koder ingår i urvalet, och hur mappas de till FHIR-värdemängden (planned, arrived, triaged, in-progress, onleave, finished, cancelled)? | Föreslagen |
| CC-002 | **Sammanslagen med GENERAL-008:**se[Organisationsenheter, kontaktuppgifter och historik](mappings.md#organisation). | Öppen |
| CC-003 | `careContact.careContactBody.additionalPatientInformation.gender`(KV Kön OID 1.2.752.129.2.2.1.1, koder 0/1/2/9) behöver ConceptMap till FHIR AdministrativeGender (male/female/other/unknown). Bör denna ConceptMap delas med andra TK som använder samma kodverk? | Föreslagen |

