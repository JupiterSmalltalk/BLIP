as yet unclassified
disconnect
	stream notNil ifTrue: [
		stream close.
		stream := nil].
	connection notNil ifTrue: [
		connection streamDisconnected: self.
		connection := nil]