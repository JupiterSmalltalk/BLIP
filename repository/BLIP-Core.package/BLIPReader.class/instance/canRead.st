as yet unclassified
canRead
	| headerLeft bytesRead frameError bodyRemaining |
	(headerLeft := BLIPFrameHeader length - currentBytesRead) > 0 ifTrue: [
		(bytesRead := self read: headerLeft into: self currentHeader) > 0 ifTrue: [
			(currentBytesRead := currentBytesRead + bytesRead) < BLIPFrameHeader length ifTrue: [
				"Incomplete Header"
			] ifFalse: [
				(frameError := self validateFrameHeader) ifNotNil: [^self gotError: frameError].
			].
			currentBody size == 0 ifTrue: ["Zero Byte Body" ^self endCurrentFrame].
		]
	] ifFalse: [
		(bodyRemaining := currentBody size + headerLeft) > 0 ifTrue: [
			(bytesRead := self read: bodyRemaining into: currentBody) > 0 ifTrue: [
				currentBytesRead := currentBytesRead + bytesRead.
				bodyRemaining := bodyRemaining - bytesRead.
			]
		].	
		bodyRemaining == 0 ifTrue: [^self endCurrentFrame]
	]