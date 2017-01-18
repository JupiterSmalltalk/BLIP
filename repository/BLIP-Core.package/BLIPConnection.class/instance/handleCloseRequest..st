as yet unclassified
handleCloseRequest: request
	| denied |

	denied := false.
	(delegate notNil and: [delegate respondsTo: #connectionReceivedCloseRequest:]) ifTrue: [
		denied := delegate connectionReceivedCloseRequest: self
	].
	denied ifTrue: [^request respondWithErrorCode: BLIPConnection kBLIPErrorForbidden message: 'Close request denied'].
	blipClosing := true.
	self close