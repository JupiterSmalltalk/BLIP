as yet unclassified
establishService: aTCPClientSocket
	"Establish a service for aTCPClientSocket."
	aTCPClientSocket isConnected ifFalse: [
		self handleFailure: #TCPSocketIsUnconnected arguments: #(aTCPClientSocket)].
	aTCPClientSocket
		linger: true length: 1;    "*** TODO *** Why 1?"
		server: self.
	tcpEndpoint verbose ifTrue: [
		tcpEndpoint log: 'TCPClientSocketConnectionEstablished from ' + (aTCPClientSocket peerName ifNil: [aTCPClientSocket peerAddress]).
	].
	self serviceBlock value: aTCPClientSocket