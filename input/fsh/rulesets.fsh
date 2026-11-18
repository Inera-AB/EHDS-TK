// PDL-001: approvedForPatient = false i TK-headern → meta.security v3-ActCode#NOPAT.
// Gemensam regel för alla kliniska profiler, så att säkerhetsmärkningen ser likadan ut överallt
// och hålls i ett eget skikt (meta) skilt från det kliniska innehållet.
RuleSet: PdlNoPat
* meta.security MS
* meta.security ^slicing.discriminator.type = #value
* meta.security ^slicing.discriminator.path = "code"
* meta.security ^slicing.rules = #open
* meta.security contains nopat 0..1 MS
* meta.security[nopat] = $v3-ActCode#NOPAT
* meta.security[nopat] ^short = "Ej för patient (approvedForPatient = false i TK-headern) – se PDL-001"
* meta.security[nopat] ^definition = "Anges när approvedForPatient i tjänstekontraktets header är false. Utelämnas när värdet är true. Koden är NOPAT från v3-ActCode (inte NOPATIENT, som inte finns i kodverket)."
