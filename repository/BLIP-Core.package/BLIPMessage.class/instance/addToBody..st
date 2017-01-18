as yet unclassified
addToBody: byteArray
	isMine & isMutable
		ifTrue: [byteArray copyFrom: 1 to: byteArray size into: body startingAt: body size + 1]
		ifFalse: [System signal: #CanNotAddToMessageBody]