as yet unclassified
installInSessionState
	"TODO Support Pharo - this is GemStone specific"
    "Install this Listener in the  session state under the name #BLIPListener - there can be only be one LMTPListener per gem"

    | syms |
    syms := System sessionStateAt: 1.
    (syms == nil) ifTrue: [
        System sessionStateAt: 1 put: (syms := GRSmallDictionary new) ].
    (syms includesKey: #BLIPListener) ifTrue: [
        (syms at: #BLIPListener) == self ifTrue: [ ^self ].
        (syms at: #BLIPListener) close ].
    syms at: #BLIPListener put: self