accessing
registerServer: aBLIPRunServerGems
  self registeredServers
    remove: [ :server | server name == aBLIPRunServerGems name ]
    ifAbsent: [  ].
  self registeredServers add: aBLIPRunServerGems