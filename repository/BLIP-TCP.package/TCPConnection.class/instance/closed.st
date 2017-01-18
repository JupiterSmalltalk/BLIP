private
closed
	| previousStatus |
	true ifTrue: [self log: 'Connection _closed ' + self printString].
	(status ~~ TCPConnection kTCPClosed) & (status ~~ TCPConnection kTCPDisconnected) ifTrue: [
		previousStatus := status.
		status := previousStatus == TCPConnection kTCPClosing
			ifTrue: [TCPConnection kTCPClosed]
			ifFalse: [TCPConnection kTCPDisconnected].
		previousStatus == TCPConnection kTCPOpening ifTrue: [
			(delegate notNil and: [delegate respondsTo: #connection:failedToOpen:]) ifTrue: [
				delegate connection: self failedToOpen: self getError
			]
		] ifFalse: [
			(delegate notNil and: [delegate respondsTo: #connectionDidClose:]) ifTrue: [
				delegate connectionDidClose: self
			]
		].
		self stopOpenTimer.
		self stopCloseTimer.
		server removeConnection: self.
	]