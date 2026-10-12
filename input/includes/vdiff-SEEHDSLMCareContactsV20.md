<!-- Genererad av tools/rivta-lm/vdiff.py: SEEHDSLMCareContactsV20 mot SEEHDSLMCareContacts. Redigera inte för hand. -->

| Element | 2.0 | 3.0 | Skillnad |
|---|---|---|---|
| `careContact.careContactHeader.legalAuthenticator.signatureTime` | – | 1..1 TimeStamp | Finns bara i 3.0 |
| `careContact.careContactHeader.legalAuthenticator.legalAuthenticatorHSAId` | – | 0..1 String | Finns bara i 3.0 |
| `careContact.careContactHeader.legalAuthenticator.legalAuthenticatorName` | – | 0..1 String | Finns bara i 3.0 |
| `careContact.careContactBody.additionalPatientInformation` | – | 0..1 Backbone | Finns bara i 3.0 |
| `result` | – | 1..1 Backbone | Finns bara i 3.0 |
| `careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId` | 1..1 String | 0..1 String | Ändrad kardinalitet |
| `careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalName` | 1..1 String | 0..1 String | Ändrad kardinalitet |
| `careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit` | 1..1 Backbone | 0..1 Backbone | Ändrad kardinalitet |
| `careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId` | 1..1 String | 0..1 String | Ändrad kardinalitet |
| `careContact.careContactHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName` | 1..1 String | 0..1 String | Ändrad kardinalitet |
| `careContact.careContactHeader.nullified` | 0..1 Boolean | 0..0 Boolean | Ändrad kardinalitet |
| `careContact.careContactHeader.nullifiedReason` | 0..1 String | 0..0 String | Ändrad kardinalitet |
| `careContact.careContactBody.careContactCode` | 0..1 Integer | 0..1 CVType | Ändrad datatyp |
| `careContact.careContactBody.careContactOrgUnit` | 1..1 Backbone | 0..1 Backbone | Ändrad kardinalitet |
| `careContact.careContactBody.careContactOrgUnit.orgUnitHSAId` | 1..1 String | 0..1 String | Ändrad kardinalitet |
| `careContact.careContactBody.careContactOrgUnit.orgUnitName` | 1..1 String | 0..1 String | Ändrad kardinalitet |
| `careContact.careContactBody.careContactTimePeriod` | 1..1 TimePeriodType | 0..1 TimePeriodType | Ändrad kardinalitet |
| `careContact.careContactBody.careContactStatus` | 0..1 Integer | 0..1 CVType | Ändrad datatyp |
