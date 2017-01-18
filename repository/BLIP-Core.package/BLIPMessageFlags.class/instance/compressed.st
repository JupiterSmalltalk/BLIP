as yet unclassified
compressed
	"Compressed is stored in the kBLIPCompressed bit of the flags"
	^0 ~~ (self flags bitAnd: BLIPConnection kBLIPCompressed)