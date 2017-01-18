as yet unclassified
validateFrameHeader
	currentHeader version == BLIPFrameHeader protocolVersion ifFalse: [^'IncorrectProtocolVersion'].
	currentHeader frameSize < BLIPFrameHeader length ifTrue: [^'Impossibly Short'].
	currentBody size: currentHeader frameSize - BLIPFrameHeader length.
	^nil