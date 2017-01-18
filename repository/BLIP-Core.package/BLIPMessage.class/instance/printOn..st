as yet unclassified
printOn: aStream
	aStream
		nextPutAll: self class name;
		nextPutAll: ' (size: '.
	body size printOn: aStream.
	aStream nextPutAll: ' flags: '.
	flags printOn: aStream.
	aStream nextPutAll: ' properites: '.
	properties printOn: aStream.
	aStream nextPutAll: ')'