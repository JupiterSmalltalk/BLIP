as yet unclassified
noPeerSecurityBlock
  "Allow connections only from the local host"

  ^ [ :connection | connection peerName = GsSocket getLocalHostName ]