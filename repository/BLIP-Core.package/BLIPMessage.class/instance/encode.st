as yet unclassified
encode
	"Encode the Properties and Data"
	encodedBody := ByteArray withAll: properties asPackedProperties.

	"Compress the body?"
	self compressed 
		ifFalse: [encodedBody addAll: body asByteArray]
		ifTrue: [encodedBody addAll: body asByteArray compressBytes]