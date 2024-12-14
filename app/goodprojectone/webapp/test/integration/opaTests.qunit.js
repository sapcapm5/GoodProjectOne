sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'goodprojectone/test/integration/FirstJourney',
		'goodprojectone/test/integration/pages/POHEADERList',
		'goodprojectone/test/integration/pages/POHEADERObjectPage',
		'goodprojectone/test/integration/pages/POITEMObjectPage'
    ],
    function(JourneyRunner, opaJourney, POHEADERList, POHEADERObjectPage, POITEMObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('goodprojectone') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePOHEADERList: POHEADERList,
					onThePOHEADERObjectPage: POHEADERObjectPage,
					onThePOITEMObjectPage: POITEMObjectPage
                }
            },
            opaJourney.run
        );
    }
);