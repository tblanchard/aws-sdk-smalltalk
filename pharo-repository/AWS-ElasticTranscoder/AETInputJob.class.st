Class {
	#name : #AETInputJob,
	#superclass : #Dictionary,
	#category : #'AWS-ElasticTranscoder-Model'
}

{ #category : #accessing }
AETInputJob >> key [
	^ self at:'Key'
]

{ #category : #accessing }
AETInputJob >> key: key [
	self at:'Key' put: key
]
