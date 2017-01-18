as yet unclassified
properties: properties
	| key value index |
	self size: 2.
	properties associationsDo: [:property |
		key := property key.
		value := property value.
		(index := BLIPConnection kAbbreviations indexOf: property key) ~~ 0 ifTrue: [key := (Character value: index) asString].
		(index := BLIPConnection kAbbreviations indexOf: property value) ~~ 0 ifTrue: [value := (Character value: index) asString].
		self
			nextPutCString: key;
			nextPutCString: value.
	].
	self setLength