private
closeTimeoutExpired
	status == TCPConnection kTCPClosing ifTrue: [self disconnect]