# Exempel: patient med personnummer - Inera EHDS Tjänstekontrakt – FHIR Implementation Guide v0.12.0

## Exempel Patient: Exempel: patient med personnummer

Profil: [SE EHDS Patient](StructureDefinition-SEEHDSPatient.md)

Tolvan Tolvansson (inget angivet kön), Födelsedatum: 1912-12-12 ( http://electronichealth.se/identifier/personnummer#191212121212)

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "SEEHDSPatientExample",
  "meta" : {
    "profile" : ["https://fhir.inera.se/ig/ehds-tk/StructureDefinition/SEEHDSPatient"]
  },
  "identifier" : [{
    "system" : "http://electronichealth.se/identifier/personnummer",
    "value" : "191212121212"
  }],
  "name" : [{
    "family" : "Tolvansson",
    "given" : ["Tolvan"]
  }],
  "birthDate" : "1912-12-12"
}

```
