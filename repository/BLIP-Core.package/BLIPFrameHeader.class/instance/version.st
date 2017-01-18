as yet unclassified
version
	"Version is stored in bytes 1 through 4"
	^(self at: 1) * 16r100 + (self at: 2) * 16r100 + (self at: 3) * 16r100 + (self at: 4).