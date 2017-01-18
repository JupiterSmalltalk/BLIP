as yet unclassified
dispatchResponse: response
	(delegate notNil and: [delegate respondsTo: #connection:receivedResponse:]) ifTrue: [
		delegate connection: self receivedResponse: response
	]