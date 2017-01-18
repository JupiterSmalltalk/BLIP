as yet unclassified
meta
	"Compressed is stored in the kBLIPMeta bit of the flags"
	^0 ~~ (self flags bitAnd: BLIPConnection kBLIPMeta)