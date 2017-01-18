as yet unclassified
defaultDirectory
	"Logs to the default unix tmp directory. TODO - Support Windows (if there's any point in supporting a dead horse)"
    ^FileDirectory on: '/tmp'