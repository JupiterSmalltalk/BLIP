as yet unclassified
send
	self encode.
	(connection writer sendRequest: self response: self response) 
		ifTrue: [sent := true]
		ifFalse: [response := nil].
	^response