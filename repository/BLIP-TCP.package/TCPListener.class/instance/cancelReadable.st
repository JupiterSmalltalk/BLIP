as yet unclassified
cancelReadable
    ((socket isKindOf: TCPAbstractSocket) or: [socket isActive]) ifTrue:
        [ProcessorScheduler scheduler cancelWhenReadable: socket signal: eventQueue]