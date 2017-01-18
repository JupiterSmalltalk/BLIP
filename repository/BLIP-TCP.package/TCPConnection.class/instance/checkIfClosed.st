private
checkIfClosed
	(status == TCPConnection kTCPClosing) & writer isNil & reader isNil ifTrue: [
		self closed.
		^true
	].
	^false