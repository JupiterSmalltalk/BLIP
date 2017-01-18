as yet unclassified
closeLogFile

	( ( (logFile isKindOf: GsFile) and: [ logFile isOpen ] )
		and: [ logFile ~~ Transcript  ] )
			ifTrue: [ logFile flush; close ]