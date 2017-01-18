as yet unclassified
open
	((socket := TCPServerSocket newWithEndpoint: self)
		makeServer: 20 atPort: port atAddress: address) == nil ifTrue: [System signal: #CanNotMakeServer].
	self log: 'Socket Listening on ' + 
		(address ifNil: ['0.0.0.0']) asString + 
		':' + port printString.
	self makeReadable.
	(delegate notNil and: [delegate respondsTo: #listenerDidOpen:]) ifTrue: [delegate listenerDidOpen: self].