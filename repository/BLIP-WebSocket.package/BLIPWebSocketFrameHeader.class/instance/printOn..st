as yet unclassified
printOn: stream
  stream
    nextPutAll: self className asString;
    nextPutAll: ' (';
    nextPutAll: self messageTypeSymbol.	"stream nextPutAll: ' size:'.
	self frameSize printOn: stream.	
	stream nextPutAll: ' version:'.
	self version printOn: stream."
  stream nextPutAll: ' sequence:'.
  self sequence printOn: stream.
  self compressed
    ifTrue: [ stream nextPutAll: ' compressed' ].
  self urgent
    ifTrue: [ stream nextPutAll: ' urgent' ].
  self noReply
    ifTrue: [ stream nextPutAll: ' noReply' ].
  self moreComing
    ifTrue: [ stream nextPutAll: ' moreComing' ].
  self meta
    ifTrue: [ stream nextPutAll: ' meta' ].
  stream nextPut: $)