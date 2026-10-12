<!-- Genererad av tools/rivta-lm/vdiff.py: SEEHDSLMLaboratoryOrderOutcomeV31 mot SEEHDSLMLaboratoryOrderOutcome. Redigera inte för hand. -->

| Element | 3.1 | 4.2 | Skillnad |
|---|---|---|---|
| `laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentId` | 1..1 String | – | Finns bara i 3.1 |
| `laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.sourceSystemHSAId` | 1..1 String | – | Finns bara i 3.1 |
| `laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentTime` | 1..1 TimeStamp | – | Finns bara i 3.1 |
| `laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.patientId` | 1..1 PersonIdType | – | Finns bara i 3.1 |
| `laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional` | 1..1 Backbone | – | Finns bara i 3.1 |
| `laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator` | 0..1 Backbone | – | Finns bara i 3.1 |
| `laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.approvedForPatient` | 1..1 Boolean | – | Finns bara i 3.1 |
| `laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.careContactId` | 0..1 String | – | Finns bara i 3.1 |
| `laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultType` | 1..1 String | – | Finns bara i 3.1 |
| `laboratoryOrderOutcome.laboratoryOrderOutcomeBody.registrationTime` | 1..1 TimeStamp | – | Finns bara i 3.1 |
| `laboratoryOrderOutcome.laboratoryOrderOutcomeBody.discipline` | 1..1 String | – | Finns bara i 3.1 |
| `laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultReport` | 0..1 String | – | Finns bara i 3.1 |
| `laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultComment` | 0..1 String | – | Finns bara i 3.1 |
| `laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional` | 0..1 Backbone | – | Finns bara i 3.1 |
| `laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis` | 0..* Backbone | – | Finns bara i 3.1 |
| `laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order` | 1..1 Backbone | – | Finns bara i 3.1 |
| `result` | 1..1 Backbone | – | Finns bara i 3.1 |
| `laboratoryOrderOutcome.header.accessControlHeader` | – | 1..1 Backbone | Finns bara i 4.2 |
| `laboratoryOrderOutcome.header.sourceSystemId` | – | 1..1 IIType | Finns bara i 4.2 |
| `laboratoryOrderOutcome.header.record` | – | 1..1 Backbone | Finns bara i 4.2 |
| `laboratoryOrderOutcome.header.author` | – | 0..1 Backbone | Finns bara i 4.2 |
| `laboratoryOrderOutcome.header.signature` | – | 0..1 Backbone | Finns bara i 4.2 |
| `laboratoryOrderOutcome.body.identifier` | – | 1..1 IIType | Finns bara i 4.2 |
| `laboratoryOrderOutcome.body.laboratoryIdentifier` | – | 0..1 IIType | Finns bara i 4.2 |
| `laboratoryOrderOutcome.body.type` | – | 1..1 CVType | Finns bara i 4.2 |
| `laboratoryOrderOutcome.body.text` | – | 0..1 String | Finns bara i 4.2 |
| `laboratoryOrderOutcome.body.referral` | – | 0..1 Backbone | Finns bara i 4.2 |
| `laboratoryOrderOutcome.body.groupOfAnalyses` | – | 0..* Backbone | Finns bara i 4.2 |
| `laboratoryOrderOutcome.body.recipientUnit` | – | 1..1 Backbone | Finns bara i 4.2 |
| `laboratoryOrderOutcome.body.recipientSignature` | – | 0..1 Backbone | Finns bara i 4.2 |
| `laboratoryOrderOutcome.body.contactInformation` | – | 0..1 Backbone | Finns bara i 4.2 |
| `laboratoryOrderOutcome.laboratoryOrderOutcomeHeader` | 1..1 Backbone | `laboratoryOrderOutcome.header` | Bytt namn |
| `laboratoryOrderOutcome.laboratoryOrderOutcomeBody` | 1..1 Backbone | `laboratoryOrderOutcome.body` | Bytt namn |
