as yet unclassified
respondWithData: data contentType: contentType
	(self response)
		body: data;
		contentType: contentType;
		send