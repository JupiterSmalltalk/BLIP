as yet unclassified
handleConnectedEvent
	self readyForRead ifTrue: [
		tcpEndpoint log: '******* Starting request processing.'.
		tcpEndpoint receive.
		tcpEndpoint log: '******* Ended request processing.'.
	].