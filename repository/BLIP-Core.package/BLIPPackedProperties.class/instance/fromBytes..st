as yet unclassified
fromBytes: bytes
	| length |
	"What is the length of the properties in the bytes. Answer the packed properties or nil"
	bytes size > 2 ifFalse: [^nil].
	length := ((bytes at: 1) * 16r100 + (bytes at: 2)) + 2.
	bytes size >= length ifTrue: [bytes copyFrom: 1 to: length into: self startingAt: 1].