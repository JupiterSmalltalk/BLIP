as yet unclassified
nextPutCString: cString
	self
		addAll: cString afterIndex: self size;
		addLast: 0