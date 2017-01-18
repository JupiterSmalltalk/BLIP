as yet unclassified
start
	^self
		initWithPort: (port ifNil: [self class defaultPort]) 
		address: (address ifNil: ['0.0.0.0']);
		installInSessionState;
		log: 'Starting BLIP Service...';
		open;
		log: 'BLIP Service Entering Service Loop';
		eventLoop "Does not return"