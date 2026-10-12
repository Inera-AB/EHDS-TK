<!-- Genererad av tools/rivta-lm/vdiff.py: SEEHDSLMAlertInformationV30 mot SEEHDSLMAlertInformation. Redigera inte för hand. -->

| Element | 3.0 | 2.0 | Skillnad |
|---|---|---|---|
| `alertInformation.header.accessControlHeader` | 1..1 Backbone | – | Finns bara i 3.0 |
| `alertInformation.header.sourceSystemId` | 1..1 IIType | – | Finns bara i 3.0 |
| `alertInformation.header.record` | 1..1 Backbone | – | Finns bara i 3.0 |
| `alertInformation.header.author` | 0..1 Backbone | – | Finns bara i 3.0 |
| `alertInformation.header.signature` | 0..1 Backbone | – | Finns bara i 3.0 |
| `alertInformation.body.specificationVersion` | 1..1 String | – | Finns bara i 3.0 |
| `alertInformation.body.hypersensitivity.value` | 1..1 CVType | – | Finns bara i 3.0 |
| `alertInformation.body.hypersensitivity.status` | 1..1 CVType | – | Finns bara i 3.0 |
| `alertInformation.body.hypersensitivity.time` | 1..1 Backbone | – | Finns bara i 3.0 |
| `alertInformation.body.hypersensitivity.negation` | 1..1 Boolean | – | Finns bara i 3.0 |
| `alertInformation.body.hypersensitivity.verificationMethod` | 0..1 Backbone | – | Finns bara i 3.0 |
| `alertInformation.body.hypersensitivity.resource` | 1..1 Backbone | – | Finns bara i 3.0 |
| `alertInformation.body.activity` | 0..1 Backbone | – | Finns bara i 3.0 |
| `alertInformation.body.condition` | 0..1 Backbone | – | Finns bara i 3.0 |
| `alertInformation.body.decisionNonstandardCareProcedure` | 0..1 Backbone | – | Finns bara i 3.0 |
| `alertInformation.body.informationNonstandardCareProcedure` | 0..1 Backbone | – | Finns bara i 3.0 |
| `alertInformation.body.contagion` | 0..1 Backbone | – | Finns bara i 3.0 |
| `alertInformation.body.unstructuredAlertInformation.title` | 0..1 String | – | Finns bara i 3.0 |
| `alertInformation.body.unstructuredAlertInformation.description` | 0..1 String | – | Finns bara i 3.0 |
| `result.resultText` | 1..1 String | – | Finns bara i 3.0 |
| `alertInformation.alertInformationHeader.documentId` | – | 1..1 String | Finns bara i 2.0 |
| `alertInformation.alertInformationHeader.sourceSystemHSAId` | – | 1..1 String | Finns bara i 2.0 |
| `alertInformation.alertInformationHeader.patientId` | – | 1..1 PersonIdType | Finns bara i 2.0 |
| `alertInformation.alertInformationHeader.accountableHealthcareProfessional` | – | 1..1 Backbone | Finns bara i 2.0 |
| `alertInformation.alertInformationHeader.legalAuthenticator` | – | 0..1 Backbone | Finns bara i 2.0 |
| `alertInformation.alertInformationHeader.approvedForPatient` | – | 1..1 Boolean | Finns bara i 2.0 |
| `alertInformation.alertInformationHeader.careContactId` | – | 0..1 String | Finns bara i 2.0 |
| `alertInformation.alertInformationBody.typeOfAlertInformation` | – | 1..1 CVType | Finns bara i 2.0 |
| `alertInformation.alertInformationBody.ascertainedDate` | – | 0..1 Date | Finns bara i 2.0 |
| `alertInformation.alertInformationBody.verifiedTime` | – | 0..1 TimeStamp | Finns bara i 2.0 |
| `alertInformation.alertInformationBody.validityTimePeriod` | – | 1..1 TimePeriodType | Finns bara i 2.0 |
| `alertInformation.alertInformationBody.alertInformationComment` | – | 0..1 String | Finns bara i 2.0 |
| `alertInformation.alertInformationBody.obsoleteTime` | – | 0..1 TimeStamp | Finns bara i 2.0 |
| `alertInformation.alertInformationBody.obsoleteComment` | – | 0..1 String | Finns bara i 2.0 |
| `alertInformation.alertInformationBody.hypersensitivity.typeOfHypersensitivity` | – | 0..1 CVType | Finns bara i 2.0 |
| `alertInformation.alertInformationBody.hypersensitivity.pharmaceuticalHypersensitivity` | – | 0..1 Backbone | Finns bara i 2.0 |
| `alertInformation.alertInformationBody.hypersensitivity.otherHypersensitivity` | – | 0..1 Backbone | Finns bara i 2.0 |
| `alertInformation.alertInformationBody.seriousDisease` | – | 0..1 Backbone | Finns bara i 2.0 |
| `alertInformation.alertInformationBody.treatment` | – | 0..1 Backbone | Finns bara i 2.0 |
| `alertInformation.alertInformationBody.communicableDisease` | – | 0..1 Backbone | Finns bara i 2.0 |
| `alertInformation.alertInformationBody.restrictionOfCare` | – | 0..1 Backbone | Finns bara i 2.0 |
| `alertInformation.alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationHeading` | – | 1..1 String | Finns bara i 2.0 |
| `alertInformation.alertInformationBody.unstructuredAlertInformation.unstructuredAlertInformationContent` | – | 1..1 String | Finns bara i 2.0 |
| `alertInformation.alertInformationBody.relatedAlertInformation` | – | 0..* Backbone | Finns bara i 2.0 |
| `result.errorCode` | – | 0..1 String | Finns bara i 2.0 |
| `result.logId` | – | 1..1 String | Finns bara i 2.0 |
| `result.subCode` | – | 0..1 String | Finns bara i 2.0 |
| `result.message` | – | 0..1 String | Finns bara i 2.0 |
| `alertInformation.header` | 1..1 Backbone | `alertInformation.alertInformationHeader` | Bytt namn |
| `alertInformation.body` | 1..1 Backbone | `alertInformation.alertInformationBody` | Bytt namn |
| `alertInformation.body.hypersensitivity.degreeOfSeverity` | 1..1 CVType | 0..1 CVType | Ändrad kardinalitet |
