as yet unclassified
getLogFile

	| dir pathName |
	pathName := (dir := self defaultDirectory) pathName + dir pathNameDelimiter + self defaultLogFileName.
	^self openLogFile: pathName