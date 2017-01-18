as yet unclassified
handleEvent
    "Give each object a chance to perform. Methods should execute
    quickly and return."
  self objects do: [ :each | each handleTimeoutEvent]