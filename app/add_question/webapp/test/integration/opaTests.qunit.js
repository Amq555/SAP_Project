sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/addquestion/test/integration/FirstJourney',
		'ns/addquestion/test/integration/pages/QuestionsObjectPage'
    ],
    function(JourneyRunner, opaJourney, QuestionsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/addquestion') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheQuestionsObjectPage: QuestionsObjectPage
                }
            },
            opaJourney.run
        );
    }
);