as yet unclassified
current
	"TODO Support Pharo"
	| syms |
	syms := System sessionStateAt: 1.
	(syms == nil) ifTrue: [ ^nil ].
	^syms at: #BLIPListener otherwise: nil.