accessing
delegateClass
  delegateClass == nil
    ifTrue: [ Smalltalk at: #'BLIPAbstractDelegate' ifPresent: [ :cl | ^ cl ] ].
  ^ delegateClass