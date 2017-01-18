as yet unclassified
requestWithFrameHeader: header body: body
	| request sequence complete |
	complete := header moreComing not.
	(request := pendingRequests at: (sequence := header sequence) ifAbsent: [nil]) notNil ifTrue: [
		complete ifTrue: [pendingRequests removeKey: sequence].
	] ifFalse: [
		(sequence == (numRequestsReceived + 1)) ifTrue: [
			request := BLIPRequest new 
				initWithConnection: connection
				isMine: false
				flags: (BLIPMessageFlags withFlags: header flags)
				number: sequence
				body: nil.
			complete ifFalse: [pendingRequests at: sequence put: request].
			numRequestsReceived := numRequestsReceived + 1.
		] ifFalse: [
			"Something is wrong - Error"
			"true ifTrue: [LikeMindsServerAdmin log: 'ERROR: UnexpectedMessageSequence']."
			^self gotError: #UnexpectedMessageSequence
		]
	].
	(request receivedFrameWithHeader: header body: body) == false ifTrue: [
		"true ifTrue: [LikeMindsServerAdmin log: 'ERROR: SomethingWentWrong_DontKnowWhat']."
		^self gotError: #SomethingWentWrongDontKnowWhat
	].
	complete ifTrue: [connection dispatchRequest: request].
	^request