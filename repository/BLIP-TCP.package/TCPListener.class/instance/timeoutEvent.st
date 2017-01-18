as yet unclassified
timeoutEvent
	timeoutEvent == nil ifTrue: [timeoutEvent := self defaultTimeoutEvent].
    ^timeoutEvent