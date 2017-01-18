as yet unclassified
cancelWritable
    ((socket isKindOf: TCPAbstractSocket) or: [socket isActive]) ifTrue:
        [ProcessorScheduler scheduler cancelWhenWritable: socket signal: self eventQueue]