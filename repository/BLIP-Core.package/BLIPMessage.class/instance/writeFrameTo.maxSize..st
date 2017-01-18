as yet unclassified
writeFrameTo: writer maxSize: maxSize
	| maxToSend lengthToWrite frameHeader  |
	lengthToWrite := encodedBody size - bytesWritten.
	(lengthToWrite <= 0 and: [bytesWritten > 0]) ifTrue: [^false "Done"].
	maxToSend := maxSize - BLIPFrameHeader length.
	lengthToWrite > maxToSend ifTrue: [
		lengthToWrite := maxToSend.
		flags moreComing: true.
	] ifFalse: [flags moreComing: false].
	(frameHeader := BLIPFrameHeader new)
		sequence: number;
		flags: flags flags;
		frameSize: (BLIPFrameHeader length + lengthToWrite).
	"true ifTrue: [LikeMindsServerAdmin log: 'LMTPMessage writeFrame: ' + frameHeader printString + ' encodedBody:' + encodedBody printString]."
	writer writeData: frameHeader.
	lengthToWrite > 0 ifTrue: [
		writer writeData: (encodedBody copyFrom: bytesWritten + 1 to: bytesWritten + lengthToWrite).
		bytesWritten := bytesWritten + lengthToWrite.
	].
"true ifTrue: [LikeMindsServerAdmin log: 'LMTPMessage writeFrame done returning moreComing: ' + flags moreComing printString]."
	^flags moreComing