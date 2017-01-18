as yet unclassified
sequence: int4
	"Sequence is stored in bytes 5 through 8"
	^self 
		at: 5 put: ((int4 bitShift: -24) \\ 256);
		at: 6 put: ((int4 bitShift: -16) \\ 256);
		at: 7 put: ((int4 bitShift: -8) \\ 256);
		at: 8 put: (int4 \\ 256)