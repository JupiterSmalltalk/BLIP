as yet unclassified
stop
	self log: 'BLIP Service Exiting Service Loop';
	turnEventLoopOff;
	log: 'Stopping the BLIP Service';
	close;
	log: 'BLIP Listener has stopped';
	removeFromSessionState