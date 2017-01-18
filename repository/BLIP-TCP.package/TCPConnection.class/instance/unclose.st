private
unclose
	status == TCPConnection kTCPClosing ifTrue: [
		reader unclose.
		writer unclose.
		self stopCloseTimer.
		status := TCPConnection kTCPOpen.
	]