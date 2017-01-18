as yet unclassified
handleEvent
	| socket |
	"The client has either connected, is sending data, or has disconnected"
	self isConnected 
		ifTrue: [self handleConnectedEvent]
		ifFalse: [self handleUnconnectedEvent]