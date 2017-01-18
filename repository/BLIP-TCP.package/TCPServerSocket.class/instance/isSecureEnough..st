as yet unclassified
isSecureEnough: aTCPClientSocket
    "Answer true if the peer of aTCPClientSocket meets the security
    requirements of the receiver."

    ^self securityBlock value: aTCPClientSocket