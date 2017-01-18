as yet unclassified
flags: int2
	^self 
		at: 1 put: ((int2 bitShift: -8) \\ 256);
		at: 2 put: (int2 \\ 256)