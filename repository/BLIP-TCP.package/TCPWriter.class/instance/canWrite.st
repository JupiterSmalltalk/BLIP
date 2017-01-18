as yet unclassified
canWrite
	| lengthToWrite bytesWritten |
	currentData size == 0 ifTrue: [
		queue size == 0 ifTrue: [^self queueIsEmpty]. "this may call -writeData, which will call canWrite again"
		currentData := queue removeFirst.
		currentDataPosition := 0.
	].
	lengthToWrite := currentData size - currentDataPosition.
	true ifTrue: [connection log: self className + ' canWrite currentDataPosition:' + currentDataPosition printString + ' currentData size:' + currentData size printString + ' lengthToWrite:' + lengthToWrite printString + ' queue:' + queue printString].
	(bytesWritten := stream write: lengthToWrite from: currentData startingAt: currentDataPosition + 1) == nil 
		ifTrue: [^self gotError].
	true ifTrue: [connection log: self className + ' written ' + bytesWritten printString + ' bytes'].
	bytesWritten < lengthToWrite 
		ifTrue: [currentDataPosition := currentDataPosition + bytesWritten]
		ifFalse: [currentData size: 0]