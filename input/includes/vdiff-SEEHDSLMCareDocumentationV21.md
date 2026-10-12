<!-- Genererad av tools/rivta-lm/vdiff.py: SEEHDSLMCareDocumentationV21 mot SEEHDSLMCareDocumentation. Redigera inte för hand. -->

| Element | 2.1 | 3.0 | Skillnad |
|---|---|---|---|
| `careDocumentation.careDocumentationHeader.documentId` | 1..1 String | – | Finns bara i 2.1 |
| `careDocumentation.careDocumentationHeader.sourceSystemHSAid` | 1..1 String | – | Finns bara i 2.1 |
| `careDocumentation.careDocumentationHeader.documentTitle` | 0..1 String | – | Finns bara i 2.1 |
| `careDocumentation.careDocumentationHeader.documentTime` | 0..1 TimeStamp | – | Finns bara i 2.1 |
| `careDocumentation.careDocumentationHeader.patientId` | 1..1 PersonIdType | – | Finns bara i 2.1 |
| `careDocumentation.careDocumentationHeader.accountableHealthcareProfessional` | 1..1 Backbone | – | Finns bara i 2.1 |
| `careDocumentation.careDocumentationHeader.legalAuthenticator` | 0..1 Backbone | – | Finns bara i 2.1 |
| `careDocumentation.careDocumentationHeader.approvedForPatient` | 1..1 Boolean | – | Finns bara i 2.1 |
| `careDocumentation.careDocumentationHeader.careContactId` | 0..1 String | – | Finns bara i 2.1 |
| `careDocumentation.careDocumentationBody.clinicalDocumentNote` | 1..1 Backbone | – | Finns bara i 2.1 |
| `result.errorCode` | 0..1 String | – | Finns bara i 2.1 |
| `result.logId` | 1..1 String | – | Finns bara i 2.1 |
| `result.subCode` | 0..1 String | – | Finns bara i 2.1 |
| `result.message` | 0..1 String | – | Finns bara i 2.1 |
| `careDocumentation.header.accessControlHeader` | – | 1..1 Backbone | Finns bara i 3.0 |
| `careDocumentation.header.sourceSystemId` | – | 1..1 IIType | Finns bara i 3.0 |
| `careDocumentation.header.record` | – | 1..1 Backbone | Finns bara i 3.0 |
| `careDocumentation.header.author` | – | 0..1 Backbone | Finns bara i 3.0 |
| `careDocumentation.header.signature` | – | 0..1 Backbone | Finns bara i 3.0 |
| `careDocumentation.body.clinicalDocumentNoteCode` | – | 1..1 CVType | Finns bara i 3.0 |
| `careDocumentation.body.clinicalDocumentNoteTitle` | – | 0..1 String | Finns bara i 3.0 |
| `careDocumentation.body.clinicalDocumentNoteText` | – | 0..1 String | Finns bara i 3.0 |
| `careDocumentation.body.multimediaEntry` | – | 0..1 Backbone | Finns bara i 3.0 |
| `careDocumentation.body.dissentingOpinion` | – | 0..* Backbone | Finns bara i 3.0 |
| `hasMore` | – | 0..* Backbone | Finns bara i 3.0 |
| `result.resultText` | – | 0..1 String | Finns bara i 3.0 |
| `careDocumentation.careDocumentationHeader` | 1..1 Backbone | `careDocumentation.header` | Bytt namn |
| `careDocumentation.careDocumentationBody` | 1..1 Backbone | `careDocumentation.body` | Bytt namn |
