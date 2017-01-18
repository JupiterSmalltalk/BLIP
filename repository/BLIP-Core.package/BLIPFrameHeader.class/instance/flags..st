as yet unclassified
flags: int2
	"Sequence is stored in bytes 9 and 10"
	^self 
		at: 9 put: ((int2 bitShift: -8) \\ 256);
		at: 10 put: (int2 \\ 256)