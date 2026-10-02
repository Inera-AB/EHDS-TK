// Kontrakt: GetDiagnosis v2.0 (diagnosisBody.typeOfDiagnosis)
// Fragment av Ineras kodverk kv_diagnostyp – endast de koder som används av GetDiagnosis.

CodeSystem: DiagnosisTypeCS
Id: diagnosistype-cs
Title: "KV Diagnostyp (fragment)"
Description: "Fragment av Ineras kodverk kv_diagnostyp med de koder som används för typ av diagnos i GetDiagnosis (diagnosisBody.typeOfDiagnosis): HD = huvuddiagnos, BY = bidiagnos. Kodverket förvaltas av Inera; detta är en delmängd för validering i IG:n."
* ^url = "https://terminologitjansten.inera.se/inera-kodverksforvaltning/kodverk/kv_diagnostyp"
* ^status = #active
* ^content = #fragment
* ^caseSensitive = true
* #HD "Huvuddiagnos" "Huvuddiagnos"
* #BY "Bidiagnos" "Bidiagnos"
