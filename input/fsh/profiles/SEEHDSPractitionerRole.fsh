Profile: SEEHDSPractitionerRole
Parent: $PractitionerRoleEuCore
Id: SEEHDSPractitionerRole
Title: "SE EHDS PractitionerRole – Hälso- och sjukvårdspersonal i uppdrag"
Description: """
  Profil för hälso- och sjukvårdspersonal i uppdrag (medarbetaruppdrag) som refereras från
  EHDS-TK-resurserna (t.ex. accountableHealthcareProfessional, legalAuthenticator, author).
  Ärver HL7 Europe Core PractitionerRole (EURIDICE). Identifier-slicen följer svenska basprofilernas
  konvention (SEBasePractitionerRole: slice hsaid, system urn:oid:1.2.752.29.4.19, typ PRN).
  Används normalt som logisk referens via identifier.
"""

* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains hsaid 0..1 MS
* identifier[hsaid].system = $hsaid-se
* identifier[hsaid].type = $v2-0203#PRN
* identifier[hsaid] ^short = "HSA-id för medarbetaruppdraget/personen (healthcareProfessionalHSAId)"

* practitioner MS
* practitioner ^short = "Personen – display från healthcareProfessionalName"
* organization only Reference(SEEHDSOrganization)
* organization MS
* organization ^short = "Organisationsenhet (healthcareProfessionalOrgUnit)"
* code MS
* code ^short = "Befattning/yrkesroll (healthcareProfessionalRoleCode)"
