accessing
portString
  ^ String
    streamContents: [ :stream | 
      stream nextPut: $".
      self ports
        do: [ :portNumber | stream nextPutAll: portNumber greaseString ]
        separatedBy: [ stream nextPut: $  ].
      stream nextPut: $" ]