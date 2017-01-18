as yet unclassified
moreComing
	"Compressed is stored in the kBLIPMoreComing bit of the flags"
	^0 ~~ (self flags bitAnd: BLIPConnection kBLIPMoreComing)