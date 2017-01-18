as yet unclassified
dispatchMetaRequest: request
	request profile = BLIPConnection kBLIPProfileCloseConnection ifTrue: [
		self handleCloseRequest: request.
		^true
	].
	^false