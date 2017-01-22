accessing
serverClass
  serverClass == nil
    ifTrue: [ 
      Smalltalk at: #'BLIPWebSocketGemServer' ifPresent: [ :cl | ^ cl ].
      Smalltalk at: #'BLIPGemServer' ifPresent: [ :cl | ^ cl ] ].
  ^ serverClass