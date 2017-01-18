as yet unclassified
printOn: stream
	stream nextPutAll: 'BLIPMessageFlags ('.
	self compressed ifTrue: [stream nextPutAll: ' compressed'].
	self urgent ifTrue: [stream nextPutAll: ' urgent'].
	self noReply ifTrue: [stream nextPutAll: ' noReply'].
	self moreComing ifTrue: [stream nextPutAll: ' moreComing'].
	self meta ifTrue: [stream nextPutAll: ' meta'].
	stream nextPut: $)