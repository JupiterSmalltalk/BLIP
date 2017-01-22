control
startBLIPServer: serverClass delegate: delegateClass on: portNumber
  "This is where the server is actually started. This method does not answer."

  serverClass new
    delegate: delegateClass new;
    startServerOn: portNumber