as yet unclassified
dispatcher
	dispatcher ifNil: [
		dispatcher := self dispatcherClass new
		"dispatcher parent: server dispatcher"
	].
	^dispatcher