as yet unclassified
initialize
	super initialize.
	eventQueue := TCPEventQueue new.
	eventLoopIsOn := false.
	connections := Array new.