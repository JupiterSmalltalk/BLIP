as yet unclassified
logError: likeMindsError
    | listener |
    ((listener := self current) == nil) ifTrue: [
        ^self ].
    listener logError: likeMindsError