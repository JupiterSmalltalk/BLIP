as yet unclassified
next: secondsToWait ifNone: defaultObject
	"^(secondsToWait == nil or: [secondsToWait <= 0])
		ifTrue: [self next]
		ifFalse:
			[(valueAvailable waitForSeconds: secondsToWait)
				ifTrue: [contents removeFirst]
				ifFalse: [defaultObject]
			]"