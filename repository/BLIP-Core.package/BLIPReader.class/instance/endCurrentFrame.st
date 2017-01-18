as yet unclassified
endCurrentFrame
	"A frame has been received"
	self receivedFrameWithHeader: currentHeader body: currentBody.
	currentHeader clear.
	currentBody size: 0.
	currentBytesRead := 0.