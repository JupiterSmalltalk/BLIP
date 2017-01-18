as yet unclassified
frameSize
	"Frame size is stored in bytes 11 and 12"
	^(self at: 11) * 16r100 + (self at: 12)