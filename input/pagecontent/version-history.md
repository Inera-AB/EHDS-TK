# Version history

This page records changes between published versions of this Implementation Guide.

---

| Version | Date | Status | Description |
|---------|------|--------|-------------|
| 0.4.0 | 2026-07-01 | Draft | Align GetAlertInformation Flag/AllergyIntolerance mapping with Socialstyrelsens UMI-modell/HL7 Sweden UMI-FHIR-arbetsgruppen: derived Flag.status/AllergyIntolerance.clinicalStatus (active/inactive via obsoleteTime), standard `note`-extension replaces local extension, national SNOMED CT code system references added, Flag-level criticalityLevel/verificationStatus extensions, AllergyIntolerance.criticality mapping, and new ConceptMaps for degreeOfSeverity/degreeOfCertainty. |
| 0.3.3 | 2026-06-25 | Draft | Add ig_slug to fhir-portal dispatch payload to fix canonical URL links. |
| 0.3.2 | 2026-06-25 | Draft | Re-release to correct deployment pipeline and publishing paths. |
| 0.3.1 | 2026-06-24 | Draft | First published release. |
| 0.1.0 | 2026-06-16 | Draft | Initial template version. |

---

### Change log

#### 0.4.0 — 2026-07-01 (Draft)

- `IneraEHDSFlag.status` (and `IneraEHDSAllergyIntolerance.clinicalStatus`) derived as `active`/`inactive` from `obsoleteTime` instead of hardcoded `active` (ALERT-008, closed).
- Replaced the local `alertInformationComment` extension with the standard `note` extension (`http://hl7.org/fhir/StructureDefinition/note`, package `hl7.fhir.uv.extensions` added as a dependency) (ALERT-005, closed).
- Documented Socialstyrelsens kodverkslista för uppmärksamhetsinformation (SNOMED CT, OID family `1.2.752.116.3.1.16.1.x`) as the recommended/alternative code system for `seriousDisease.disease`, `treatment.treatmentCode`, and `communicableDisease.communicableDiseaseCode` (ALERT-002, partially resolved).
- Added `Flag.extension[criticalityLevel]` and `Flag.extension[verificationStatus]` so `Flag` is self-sufficient for hypersensitivity severity/certainty without requiring `AllergyIntolerance`, plus `AllergyIntolerance.criticality` mapping.
- Added ConceptMaps `AlertCriticalityMap` and `AlertVerificationStatusMap` for `degreeOfSeverity`/`degreeOfCertainty` (ALERT-004, closed).

#### 0.1.0 — *YYYY-MM-DD* (Draft)

- Initial structure established.
- IneraPatient template profile added.
- Placeholder pages for workflow, logical models, mappings, and downloads added.

---

> **Guidance for authors:** Add a new row to the table and a new section to the change log for each published version. Follow [semantic versioning](https://semver.org/): increment the patch version for corrections, the minor version for backwards-compatible additions, and the major version for breaking changes. Record the publication date, the ballot/release status (Draft, STU, Normative), and a brief summary of what changed.
