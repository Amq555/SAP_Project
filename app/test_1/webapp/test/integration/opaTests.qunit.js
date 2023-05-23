sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/test1/test/integration/FirstJourney',
		'ns/test1/test/integration/pages/QuestionsList',
		'ns/test1/test/integration/pages/QuestionsObjectPage'
    ],
    function(JourneyRunner, opaJourney, QuestionsList, QuestionsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/test1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheQuestionsList: QuestionsList,
					onTheQuestionsObjectPage: QuestionsObjectPage
                }
            },
            opaJourney.run
        );
    }
);