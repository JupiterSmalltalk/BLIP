as yet unclassified
lmtpWrite: object
	| dataStream |
	dataStream := WriteStream on: body.
	object blipWriteOn: dataStream