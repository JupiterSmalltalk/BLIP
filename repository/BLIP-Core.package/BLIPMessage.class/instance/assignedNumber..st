as yet unclassified
assignedNumber: msgNo
	msgNo == 0 ifTrue: [System signal: #MessageAlreadySent].
	number := msgNo.
	isMutable := false.