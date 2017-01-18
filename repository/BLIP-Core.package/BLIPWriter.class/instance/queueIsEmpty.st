as yet unclassified
queueIsEmpty
	| message frameSize |
	outbox size > 0 ifTrue: [
		message := outbox removeFirst.
		frameSize := BLIPConnection kDefaultFrameSize.
		(message urgent or: [outbox size > 0 and: [outbox first urgent]]) ifTrue: [frameSize := frameSize * 4].
		(message writeFrameTo: self maxSize: frameSize) 
			ifTrue: [self queueMessage: message isNew: false]
			
	]