as yet unclassified
closeWithTimeout: timeout
	true ifTrue: [self log: 'Connection closeWithTimeout: ' + self printString + ' status:' + status printString].
	self stopOpenTimer.
	status == TCPConnection kTCPOpening
		ifTrue: [self closed]
		ifFalse: [
			status == TCPConnection kTCPOpen ifTrue: [
				status := TCPConnection kTCPClosing.
				self beginClose.
				self checkIfClosed ifFalse: [
					timeout <= 0.0
						ifTrue: [self disconnect]
				]
			]
		]