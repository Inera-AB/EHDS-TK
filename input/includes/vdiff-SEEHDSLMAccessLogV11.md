<!-- Genererad av tools/rivta-lm/vdiff.py: SEEHDSLMAccessLogV11 mot SEEHDSLMAccessLog. Redigera inte för hand. -->

| Element | 1.1 | 2.0 | Skillnad |
|---|---|---|---|
| `accessLogsResult.reportResult.result` | – | 1..1 Backbone | Finns bara i 2.0 |
| `accessLogsResultType` | 1..1 Backbone | `accessLogsResult` | Bytt namn |
| `accessLogsResultType.result` | 1..1 Backbone | `accessLogsResult.reportResult` | Bytt namn |
| `accessLogsResultType.result.resultText` | 1..1 String | 0..1 String | Ändrad kardinalitet |
