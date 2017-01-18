as yet unclassified
response
	^response ifNil: [
		self noReply not 
			ifTrue: [response := BLIPResponse new initWithRequest: self]
			ifFalse: [nil]
	]