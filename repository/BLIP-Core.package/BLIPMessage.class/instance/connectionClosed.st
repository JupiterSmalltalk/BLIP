as yet unclassified
connectionClosed
	isMine ifTrue: [
		bytesWritten := 0.
		flags moreComing: false
	]