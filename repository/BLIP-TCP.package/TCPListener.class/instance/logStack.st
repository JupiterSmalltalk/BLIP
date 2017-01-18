as yet unclassified
logStack

    self logFile
        nextPutAll: (GsProcess stackReportToLevel: 100); lf;
        nextPutAll: '-------------------------------------------------';
        lf; flush