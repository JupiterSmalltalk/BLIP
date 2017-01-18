as yet unclassified
securityBlock
    "Answer a one argument Block that given a connected GsSocket will
    answer true if the peer meets the security requirements of the
    receiver, else false if there is a security violation."

    securityBlock == nil ifTrue: [securityBlock := self defaultSecurityBlock].
    ^securityBlock