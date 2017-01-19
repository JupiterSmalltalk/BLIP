as yet unclassified
logError: errorMessage
  | listener |
  (listener := self current) == nil
    ifTrue: [ ^ self ].
  listener logError: errorMessage