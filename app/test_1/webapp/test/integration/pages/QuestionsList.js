sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'ns.test1',
            componentId: 'QuestionsList',
            entitySet: 'Questions'
        },
        CustomPageDefinitions
    );
});