BLIPRunServerGems

This class is responsible for registering the list of BLIP servers, the ports and adaptors that should be started on demand.

Each server name registered is unique in the collection of RegisteredServers. ie. If you register a new server with a name that already exists in the collection of RegisteredServers, it will replace the existing one.