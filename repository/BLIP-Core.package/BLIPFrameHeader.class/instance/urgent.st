as yet unclassified
urgent
	"Compressed is stored in the kBLIPUrgent bit of the flags"
	^0 ~~ (self flags bitAnd: BLIPConnection kBLIPUrgent)