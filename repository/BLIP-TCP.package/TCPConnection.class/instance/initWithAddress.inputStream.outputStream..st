private
initWithAddress: ipAddress inputStream: input outputStream: output
	address := ipAddress.
	reader := self readerClass new initWithConnection: self stream: input.
	writer := self writerClass new initWithConnection: self stream: input.