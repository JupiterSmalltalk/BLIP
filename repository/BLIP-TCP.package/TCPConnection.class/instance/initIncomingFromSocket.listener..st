private
initIncomingFromSocket: aSocket listener: listener
	server := listener.
	socket := aSocket.
	self initWithAddress: aSocket address inputStream: aSocket outputStream: aSocket.
	status := TCPConnection kTCPOpen.