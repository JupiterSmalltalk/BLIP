as yet unclassified
sendRequest: request response: response
	shouldClose ifTrue: [^false].
	request assignedNumber: (numberOfRequestsSent := numberOfRequestsSent + 1).
	response ifNotNil: [
		response assignedNumber: numberOfRequestsSent.
		self reader addPendingResponse: response.
	].
	^self sendMessage: request