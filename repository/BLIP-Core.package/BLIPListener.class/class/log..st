as yet unclassified
log: msg
    | listener |
    ((listener := self current) == nil) ifTrue: [
        ^self ].
    listener log: msg