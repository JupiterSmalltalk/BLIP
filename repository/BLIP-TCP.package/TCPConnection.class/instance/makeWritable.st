as yet unclassified
makeWritable
    ((socket isKindOf: TCPAbstractSocket) or: [socket isActive]) ifTrue:
        [ProcessorScheduler scheduler whenWritable: socket signal: self eventQueue]