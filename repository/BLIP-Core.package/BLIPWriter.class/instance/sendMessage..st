as yet unclassified
sendMessage: message
	"true ifTrue: [LikeMindsServerAdmin log: 'Response sendMessage: ' + self printString]."
	self queueMessage: message isNew: true.
	^true