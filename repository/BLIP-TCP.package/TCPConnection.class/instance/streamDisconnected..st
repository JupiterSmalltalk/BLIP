as yet unclassified
streamDisconnected: stream
	stream == reader ifTrue: [reader := nil].
	stream == writer ifTrue: [writer := nil].
	reader isNil & writer isNil ifTrue: [self closed]