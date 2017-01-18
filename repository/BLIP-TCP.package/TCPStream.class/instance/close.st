as yet unclassified
close
	"true ifTrue: [LikeMindsServerAdmin log: 'Stream close ' + self printString]."
	shouldClose ifFalse: [shouldClose := true].
	self isBusy ifTrue: [^false].
	connection streamCanClose: self.
	^true