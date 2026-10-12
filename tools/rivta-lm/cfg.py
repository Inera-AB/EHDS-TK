"""Tjänstekontrakt som har logiska modeller i IG:n: responder-XSD, svarselement och TKB."""
import os

def CFG(X):
    D = lambda r, f: os.path.join(X, r, 'docs', f)
    I = lambda r, f: os.path.join(X, r, 'schemas', 'interactions', f)
    HCD = 'riv.clinicalprocess.healthcond.description'; HCA = 'riv.clinicalprocess.healthcond.actoutcome'
    LOG = 'riv.clinicalprocess.logistics.logistics'; APA = 'riv.clinicalprocess.activityprescription.actoutcome'
    BAS = 'riv.clinicalprocess.healthcond.basic'; CRM = 'riv.crm.requeststatus'; AUD = 'riv.informationsecurity.auditing.log'
    CFG = [
     dict(model='SEEHDSLMDiagnosis', xsd=I(HCD, 'GetDiagnosisInteraction/GetDiagnosisResponder_2.0.xsd'), element='GetDiagnosisResponse', tkb=D(HCD, 'TKB_clinicalprocess_healthcond_description.docx'), contract='GetDiagnosis 2.0'),
     dict(model='SEEHDSLMAlertInformation', xsd=I(HCD, 'GetAlertInformationInteraction/GetAlertInformationResponder_2.0.xsd'), element='GetAlertInformationResponse', tkb=D(HCD, 'TKB_clinicalprocess_healthcond_description.docx'), contract='GetAlertInformation 2.0'),
     dict(model='SEEHDSLMCareDocumentation', xsd=I(HCD, 'GetCareDocumentationInteraction/GetCareDocumentationResponder_3.0.xsd'), element='GetCareDocumentationResponse', tkb=D(HCD, 'TKB_clinicalprocess_healthcond_description.docx'), contract='GetCareDocumentation 3.0'),
     dict(model='SEEHDSLMFunctionalStatus', xsd=I(HCD, 'GetFunctionalStatusInteraction/GetFunctionalStatusResponder_2.0.xsd'), element='GetFunctionalStatusResponse', tkb=D(HCD, 'TKB_clinicalprocess_healthcond_description.docx'), contract='GetFunctionalStatus 2.0'),
     dict(model='SEEHDSLMCareContacts', xsd=I(LOG, 'GetCareContactsInteraction/GetCareContactsResponder_3.0.xsd'), element='GetCareContactsResponse', tkb=D(LOG, 'TKB_clinicalprocess_logistics_logistics.docx'), contract='GetCareContacts 3.0', flatten=['careContactHeader', 'careContactBody']),
     dict(model='SEEHDSLMCarePlans', xsd=I(LOG, 'GetCarePlansInteraction/GetCarePlansResponder_2.0.xsd'), element='GetCarePlansResponse', tkb=D(LOG, 'TKB_clinicalprocess_logistics_logistics.docx'), contract='GetCarePlans 2.0', flatten=['carePlanHeader', 'carePlanBody']),
     dict(model='SEEHDSLMImagingOutcome', xsd=I(HCA, 'GetImagingOutcomeInteraction/GetImagingOutcomeResponder_1.0.xsd'), element='GetImagingOutcomeResponse', tkb=D(HCA, 'TKB_clinicalprocess_healthcond_actoutcome.docx'), contract='GetImagingOutcome 1.0'),
     dict(model='SEEHDSLMLaboratoryOrderOutcome', xsd=I(HCA, 'GetLaboratoryOrderOutcomeInteraction/GetLaboratoryOrderOutcomeResponder_4.2.xsd'), element='GetLaboratoryOrderOutcomeResponse', tkb=D(HCA, 'TKB_clinicalprocess_healthcond_actoutcome.docx'), contract='GetLaboratoryOrderOutcome 4.2'),
     dict(model='SEEHDSLMMaternityMedicalHistory', xsd=I(HCA, 'GetMaternityMedicalHistoryInteraction/GetMaternityMedicalHistoryResponder_2.0.xsd'), element='GetMaternityMedicalHistoryResponse', tkb=D(HCA, 'TKB_clinicalprocess_healthcond_actoutcome.docx'), contract='GetMaternityMedicalHistory 2.0'),
     dict(model='SEEHDSLMReferralOutcome', xsd=I(HCA, 'GetReferralOutcomeInteraction/GetReferralOutcomeResponder_3.2.xsd'), element='GetReferralOutcomeResponse', tkb=D(HCA, 'TKB_clinicalprocess_healthcond_actoutcome.docx'), contract='GetReferralOutcome 3.2'),
     dict(model='SEEHDSLMMedicationHistory', xsd=I(APA, 'GetMedicationHistoryInteraction/GetMedicationHistoryResponder_2.2.xsd'), element='GetMedicationHistoryResponse', tkb=D(APA, 'TKB_clinicalprocess_activityprescription_actoutcome.docx'), contract='GetMedicationHistory 2.2'),
     dict(model='SEEHDSLMVaccinationHistory', xsd=I(APA, 'GetVaccinationHistoryInteraction/GetVaccinationHistoryResponder_2.0.xsd'), element='GetVaccinationHistoryResponse', tkb=D(APA, 'TKB_clinicalprocess_activityprescription_actoutcome.docx'), contract='GetVaccinationHistory 2.0'),
     dict(model='SEEHDSLMObservations', xsd=I(BAS, 'GetObservationsInteraction/GetObservationsResponder_2.0.xsd'), element='GetObservationsResponse', tkb=D(BAS, 'TKB_clinicalprocess_healthcond_basic.docx'), contract='GetObservations 2.0'),
     dict(model='SEEHDSLMRequestActivities', xsd=I(CRM, 'GetRequestActivitiesInteraction/GetRequestActivitiesResponder_2.0.xsd'), element='GetRequestActivitiesResponse', tkb=D(CRM, 'TKB_crm_requeststatus.docx'), contract='GetRequestActivities 2.0'),
     dict(model='SEEHDSLMAccessLog', xsd=I(AUD, 'GetAccessLogsForPatientInteraction/GetAccessLogsForPatientResponder_2.0.xsd'), element='GetAccessLogsForPatientResponse', tkb=D(AUD, 'TKB_informationsecurity_auditing_log.docx'), contract='GetAccessLogsForPatient 2.0'),
    ]
    # Övriga aktiva kontraktsversioner (se startsidan). Domänen checkas ut vid angiven tagg/gren i
    # <domains>/<repo>@<ref> (git worktree). 'base' är modellen som mappningen utgår från och som
    # versionen jämförs med (vdiff.py).
    R = lambda r, ref: f'{r}@{ref}'
    OLD = [
     ('SEEHDSLMAlertInformationV30', 'SEEHDSLMAlertInformation', R(HCD, 'feature-GAI_3.0'), 'GetAlertInformation', '3.0', 'TKB_clinicalprocess_healthcond_description_GetAlertInformation.docx', {}),
     ('SEEHDSLMCareDocumentationV21', 'SEEHDSLMCareDocumentation', R(HCD, '2.1.19'), 'GetCareDocumentation', '2.1', 'TKB_clinicalprocess_healthcond_description.docx', {}),
     ('SEEHDSLMCareContactsV20', 'SEEHDSLMCareContacts', R(LOG, '2.0.7'), 'GetCareContacts', '2.0', 'TKB_clinicalprocess_logistics_logistics.docx', dict(flatten=['careContactHeader', 'careContactBody'])),
     ('SEEHDSLMLaboratoryOrderOutcomeV31', 'SEEHDSLMLaboratoryOrderOutcome', R(HCA, '3.1.10'), 'GetLaboratoryOrderOutcome', '3.1', 'TKB_clinicalprocess_healthcond_actoutcome.docx', {}),
     ('SEEHDSLMLaboratoryOrderOutcomeV41', 'SEEHDSLMLaboratoryOrderOutcome', R(HCA, '4.1.3'), 'GetLaboratoryOrderOutcome', '4.1', 'TKB_clinicalprocess_healthcond_actoutcome.docx', {}),
     ('SEEHDSLMReferralOutcomeV31', 'SEEHDSLMReferralOutcome', R(HCA, '4.2'), 'GetReferralOutcome', '3.1', 'TKB_clinicalprocess_healthcond_actoutcome.docx', {}),
     ('SEEHDSLMVaccinationHistoryV10', 'SEEHDSLMVaccinationHistory', R(APA, '1.0.2'), 'GetVaccinationHistory', '1.0', 'Tjänstekontraktsbeskrivning_riv_clinicalprocess_activityprescription_actoutcome.docx', {}),
     ('SEEHDSLMObservationsV12', 'SEEHDSLMObservations', R(BAS, '1.2.3'), 'GetObservations', '1.2', 'TKB_clinicalprocess_healthcond_basic.docx', {}),
     ('SEEHDSLMRequestActivitiesV10', 'SEEHDSLMRequestActivities', R(CRM, '1.0.7'), 'GetRequestActivities', '1.0', 'TKB_crm_requeststatus.docx', {}),
     ('SEEHDSLMAccessLogV11', 'SEEHDSLMAccessLog', R('riv.ehr.log', '1.2.4'), 'GetAccessLogsForPatient', '1.1', 'TKB_ehr_log.docx', {}),
    ]
    for model, base, repo, tk, ver, tkb, extra in OLD:
        CFG.append(dict(model=model, base=base, version=ver,
                        xsd=I(repo, ('querying/' if repo.startswith('riv.ehr.log') else '') + f'{tk}Interaction/{tk}Responder_{ver}.xsd'), element=f'{tk}Response',
                        tkb=D(repo, tkb) if tkb else None, contract=f'{tk} {ver}', **extra))
    return CFG
