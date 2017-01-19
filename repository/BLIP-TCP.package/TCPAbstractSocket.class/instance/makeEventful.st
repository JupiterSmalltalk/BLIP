as yet unclassified
makeEventful
  "WARING: GemStone specific. Should be updated for Pharo.
	Start this socket placing events on the event queue."

  ((self isKindOf: TCPAbstractSocket) or: [ self isActive ])
    ifTrue: [ ProcessorScheduler scheduler whenReadable: self signal: self eventQueue ]