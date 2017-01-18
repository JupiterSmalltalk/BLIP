as yet unclassified
makeReadable
    ((socket isKindOf: TCPAbstractSocket) or: [socket isActive]) ifTrue:
        [ProcessorScheduler scheduler whenReadable: socket signal: self eventQueue]