namespace sap.ui.riskmanagement;
using { managed } from '@sap/cds/common';

  entity Risks : managed {
    key ID      : UUID  @(Core.Computed : true);
    title       : String(100);
    prio        : String(5);
    descr       : String;
    miti        : Association to Mitigations;
    impact      : Integer;
    criticality : Integer;
  }

  entity Mitigations : managed {
    key ID       : UUID  @(Core.Computed : true);
    description  : String;
    owner        : String;
    timeline     : String;
    risks        : Association to many Risks on risks.miti = $self;
  }


  entity Student : managed {
    key ID         : UUID  @(Core.Computed : true);
    username       : String(80);
    password       : String(50);
  }

  entity Result : managed {
    key ID       : UUID  @(Core.Computed : true);
    username     : String(80);
    result       : Integer;
  }

  entity Ques : managed {
    key ID       : UUID  @(Core.Computed : true);
    title        : String(250);
    opt1         : String;
    opt2         : String;
    opt3         : String;
    opt4         : String;
  }