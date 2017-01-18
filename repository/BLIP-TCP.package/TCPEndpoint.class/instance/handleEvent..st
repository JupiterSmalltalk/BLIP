as yet unclassified
handleEvent: event
    verbose ifTrue: [
      self log: self className + '->' + event printString].
    event handleEvent.