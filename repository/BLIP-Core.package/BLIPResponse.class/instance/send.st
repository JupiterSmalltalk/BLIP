as yet unclassified
send
	| writer |
	"true ifTrue: [LikeMindsServerAdmin log: 'Response send: ' + self printString]."
	(writer := connection writer) ifNil: [System signal: #CanNotSendMessageConnectionClosed].
	self encode.
	^sent := writer sendMessage: self.