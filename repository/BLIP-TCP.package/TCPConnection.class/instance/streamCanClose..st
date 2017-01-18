as yet unclassified
streamCanClose: stream
	reader isActive not & writer isActive not ifTrue: [
		reader disconnect.
		writer disconnect.
	]