using { sap.ui.testproject as my } from '../db/schema';

@path: 'service/test'
service TestService {
  entity Questions as projection on my.Questions;
    annotate Questions with @odata.draft.enabled;
}