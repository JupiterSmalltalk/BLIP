as yet unclassified
receivedFrameWithHeader: header body: body
	| type message |
	(type := header messageType) == BLIPConnection kBLIPMessage ifTrue: [
		"Get Request"
		(message := self requestWithFrameHeader: header body: body) == false ifTrue: [^false].
	] ifFalse: [
		type == BLIPConnection kBLIPReply ifTrue: [
			"Response - Nothing to do here"
		] ifFalse: [
			type == BLIPConnection kBLIPError ifTrue: [
				"Get Error"
				message := self errorWithFrameHeader: header body: body.
			] ifFalse: [
			"Unknown Type - Just ignore for now"
			]
		]
	].
	^true