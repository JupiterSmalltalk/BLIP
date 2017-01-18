as yet unclassified
noReply
	"Compressed is stored in the kBLIPNoReply bit of the flags"
	^0 ~~ (self flags bitAnd: BLIPConnection kBLIPNoReply)