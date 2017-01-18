as yet unclassified
initialize
	super initialize.
	currentBytesRead := 0.
	numRequestsReceived := 0.
	currentHeader := BLIPFrameHeader new.
	currentBody := ByteArray new.
	pendingRequests := GRSmallDictionary new.