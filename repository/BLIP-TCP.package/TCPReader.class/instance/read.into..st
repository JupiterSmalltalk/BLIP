as yet unclassified
read: maxBytes into: aByteArray
    "for reading from TCP streams"
	| readlen |
	(readlen := stream read: maxBytes into: aByteArray) == nil ifTrue: [self gotError].
	true ifTrue: [ 
		connection log: self className + ' reading ' + readlen printString + ' bytes:'.
		connection log: self className + (aByteArray copyFrom: 1 to: (50 min: readlen)) printString
	].
	^readlen