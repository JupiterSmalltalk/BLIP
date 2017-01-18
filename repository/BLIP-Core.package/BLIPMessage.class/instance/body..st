as yet unclassified
body: byteArray
	isMine & isMutable
		ifTrue: [body := byteArray]
		ifFalse: [System signal: #CanNotUpdateMessageBody]