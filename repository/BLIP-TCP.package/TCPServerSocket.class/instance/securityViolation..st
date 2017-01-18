as yet unclassified
securityViolation: aTCPClientSocket
    "Respond to a security violation which resulted in a refused
    connection to aSmfClientSocket."

    tcpEndpoint log: 'TCPListenerSocketSecurityViolation from ' + aTCPClientSocket peerName.
    aTCPClientSocket close    "Errors should be handled by the receiver."