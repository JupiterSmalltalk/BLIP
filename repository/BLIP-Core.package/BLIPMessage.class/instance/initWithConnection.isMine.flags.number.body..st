as yet unclassified
initWithConnection: conn isMine: mine flags: messageFlags number: msgNo body: data
	connection := conn.
	isMine := mine.
	flags := messageFlags.
	number := msgNo.
	isMine ifTrue: [
		data ifNotNil: [body := data].
		properties := BLIPProperties new.
		propertiesAvailable := true.
		complete := true.
	] ifFalse: [
		data ifNotNil: [encodedBody := data].
	]