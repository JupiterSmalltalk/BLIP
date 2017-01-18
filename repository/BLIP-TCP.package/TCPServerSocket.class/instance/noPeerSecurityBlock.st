as yet unclassified
noPeerSecurityBlock
    "Answer a one argument Block that given a connected GsSocket will
    answer true only if the peer is the very same machine."

    ^[ :connection | connection peerName = GsSocket getLocalHostName]