as yet unclassified
defaultServiceBlock
    "Answer a one argument block for servicing a connection. The
    default creates a new instance of connectionClass."
	^[:aTCPClientSocket |
		| connection |
		connection := tcpEndpoint connectionClass new 
			initIncomingFromSocket: aTCPClientSocket
			listener: tcpEndpoint.
		aTCPClientSocket endpoint: connection.
		connection delegate: LMModelAPI current. "<- This should be done by some LMTP class"
		tcpEndpoint addConnection: connection.
		connection makeReadable
	]