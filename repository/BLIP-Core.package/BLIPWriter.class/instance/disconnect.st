as yet unclassified
disconnect
	outbox do: [:message | message connectionClosed].
	super disconnect