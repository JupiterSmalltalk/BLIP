accessing
registeredServers
  RegisteredServers == nil
    ifTrue: [ RegisteredServers := OrderedCollection new ].
  ^ RegisteredServers