using TestService from './test-service';

annotate TestService.Questions with {
	Question    @title: 'Question';
	A1          @title: 'Option 1';
	A2          @title: 'Option 2';
	A3          @title: 'Option 3';
	A4          @title: 'Option 4';
	Correct     @title: 'Correct Option';
}
/*
annotate RiskService.Mitigations with {
	ID @(
		UI.Hidden,
		Common: {
		Text: description
		}
	);
	description  @title: 'Description';
	owner        @title: 'Owner';
	timeline     @title: 'Timeline';
	risks        @title: 'Risks';
}
*/ 

annotate TestService.Questions with @(
	UI: {
		HeaderInfo: {
			TypeName: 'Questions',
			TypeNamePlural: 'Questions',
			Title          : {
                $Type : 'UI.DataField',
                Value : 'This is Title'
            },
			Description : {
				$Type: 'UI.DataField',
				Value: 'Description !!!!'
			}
		},
		SelectionFields: [Question],
		LineItem: [
			{Value: Question},
			{Value: A1},
			{
				Value: A2,
			},
			{
				Value: A3,
			},
			{
				Value: A4,
			}
		],
		Facets: [
			{$Type: 'UI.ReferenceFacet', Label: 'Main', Target: '@UI.FieldGroup#Main'}
		],
		FieldGroup#Main: {
			Data: [
				{Value: Question},
			    {
					Value: A1,
				},
				{
					Value: A2,
				},
				{
					Value: A3,
				},
				{
					Value: A4,
				},
				{
					Value: Correct,
				},
			]
		}
	},
) {

};

/*
annotate RiskService.Risks with {
	miti @(
		Common: {
			//show text, not id for mitigation in the context of risks
			Text: miti.description  , TextArrangement: #TextOnly,
			ValueList: {
				Label: 'Mitigations',
				CollectionPath: 'Mitigations',
				Parameters: [
					{ $Type: 'Common.ValueListParameterInOut',
						LocalDataProperty: miti_ID,
						ValueListProperty: 'ID'
					},
					{ $Type: 'Common.ValueListParameterDisplayOnly',
						ValueListProperty: 'description'
					}
				]
			}
		}
	);
}

*/