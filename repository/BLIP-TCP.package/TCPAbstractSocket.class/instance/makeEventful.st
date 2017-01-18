as yet unclassified
makeEventful
	"WARING: GemStone specific. Should be updated for Pharo.
	Update the state of the receiver to participate in the broker
	event handling. This is sent when the client connection is made
	and after every readable event."

    ((self isKindOf: TCPAbstractSocket) or: [self isActive]) ifTrue:
        [ProcessorScheduler scheduler whenReadable: self signal: self eventQueue]