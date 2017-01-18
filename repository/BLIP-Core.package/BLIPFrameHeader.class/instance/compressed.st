as yet unclassified
compressed
	"Compressed is stored in the kBLIP_Compressed bit of the flags"
	^0 ~~ (self flags bitAnd: BLIPConnection kBLIPCompressed)