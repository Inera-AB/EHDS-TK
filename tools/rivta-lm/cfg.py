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
    return CFG
