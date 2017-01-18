as yet unclassified
serviceBlock
    "Answer a one argument block for servicing a connection. The
    argument is the TCPClientSocket connected to a client."

    serviceBlock == nil ifTrue: [serviceBlock := self defaultServiceBlock].
    ^serviceBlock