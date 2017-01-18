as yet unclassified
version: int4
	"Version is stored in bytes 1 through 4"
	^self 
		at: 1 put: ((int4 bitShift: -24) \\ 256);
		at: 2 put: ((int4 bitShift: -16) \\ 256);
		at: 3 put: ((int4 bitShift: -8) \\ 256);
		at: 4 put: (int4 \\ 256)