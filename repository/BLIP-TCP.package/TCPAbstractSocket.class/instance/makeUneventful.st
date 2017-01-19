as yet unclassified
makeUneventful
  "WARING: GemStone specific. Should be updated for Pharo.
	Stop this socket placing events on the event queue."

  ((self isKindOf: TCPAbstractSocket) or: [ self isActive ])
    ifTrue: [ ProcessorScheduler scheduler cancelWhenReadable: self signal: self eventQueue ]