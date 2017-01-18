as yet unclassified
bodyString: string
	isMine & isMutable
		ifTrue: [
			body := string encodeAsUTF8.
			self contentType: 'text/plain; charset=UTF-8'
		] ifFalse: [System signal: #CanNotUpdateMessageBodyString]