as yet unclassified
readCStringInto: result startingAt: index
	^self 
		copyFrom: index
		to: (self indexOf: 0 startingAt: index) - 1
		into: result
		startingAt: 1