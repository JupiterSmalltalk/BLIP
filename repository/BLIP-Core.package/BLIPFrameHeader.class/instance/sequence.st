as yet unclassified
sequence
	"Sequence is stored in bytes 5 through 8"
	^(self at: 5) * 16r100 + (self at: 6) * 16r100 + (self at: 7) * 16r100 + (self at: 8).