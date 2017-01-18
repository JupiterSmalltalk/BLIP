as yet unclassified
disconnect
	status > kTCPClosed ifTrue: [
		reader disconnect.
		writer disconnect.
		status := TCPConnection kTCPDisconnected
	].
	self stopOpenTimer