as yet unclassified
logAndPrint: aString

    self log: aString.
    self logFile == GsFile stdout
        ifFalse: [ self print: aString ]