Class {
	#name : #BaselineOfAWS,
	#superclass : #BaselineOf,
	#category : #BaselineOfAWS
}

{ #category : #baselines }
BaselineOfAWS >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			spec 
				baseline: 'NeoJSON'
				with: [ 
					spec load: #(Core); repository: 'github://svenvc/NeoJSON/repository' ].
			spec 
				baseline: 'XMLParser' 
				with: [ spec load: #(Core); repository: 'github://tblanchard/XML-XMLParser/src' ].
			spec
				package: 'AWS-Core';
				package: 'AWS-DynamoDB' with: [ spec requires: #('AWS-Core') ];
				package: 'AWS-Lambda' with: [ spec requires: #('AWS-Core') ];
				package: 'AWS-S3' with: [ spec requires: #('AWS-Core' 'XMLParser') ];
				package: 'AWS-ElasticTranscoder' with: [ spec requires: #('AWS-Core') ];
				package: 'AWS-STS' with: [ spec requires: #('AWS-Core') ];
				package: 'AWS-CloudFront' with: [ spec requires: #('AWS-Core') ];
				package: 'AWS-SNS' with: [ spec requires: #('AWS-Core' 'XMLParser') ] ].
			spec group: 'default' with: #( 'AWS-DynamoDB' 'AWS-Lambda AWS-S3' 'AWS-ElasticTranscoder' 'AWS-STS' 'AWS-CloudFront AWS-SNS').
			spec group: 'all' with: #(default)
]
