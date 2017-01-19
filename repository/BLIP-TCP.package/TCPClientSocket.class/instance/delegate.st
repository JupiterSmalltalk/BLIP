as yet unclassified
delegate
  "Answer the delegate object that will handle requests from this socket"

  delegate == nil
    ifTrue: [ delegate := self defaultDelegate ].
  ^ delegate