as yet unclassified
receive
	reader canRead.
	"Make the Socket readable again"
	self isOpen ifTrue: [self makeReadable]