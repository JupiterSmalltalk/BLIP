as yet unclassified
initWithRequest: req

	super
		initWithConnection: req connection
		isMine: req isMine not
		flags: (BLIPMessageFlags new messageType: BLIPConnection kBLIPReply; yourself)
		number: req number
		body: nil.
	
	isMine ifTrue: [
		isMutable := true.
		self urgent: req urgent.
	].