as yet unclassified
frameSize: int2
	"Sequence is stored in bytes 11 and 12"
	^self 
		at: 11 put: ((int2 bitShift: -8) \\ 256);
		at: 12 put: (int2 \\ 256)