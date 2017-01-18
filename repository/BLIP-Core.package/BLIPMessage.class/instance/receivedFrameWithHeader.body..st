as yet unclassified
receivedFrameWithHeader: frameHeader body: data
	| frameType packedProperties |
	(frameType := frameHeader messageType) ~~ flags messageType ifTrue: [flags messageType: frameType].
	encodedBody isNil ifTrue: [encodedBody := data copy] ifFalse: [encodedBody addAll: data].
	properties isNil ifTrue: [
		"Try to decode the properties"
		(packedProperties := BLIPPackedProperties fromBytes: encodedBody) isNil
			ifTrue: [^false]
			ifFalse: [
				encodedBody removeFrom: 1 to: packedProperties size.
				properties := packedProperties asProperties.
				propertiesAvailable = true.
			]
	].
	frameHeader moreComing ifFalse: [
		flags moreComing: false.
		encodedBody size > 0 ifTrue: [
			body := flags compressed
				ifTrue: [encodedBody decompressBytes]
				ifFalse: [encodedBody].
			encodedBody := nil.
		].
		complete := true.
	]