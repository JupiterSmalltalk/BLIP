as yet unclassified
log: aString

    self logFile
            nextPutAll: DateAndTime now asString;
            nextPutAll: ': ';
            nextPutAll: aString; lf; flush