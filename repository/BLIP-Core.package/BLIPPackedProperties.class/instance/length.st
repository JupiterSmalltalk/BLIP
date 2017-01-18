as yet unclassified
length
	"Length is stored in bytes 1 and 2"
	^(self at: 1) * 16r100 + (self at: 2)