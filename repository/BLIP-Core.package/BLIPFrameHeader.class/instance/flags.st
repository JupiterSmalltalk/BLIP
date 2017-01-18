as yet unclassified
flags
	"Flags are stored in bytes 9 and 10"
	^(self at: 9) * 16r100 + (self at: 10)