running script
executeGemCommand: command
  "runBLIPGems <start|stop|restart> <serverName> <serverClass> <delegateClass> <port(s)>"

  | commandLine |
  self regiseredServers
    do: [ :server | 
      Transcript
        cr;
        show: '---' , command , ' BLIP gems' , ' (';
        show: TimeStamp now printString;
        show: ')'.
      commandLine := (GsFile _expandEnvVariable: 'BLIP' isClient: false)
        , '/bin/runBLIPGems ' , command , ' ' , self server name , ' '
        , server serverClass , ' ' , server delegateClass , ' '
        , self server portString.
      Transcript
        cr;
        show: (System performOnServer: commandLine) withSqueakLineEndings.
      Transcript
        cr;
        show: '---Finished BLIP gems ' , command , ' (';
        show: TimeStamp now printString;
        show: ')' ]