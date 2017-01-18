as yet unclassified
meta
	"Compressed is stored in the kLMTP_Meta bit of the flags"
	^0 ~~ (self flags bitAnd: BLIPConnection kBLIPMeta)