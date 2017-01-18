as yet unclassified
messageType
	"MessageType is stored in the first 4 bits of the flags"
	^self flags bitAnd: BLIPConnection  kBLIPTypeMask