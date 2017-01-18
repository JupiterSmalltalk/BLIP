as yet unclassified
close
	| loop |
	self isOpen ifTrue: [
		self log: 'Closing Listener on Port ' + port printString.
		socket close].
	(delegate notNil and: [delegate respondsTo: #listenerDidClose:]) ifTrue: [delegate listenerDidClose: self].
	connections copy do: [:connection | connection close].
	self closeLogFile