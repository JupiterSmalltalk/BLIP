as yet unclassified
setLength
	"Length is stored in bytes 1 and 2"
	| int |
	int := self size - 2.
	^self 
		at: 1 put: ((int bitShift: -8) \\ 256);
		at: 2 put: (int \\ 256)