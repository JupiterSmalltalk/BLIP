as yet unclassified
initWithConnection: conn body: data properties: propertiesDict

	self
		initWithConnection: conn 
		isMine: true 
		flags: (BLIPMessageFlags new messageType: BLIPConnection kBLIPMessage; yourself)
		number: 0 
		body: data.
	isMutable = true.
	properties := propertiesDict