as yet unclassified
eventLoop
	| event timeout |
	self turnEventLoopOn.
	[timeout := self eventTimeout.
	event := 
		timeout < 0
			ifTrue: [self eventQueue next]
			ifFalse:
				[self eventQueue
					next: timeout
					ifNone: self timeoutEvent].
	self handleEvent: event.
	Processor yield.
	self isEventLoopOn]
		untilFalse.