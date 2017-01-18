as yet unclassified
messageType: messageType
	| type index |
	"MessageType is stored in the first 4 bits of the flags. kBLIPMessage, kBLIPReply or kBLIPError"
	((type := messageType) isKindOf: Symbol) ifTrue: [type := (BLIPConnection kMessageTypes indexOf: messageType) - 1].
	self flags: ((self flags bitAnd: BLIPConnection kBLIPTypeMask bitInvert) bitOr: type)