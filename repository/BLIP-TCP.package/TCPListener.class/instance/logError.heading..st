as yet unclassified
logError: aLikeMindsError heading: errorHeadingString

    self logFile
        nextPutAll: DateAndTime now asString; nextPutAll: errorHeadingString; lf;
        nextPutAll: aLikeMindsError printString; lf;
        lf; flush.
    self verbose ifTrue: [
        self logStack ]