as yet unclassified
logFile

	(logFile == nil) ifTrue: [
		logFile := self getLogFile ].
	^logFile