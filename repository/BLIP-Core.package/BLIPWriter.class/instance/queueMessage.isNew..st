as yet unclassified
queueMessage: message isNew: isNew
	| index |
	(message urgent and: [outbox size > 1])
		ifFalse: [outbox addLast: message]
		ifTrue: [
			index := outbox findFirst: [:m | 
				m urgent not and: [isNew & (m bytesWritten == 0)]
			].
			outbox add: message afterIndex: index.	
		].
	"true ifTrue: [LikeMindsServerAdmin log: 'LMTPWriter queueMessage outbox: ' + outbox printString]."
	isNew ifTrue: [outbox size == 1 ifTrue: [self queueIsEmpty]]