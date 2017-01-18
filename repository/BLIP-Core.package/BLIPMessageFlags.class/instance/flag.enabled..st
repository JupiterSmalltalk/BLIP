as yet unclassified
flag: flag enabled: enabled
	enabled
		ifTrue: [
			self flags: (self flags bitOr: flag)]
		ifFalse: [
			self flags: (self flags bitAnd: flag bitInvert)
		]