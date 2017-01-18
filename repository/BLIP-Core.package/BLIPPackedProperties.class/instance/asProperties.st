as yet unclassified
asProperties
	| properties length readPtr key value index |
	properties := BLIPProperties new.
	length := self length + 2.
	readPtr := 3.
	[readPtr < length] whileTrue: [
		self readCStringInto: (key := ByteArray new) startingAt: readPtr.
		readPtr := readPtr + key size + 1.
		self readCStringInto: (value := ByteArray new) startingAt: readPtr.
		readPtr := readPtr + value size + 1.
		((key size == 1) and: [(index := key first asInteger) between: 1 and: 31]) ifTrue: [key := BLIPConnection kAbbreviations at: index].
		((value size == 1) and: [(index := value first asInteger) between: 1 and: 31]) ifTrue: [value := BLIPConnection kAbbreviations at: index].
		properties at: key asString put: value asString
	].
	^properties