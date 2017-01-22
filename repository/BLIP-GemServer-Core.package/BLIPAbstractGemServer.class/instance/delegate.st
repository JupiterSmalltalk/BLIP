options
delegate
  "Return the optional delegate, 
	the object that will be sent #handleRequest: to handle a request and produce a response.
	The default delegate is BLIPTestingDelegate"

  ^ self optionAt: #'delegate' ifAbsentPut: [ BLIPTestingDelegate new ]