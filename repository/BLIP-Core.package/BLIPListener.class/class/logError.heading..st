as yet unclassified
logError: likeMindsError heading: errorHeading
    | listener |
    ((listener := self current) == nil) ifTrue: [
        ^self ].
    listener logError: likeMindsError heading: errorHeading