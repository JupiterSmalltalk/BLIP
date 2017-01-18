as yet unclassified
handleEvent
    "A client is connecting to the port. Accept the socket. If the
    connection meets security requirements then evaluate the service
    block with it."

    | socket |
	"Make the server readable again"
    self makeEventful.
    (socket := self accept) == nil
        ifTrue: [self handleFailure: #LMTPListenerSocketAcceptFailure arguments: #(self, self lastErrorString)]
        ifFalse:
            [(self isSecureEnough: socket)
                 ifTrue: [self establishService: socket]
                 ifFalse: [self securityViolation: socket]]