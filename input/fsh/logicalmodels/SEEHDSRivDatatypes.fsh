// RIV-TA-datatyper för de logiska modellerna. Genererade från respektive domäns XSD.
// Varje datatyp finns per namnrymd eftersom underelementen ärver datatypens namnrymd i XML:en.

RuleSet: RivNs(path, ns)
* {path} ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace"
* {path} ^extension[=].valueUri = "{ns}"

RuleSet: RivRoot(name, ns)
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics"
* ^extension[=].valueCode = #can-be-target
* ^extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/xml-name"
* ^extension[=].valueString = "{name}"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace"
* ^extension[=].valueUri = "{ns}"

RuleSet: RivXmlName(path, name)
* {path} ^extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/xml-name"
* {path} ^extension[=].valueString = "{name}"

RuleSet: RivTypeNs(ns)
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-namespace"
* ^extension[=].valueUri = "{ns}"

Logical: SEEHDSRivString
Id: SEEHDSRivString
Title: "RIV-TA text"
Description: "Textinnehåll i ett RIV-TA-element av typen xs:string eller en strängbaserad typ (t.ex. HSAIdType, kodlistor). Elementets värde ligger som textinnehåll i XML-elementet (representation xmlText)."
* value 1..1 string "Elementets textinnehåll"
* value ^representation = #xmlText

Logical: SEEHDSRivTimeStamp
Id: SEEHDSRivTimeStamp
Title: "RIV-TA TimeStampType"
Description: "Tidpunkt i formatet ÅÅÅÅMMDDttmmss (lokal svensk tid utan tidszon). Konverteras till FHIR dateTime/instant med Europe/Stockholm, se GENERAL-001. Elementets värde ligger som textinnehåll i XML-elementet (representation xmlText)."
* value 1..1 string "Elementets textinnehåll"
* value ^representation = #xmlText

Logical: SEEHDSRivDate
Id: SEEHDSRivDate
Title: "RIV-TA DateType"
Description: "Datum i formatet ÅÅÅÅMMDD. Elementets värde ligger som textinnehåll i XML-elementet (representation xmlText)."
* value 1..1 string "Elementets textinnehåll"
* value ^representation = #xmlText

Logical: SEEHDSRivDateTime
Id: SEEHDSRivDateTime
Title: "RIV-TA xs:dateTime"
Description: "Tidpunkt enligt xs:dateTime. Lagras som text eftersom xs:dateTime tillåter tidpunkt utan tidszon. Elementets värde ligger som textinnehåll i XML-elementet (representation xmlText)."
* value 1..1 string "Elementets textinnehåll"
* value ^representation = #xmlText

Logical: SEEHDSRivBoolean
Id: SEEHDSRivBoolean
Title: "RIV-TA xs:boolean"
Description: "Sanningsvärde (true/false). Elementets värde ligger som textinnehåll i XML-elementet (representation xmlText)."
* value 1..1 boolean "Elementets textinnehåll"
* value ^representation = #xmlText

Logical: SEEHDSRivInteger
Id: SEEHDSRivInteger
Title: "RIV-TA heltal"
Description: "Heltal (xs:int/xs:integer). Elementets värde ligger som textinnehåll i XML-elementet (representation xmlText)."
* value 1..1 integer "Elementets textinnehåll"
* value ^representation = #xmlText

Logical: SEEHDSRivDecimal
Id: SEEHDSRivDecimal
Title: "RIV-TA decimaltal"
Description: "Decimaltal (xs:double/xs:decimal). Elementets värde ligger som textinnehåll i XML-elementet (representation xmlText)."
* value 1..1 decimal "Elementets textinnehåll"
* value ^representation = #xmlText

Logical: SEEHDSRivBase64Binary
Id: SEEHDSRivBase64Binary
Title: "RIV-TA xs:base64Binary"
Description: "Base64-kodat innehåll. Elementets värde ligger som textinnehåll i XML-elementet (representation xmlText)."
* value 1..1 base64Binary "Elementets textinnehåll"
* value ^representation = #xmlText

Logical: SEEHDSRivAnyURI
Id: SEEHDSRivAnyURI
Title: "RIV-TA xs:anyURI"
Description: "URI. Elementets värde ligger som textinnehåll i XML-elementet (representation xmlText)."
* value 1..1 uri "Elementets textinnehåll"
* value ^representation = #xmlText

Logical: SEEHDSRivCVTypeActivityprescriptionActoutcome2
Id: SEEHDSRivCVTypeActivityprescriptionActoutcome2
Title: "RIV-TA CVType (clinicalprocess:activityprescription:actoutcome:2)"
Description: "RIV-TA-datatypen CVType i namnrymden urn:riv:clinicalprocess:activityprescription:actoutcome:2."
* insert RivTypeNs(urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* code 0..1 SEEHDSRivString "Kod"
* codeSystem 0..1 SEEHDSRivString "OID för kodsystem"
* codeSystemName 0..1 SEEHDSRivString "Kodsystemets namn"
* codeSystemVersion 0..1 SEEHDSRivString "Kodsystemets version"
* displayName 0..1 SEEHDSRivString "Kodens klartext"
* originalText 0..1 SEEHDSRivString "Originaltext (om kod saknas eller som komplement)"

Logical: SEEHDSRivCVTypeHealthcondActoutcome2
Id: SEEHDSRivCVTypeHealthcondActoutcome2
Title: "RIV-TA CVType (clinicalprocess:healthcond:actoutcome:2)"
Description: "RIV-TA-datatypen CVType i namnrymden urn:riv:clinicalprocess:healthcond:actoutcome:2."
* insert RivTypeNs(urn:riv:clinicalprocess:healthcond:actoutcome:2)
* code 0..1 SEEHDSRivString "Kod"
* codeSystem 0..1 SEEHDSRivString "OID för kodsystem"
* codeSystemName 0..1 SEEHDSRivString "Kodsystemets namn"
* codeSystemVersion 0..1 SEEHDSRivString "Kodsystemets version"
* displayName 0..1 SEEHDSRivString "Kodens klartext"
* originalText 0..1 SEEHDSRivString "Originaltext (om kod saknas eller som komplement)"

Logical: SEEHDSRivCVTypeHealthcondActoutcome3
Id: SEEHDSRivCVTypeHealthcondActoutcome3
Title: "RIV-TA CVType (clinicalprocess:healthcond:actoutcome:3)"
Description: "RIV-TA-datatypen CVType i namnrymden urn:riv:clinicalprocess:healthcond:actoutcome:3."
* insert RivTypeNs(urn:riv:clinicalprocess:healthcond:actoutcome:3)
* code 0..1 SEEHDSRivString "Kod"
* codeSystem 0..1 SEEHDSRivString "OID för kodsystem"
* codeSystemName 0..1 SEEHDSRivString "Kodsystemets namn"
* codeSystemVersion 0..1 SEEHDSRivString "Kodsystemets version"
* displayName 0..1 SEEHDSRivString "Kodens klartext"
* originalText 0..1 SEEHDSRivString "Originaltext (om kod saknas eller som komplement)"

Logical: SEEHDSRivCVTypeHealthcondActoutcome4
Id: SEEHDSRivCVTypeHealthcondActoutcome4
Title: "RIV-TA CVType (clinicalprocess:healthcond:actoutcome:4)"
Description: "RIV-TA-datatypen CVType i namnrymden urn:riv:clinicalprocess:healthcond:actoutcome:4."
* insert RivTypeNs(urn:riv:clinicalprocess:healthcond:actoutcome:4)
* code 0..1 SEEHDSRivString "Kod"
* codeSystem 0..1 SEEHDSRivString "OID för kodsystem"
* codeSystemName 0..1 SEEHDSRivString "Kodsystemets namn"
* codeSystemVersion 0..1 SEEHDSRivString "Kodsystemets version"
* displayName 0..1 SEEHDSRivString "Kodens klartext"
* originalText 0..1 SEEHDSRivString "Originaltext (om kod saknas eller som komplement)"

Logical: SEEHDSRivCVTypeHealthcondBasic2
Id: SEEHDSRivCVTypeHealthcondBasic2
Title: "RIV-TA CVType (clinicalprocess:healthcond:basic:2)"
Description: "RIV-TA-datatypen CVType i namnrymden urn:riv:clinicalprocess:healthcond:basic:2."
* insert RivTypeNs(urn:riv:clinicalprocess:healthcond:basic:2)
* code 1..1 SEEHDSRivString "Kod"
* codeSystem 1..1 SEEHDSRivString "OID för kodsystem"
* codeSystemVersion 0..1 SEEHDSRivString "Kodsystemets version"
* displayName 0..1 SEEHDSRivString "Kodens klartext"

Logical: SEEHDSRivCVTypeHealthcondDescription2
Id: SEEHDSRivCVTypeHealthcondDescription2
Title: "RIV-TA CVType (clinicalprocess:healthcond:description:2)"
Description: "RIV-TA-datatypen CVType i namnrymden urn:riv:clinicalprocess:healthcond:description:2."
* insert RivTypeNs(urn:riv:clinicalprocess:healthcond:description:2)
* code 0..1 SEEHDSRivString "Kod"
* codeSystem 0..1 SEEHDSRivString "OID för kodsystem"
* codeSystemName 0..1 SEEHDSRivString "Kodsystemets namn"
* codeSystemVersion 0..1 SEEHDSRivString "Kodsystemets version"
* displayName 0..1 SEEHDSRivString "Kodens klartext"
* originalText 0..1 SEEHDSRivString "Originaltext (om kod saknas eller som komplement)"

Logical: SEEHDSRivCVTypeHealthcondDescription3
Id: SEEHDSRivCVTypeHealthcondDescription3
Title: "RIV-TA CVType (clinicalprocess:healthcond:description:3)"
Description: "RIV-TA-datatypen CVType i namnrymden urn:riv:clinicalprocess:healthcond:description:3."
* insert RivTypeNs(urn:riv:clinicalprocess:healthcond:description:3)
* code 0..1 SEEHDSRivString "Kod"
* codeSystem 0..1 SEEHDSRivString "OID för kodsystem"
* codeSystemName 0..1 SEEHDSRivString "Kodsystemets namn"
* codeSystemVersion 0..1 SEEHDSRivString "Kodsystemets version"
* displayName 0..1 SEEHDSRivString "Kodens klartext"
* originalText 0..1 SEEHDSRivString "Originaltext (om kod saknas eller som komplement)"

Logical: SEEHDSRivCVTypeLogisticsLogistics3
Id: SEEHDSRivCVTypeLogisticsLogistics3
Title: "RIV-TA CVType (clinicalprocess:logistics:logistics:3)"
Description: "RIV-TA-datatypen CVType i namnrymden urn:riv:clinicalprocess:logistics:logistics:3."
* insert RivTypeNs(urn:riv:clinicalprocess:logistics:logistics:3)
* code 0..1 SEEHDSRivString "Kod"
* codeSystem 0..1 SEEHDSRivString "OID för kodsystem"
* codeSystemName 0..1 SEEHDSRivString "Kodsystemets namn"
* codeSystemVersion 0..1 SEEHDSRivString "Kodsystemets version"
* displayName 0..1 SEEHDSRivString "Kodens klartext"
* originalText 0..1 SEEHDSRivString "Originaltext (om kod saknas eller som komplement)"

Logical: SEEHDSRivCVTypeCrmRequeststatus2
Id: SEEHDSRivCVTypeCrmRequeststatus2
Title: "RIV-TA CVType (crm:requeststatus:2)"
Description: "RIV-TA-datatypen CVType i namnrymden urn:riv:crm:requeststatus:2."
* insert RivTypeNs(urn:riv:crm:requeststatus:2)
* code 0..1 SEEHDSRivString "Kod"
* codeSystem 0..1 SEEHDSRivString "OID för kodsystem"
* codeSystemName 0..1 SEEHDSRivString "Kodsystemets namn"
* codeSystemVersion 0..1 SEEHDSRivString "Kodsystemets version"
* displayName 0..1 SEEHDSRivString "Kodens klartext"
* originalText 0..1 SEEHDSRivString "Originaltext (om kod saknas eller som komplement)"

Logical: SEEHDSRivIITypeActivityprescriptionActoutcome2
Id: SEEHDSRivIITypeActivityprescriptionActoutcome2
Title: "RIV-TA IIType (clinicalprocess:activityprescription:actoutcome:2)"
Description: "RIV-TA-datatypen IIType i namnrymden urn:riv:clinicalprocess:activityprescription:actoutcome:2."
* insert RivTypeNs(urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* root 1..1 SEEHDSRivString "OID eller UUID för identifierarens namnrymd"
* extension 0..1 SEEHDSRivString "Identifierarens värde inom namnrymden"

Logical: SEEHDSRivIITypeHealthcondActoutcome3
Id: SEEHDSRivIITypeHealthcondActoutcome3
Title: "RIV-TA IIType (clinicalprocess:healthcond:actoutcome:3)"
Description: "RIV-TA-datatypen IIType i namnrymden urn:riv:clinicalprocess:healthcond:actoutcome:3."
* insert RivTypeNs(urn:riv:clinicalprocess:healthcond:actoutcome:3)
* root 1..1 SEEHDSRivString "OID eller UUID för identifierarens namnrymd"
* extension 0..1 SEEHDSRivString "Identifierarens värde inom namnrymden"

Logical: SEEHDSRivIITypeHealthcondActoutcome4
Id: SEEHDSRivIITypeHealthcondActoutcome4
Title: "RIV-TA IIType (clinicalprocess:healthcond:actoutcome:4)"
Description: "RIV-TA-datatypen IIType i namnrymden urn:riv:clinicalprocess:healthcond:actoutcome:4."
* insert RivTypeNs(urn:riv:clinicalprocess:healthcond:actoutcome:4)
* root 1..1 SEEHDSRivString "OID eller UUID för identifierarens namnrymd"
* extension 1..1 SEEHDSRivString "Identifierarens värde inom namnrymden"

Logical: SEEHDSRivIITypeHealthcondBasic2
Id: SEEHDSRivIITypeHealthcondBasic2
Title: "RIV-TA IIType (clinicalprocess:healthcond:basic:2)"
Description: "RIV-TA-datatypen IIType i namnrymden urn:riv:clinicalprocess:healthcond:basic:2."
* insert RivTypeNs(urn:riv:clinicalprocess:healthcond:basic:2)
* root 1..1 SEEHDSRivString "OID eller UUID för identifierarens namnrymd"
* extension 0..1 SEEHDSRivString "Identifierarens värde inom namnrymden"

Logical: SEEHDSRivIITypeHealthcondDescription3
Id: SEEHDSRivIITypeHealthcondDescription3
Title: "RIV-TA IIType (clinicalprocess:healthcond:description:3)"
Description: "RIV-TA-datatypen IIType i namnrymden urn:riv:clinicalprocess:healthcond:description:3."
* insert RivTypeNs(urn:riv:clinicalprocess:healthcond:description:3)
* root 1..1 SEEHDSRivString "OID eller UUID för identifierarens namnrymd"
* extension 0..1 SEEHDSRivString "Identifierarens värde inom namnrymden"

Logical: SEEHDSRivIITypeLogisticsLogistics3
Id: SEEHDSRivIITypeLogisticsLogistics3
Title: "RIV-TA IIType (clinicalprocess:logistics:logistics:3)"
Description: "RIV-TA-datatypen IIType i namnrymden urn:riv:clinicalprocess:logistics:logistics:3."
* insert RivTypeNs(urn:riv:clinicalprocess:logistics:logistics:3)
* root 1..1 SEEHDSRivString "OID eller UUID för identifierarens namnrymd"
* extension 0..1 SEEHDSRivString "Identifierarens värde inom namnrymden"

Logical: SEEHDSRivIITypeCrmRequeststatus2
Id: SEEHDSRivIITypeCrmRequeststatus2
Title: "RIV-TA IIType (crm:requeststatus:2)"
Description: "RIV-TA-datatypen IIType i namnrymden urn:riv:crm:requeststatus:2."
* insert RivTypeNs(urn:riv:crm:requeststatus:2)
* root 1..1 SEEHDSRivString "OID eller UUID för identifierarens namnrymd"
* extension 0..1 SEEHDSRivString "Identifierarens värde inom namnrymden"

Logical: SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2
Id: SEEHDSRivPQIntervalTypeActivityprescriptionActoutcome2
Title: "RIV-TA PQIntervalType (clinicalprocess:activityprescription:actoutcome:2)"
Description: "RIV-TA-datatypen PQIntervalType i namnrymden urn:riv:clinicalprocess:activityprescription:actoutcome:2."
* insert RivTypeNs(urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* low 0..1 SEEHDSRivDecimal "Nedre gräns"
* high 0..1 SEEHDSRivDecimal "Övre gräns"
* unit 1..1 SEEHDSRivString "Enhet"

Logical: SEEHDSRivPQIntervalTypeHealthcondActoutcome4
Id: SEEHDSRivPQIntervalTypeHealthcondActoutcome4
Title: "RIV-TA PQIntervalType (clinicalprocess:healthcond:actoutcome:4)"
Description: "RIV-TA-datatypen PQIntervalType i namnrymden urn:riv:clinicalprocess:healthcond:actoutcome:4."
* insert RivTypeNs(urn:riv:clinicalprocess:healthcond:actoutcome:4)
* low 0..1 SEEHDSRivString "Nedre gräns"
* lowClosed 0..1 SEEHDSRivBoolean "Nedre gräns inkluderad"
* high 0..1 SEEHDSRivString "Övre gräns"
* highClosed 0..1 SEEHDSRivBoolean "Övre gräns inkluderad"
* unit 1..1 SEEHDSRivString "Enhet"

Logical: SEEHDSRivPQIntervalTypeHealthcondBasic2
Id: SEEHDSRivPQIntervalTypeHealthcondBasic2
Title: "RIV-TA PQIntervalType (clinicalprocess:healthcond:basic:2)"
Description: "RIV-TA-datatypen PQIntervalType i namnrymden urn:riv:clinicalprocess:healthcond:basic:2."
* insert RivTypeNs(urn:riv:clinicalprocess:healthcond:basic:2)
* low 0..1 SEEHDSRivDecimal "Nedre gräns"
* high 0..1 SEEHDSRivDecimal "Övre gräns"
* unit 0..1 SEEHDSRivString "Enhet"

Logical: SEEHDSRivPQTypeActivityprescriptionActoutcome2
Id: SEEHDSRivPQTypeActivityprescriptionActoutcome2
Title: "RIV-TA PQType (clinicalprocess:activityprescription:actoutcome:2)"
Description: "RIV-TA-datatypen PQType i namnrymden urn:riv:clinicalprocess:activityprescription:actoutcome:2."
* insert RivTypeNs(urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* value 1..1 SEEHDSRivDecimal "Värde"
* unit 1..1 SEEHDSRivString "Enhet"

Logical: SEEHDSRivPQTypeHealthcondActoutcome2
Id: SEEHDSRivPQTypeHealthcondActoutcome2
Title: "RIV-TA PQType (clinicalprocess:healthcond:actoutcome:2)"
Description: "RIV-TA-datatypen PQType i namnrymden urn:riv:clinicalprocess:healthcond:actoutcome:2."
* insert RivTypeNs(urn:riv:clinicalprocess:healthcond:actoutcome:2)
* value 1..1 SEEHDSRivDecimal "Värde"
* unit 1..1 SEEHDSRivString "Enhet"

Logical: SEEHDSRivPQTypeHealthcondActoutcome3
Id: SEEHDSRivPQTypeHealthcondActoutcome3
Title: "RIV-TA PQType (clinicalprocess:healthcond:actoutcome:3)"
Description: "RIV-TA-datatypen PQType i namnrymden urn:riv:clinicalprocess:healthcond:actoutcome:3."
* insert RivTypeNs(urn:riv:clinicalprocess:healthcond:actoutcome:3)
* value 1..1 SEEHDSRivDecimal "Värde"
* unit 1..1 SEEHDSRivString "Enhet"

Logical: SEEHDSRivPQTypeHealthcondActoutcome4
Id: SEEHDSRivPQTypeHealthcondActoutcome4
Title: "RIV-TA PQType (clinicalprocess:healthcond:actoutcome:4)"
Description: "RIV-TA-datatypen PQType i namnrymden urn:riv:clinicalprocess:healthcond:actoutcome:4."
* insert RivTypeNs(urn:riv:clinicalprocess:healthcond:actoutcome:4)
* value 1..1 SEEHDSRivString "Värde"
* unit 1..1 SEEHDSRivString "Enhet"

Logical: SEEHDSRivPQTypeHealthcondBasic2
Id: SEEHDSRivPQTypeHealthcondBasic2
Title: "RIV-TA PQType (clinicalprocess:healthcond:basic:2)"
Description: "RIV-TA-datatypen PQType i namnrymden urn:riv:clinicalprocess:healthcond:basic:2."
* insert RivTypeNs(urn:riv:clinicalprocess:healthcond:basic:2)
* value 1..1 SEEHDSRivDecimal "Värde"
* unit 0..1 SEEHDSRivString "Enhet"

Logical: SEEHDSRivPartialDateTypeLogisticsLogistics3
Id: SEEHDSRivPartialDateTypeLogisticsLogistics3
Title: "RIV-TA PartialDateType (clinicalprocess:logistics:logistics:3)"
Description: "RIV-TA-datatypen PartialDateType i namnrymden urn:riv:clinicalprocess:logistics:logistics:3."
* insert RivTypeNs(urn:riv:clinicalprocess:logistics:logistics:3)
* format 1..1 SEEHDSRivString "Format för värdet"
* value 1..1 SEEHDSRivString "Värde"

Logical: SEEHDSRivPartialTimeStampTypeHealthcondBasic2
Id: SEEHDSRivPartialTimeStampTypeHealthcondBasic2
Title: "RIV-TA PartialTimeStampType (clinicalprocess:healthcond:basic:2)"
Description: "RIV-TA-datatypen PartialTimeStampType i namnrymden urn:riv:clinicalprocess:healthcond:basic:2."
* insert RivTypeNs(urn:riv:clinicalprocess:healthcond:basic:2)
* format 1..1 SEEHDSRivString "Format för värdet"
* value 1..1 SEEHDSRivString "Värde"

Logical: SEEHDSRivPersonIdTypeActivityprescriptionActoutcome2
Id: SEEHDSRivPersonIdTypeActivityprescriptionActoutcome2
Title: "RIV-TA PersonIdType (clinicalprocess:activityprescription:actoutcome:2)"
Description: "RIV-TA-datatypen PersonIdType i namnrymden urn:riv:clinicalprocess:activityprescription:actoutcome:2."
* insert RivTypeNs(urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* id 1..1 SEEHDSRivString "Personidentitet (12 tecken utan avskiljare)"
* type 1..1 SEEHDSRivString "OID för typ av personidentitet"

Logical: SEEHDSRivPersonIdTypeHealthcondActoutcome2
Id: SEEHDSRivPersonIdTypeHealthcondActoutcome2
Title: "RIV-TA PersonIdType (clinicalprocess:healthcond:actoutcome:2)"
Description: "RIV-TA-datatypen PersonIdType i namnrymden urn:riv:clinicalprocess:healthcond:actoutcome:2."
* insert RivTypeNs(urn:riv:clinicalprocess:healthcond:actoutcome:2)
* id 1..1 SEEHDSRivString "Personidentitet (12 tecken utan avskiljare)"
* type 1..1 SEEHDSRivString "OID för typ av personidentitet"

Logical: SEEHDSRivPersonIdTypeHealthcondActoutcome3
Id: SEEHDSRivPersonIdTypeHealthcondActoutcome3
Title: "RIV-TA PersonIdType (clinicalprocess:healthcond:actoutcome:3)"
Description: "RIV-TA-datatypen PersonIdType i namnrymden urn:riv:clinicalprocess:healthcond:actoutcome:3."
* insert RivTypeNs(urn:riv:clinicalprocess:healthcond:actoutcome:3)
* id 1..1 SEEHDSRivString "Personidentitet (12 tecken utan avskiljare)"
* type 1..1 SEEHDSRivString "OID för typ av personidentitet"

Logical: SEEHDSRivPersonIdTypeHealthcondDescription2
Id: SEEHDSRivPersonIdTypeHealthcondDescription2
Title: "RIV-TA PersonIdType (clinicalprocess:healthcond:description:2)"
Description: "RIV-TA-datatypen PersonIdType i namnrymden urn:riv:clinicalprocess:healthcond:description:2."
* insert RivTypeNs(urn:riv:clinicalprocess:healthcond:description:2)
* id 1..1 SEEHDSRivString "Personidentitet (12 tecken utan avskiljare)"
* type 1..1 SEEHDSRivString "OID för typ av personidentitet"

Logical: SEEHDSRivPersonIdTypeLogisticsLogistics3
Id: SEEHDSRivPersonIdTypeLogisticsLogistics3
Title: "RIV-TA PersonIdType (clinicalprocess:logistics:logistics:3)"
Description: "RIV-TA-datatypen PersonIdType i namnrymden urn:riv:clinicalprocess:logistics:logistics:3."
* insert RivTypeNs(urn:riv:clinicalprocess:logistics:logistics:3)
* id 1..1 SEEHDSRivString "Personidentitet (12 tecken utan avskiljare)"
* type 1..1 SEEHDSRivString "OID för typ av personidentitet"

Logical: SEEHDSRivTimePeriodTypeActivityprescriptionActoutcome2
Id: SEEHDSRivTimePeriodTypeActivityprescriptionActoutcome2
Title: "RIV-TA TimePeriodType (clinicalprocess:activityprescription:actoutcome:2)"
Description: "RIV-TA-datatypen TimePeriodType i namnrymden urn:riv:clinicalprocess:activityprescription:actoutcome:2."
* insert RivTypeNs(urn:riv:clinicalprocess:activityprescription:actoutcome:2)
* start 0..1 SEEHDSRivTimeStamp "Starttidpunkt"
* end 0..1 SEEHDSRivTimeStamp "Sluttidpunkt"

Logical: SEEHDSRivTimePeriodTypeHealthcondActoutcome3
Id: SEEHDSRivTimePeriodTypeHealthcondActoutcome3
Title: "RIV-TA TimePeriodType (clinicalprocess:healthcond:actoutcome:3)"
Description: "RIV-TA-datatypen TimePeriodType i namnrymden urn:riv:clinicalprocess:healthcond:actoutcome:3."
* insert RivTypeNs(urn:riv:clinicalprocess:healthcond:actoutcome:3)
* start 0..1 SEEHDSRivTimeStamp "Starttidpunkt"
* end 0..1 SEEHDSRivTimeStamp "Sluttidpunkt"

Logical: SEEHDSRivTimePeriodTypeHealthcondActoutcome4
Id: SEEHDSRivTimePeriodTypeHealthcondActoutcome4
Title: "RIV-TA TimePeriodType (clinicalprocess:healthcond:actoutcome:4)"
Description: "RIV-TA-datatypen TimePeriodType i namnrymden urn:riv:clinicalprocess:healthcond:actoutcome:4."
* insert RivTypeNs(urn:riv:clinicalprocess:healthcond:actoutcome:4)
* start 0..1 SEEHDSRivTimeStamp "Starttidpunkt"
* end 0..1 SEEHDSRivTimeStamp "Sluttidpunkt"

Logical: SEEHDSRivTimePeriodTypeHealthcondDescription2
Id: SEEHDSRivTimePeriodTypeHealthcondDescription2
Title: "RIV-TA TimePeriodType (clinicalprocess:healthcond:description:2)"
Description: "RIV-TA-datatypen TimePeriodType i namnrymden urn:riv:clinicalprocess:healthcond:description:2."
* insert RivTypeNs(urn:riv:clinicalprocess:healthcond:description:2)
* start 0..1 SEEHDSRivTimeStamp "Starttidpunkt"
* end 0..1 SEEHDSRivTimeStamp "Sluttidpunkt"

Logical: SEEHDSRivTimePeriodTypeLogisticsLogistics3
Id: SEEHDSRivTimePeriodTypeLogisticsLogistics3
Title: "RIV-TA TimePeriodType (clinicalprocess:logistics:logistics:3)"
Description: "RIV-TA-datatypen TimePeriodType i namnrymden urn:riv:clinicalprocess:logistics:logistics:3."
* insert RivTypeNs(urn:riv:clinicalprocess:logistics:logistics:3)
* start 0..1 SEEHDSRivTimeStamp "Starttidpunkt"
* end 0..1 SEEHDSRivTimeStamp "Sluttidpunkt"
