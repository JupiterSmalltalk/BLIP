as yet unclassified
removeFromSessionState
    "Remove this Listener from the session state under the name #BLIPListener"

    | syms listener |
    syms := System sessionStateAt: 1.
    (syms == nil) ifFalse: [
    	(syms includesKey: #BLIPListener) ifTrue: [
        (listener := syms at: #BLIPListener) isOpen ifFalse: [syms removeKey: #BLIPListener]
		]
	]