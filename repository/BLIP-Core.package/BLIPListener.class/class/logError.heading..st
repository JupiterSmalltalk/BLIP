as yet unclassified
logError: errorMessage heading: errorHeading
  | listener |
  (listener := self current) == nil
    ifTrue: [ ^ self ].
  listener logError: errorMessage heading: errorHeading