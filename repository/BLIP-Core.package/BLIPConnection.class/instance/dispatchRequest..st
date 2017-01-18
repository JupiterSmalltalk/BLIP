as yet unclassified
dispatchRequest: request
	| handled |
	GRPlatform current doTransaction: [
		handled := request flags meta
			ifTrue: [self dispatchMetaRequest: request]
			ifFalse: [self dispatcher dispatchMessage: request].
		handled ifFalse: [
			(delegate notNil and: [delegate respondsTo: #connection:receivedRequest:]) ifTrue: [
				handled := delegate connection: self receivedRequest: request
			]
		]
	].
	handled ifFalse: [request respondWithErrorCode: BLIPConnection kLMTPErrorNotFound message: 'No handler was found']