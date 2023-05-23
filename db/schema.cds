namespace sap.ui.testproject;
using { managed } from '@sap/cds/common';

  entity Questions : managed {
    key ID      : UUID  @(Core.Computed : true);
    Question        : String;
    A1              : String;
    A2              : String;
    A3              : String;
    A4              : String;
    Correct         : String;
  }

/*  entity Result : managed {
    key ID       : UUID  @(Core.Computed : true);
    userID       : String;
    Result       : Integer;
  }
*/