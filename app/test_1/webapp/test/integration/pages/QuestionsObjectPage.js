sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'ns.test1',
            componentId: 'QuestionsObjectPage',
            entitySet: 'Questions'
        },
        CustomPageDefinitions
    );
});