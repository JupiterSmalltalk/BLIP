as yet unclassified
writeData: data
	queue add: data.
	(queue size == 1 and: [stream writeWillNotBlock]) ifTrue: [self canWrite]