baseline
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        package: 'BLIP-TCP';
        package: 'BLIP-Core' with: [ spec requires: #('BLIP-TCP') ];
        package: 'BLIP-WebSocket' with: [ spec requires: #('BLIP-Core') ];
        package: 'BLIP-GemServer-Core' with: [ spec requires: #('BLIP-Core') ];
        package: 'BLIP-GemServer-WebSocket'
          with: [ spec requires: #('BLIP-GemServer-Core' 'BLIP-WebSocket') ];
        package: 'BLIP-Tests-TCP' with: [ spec requires: #('BLIP-TCP') ];
        package: 'BLIP-Tests-Core' with: [ spec requires: #('BLIP-Core') ];
        package: 'BLIP-Tests-WebSocket'
          with: [ spec requires: #('BLIP-WebSocket') ];
        package: 'BLIP-Tests-GemServer-Core'
          with: [ spec requires: #('BLIP-GemServer-Core') ];
        package: 'BLIP-Tests-GemServer-WebSocket'
          with: [ spec requires: #('BLIP-GemServer-WebSocket') ].
      spec
        group: 'Core' with: #('BLIP-Core');
        group: 'Core-Server' with: #('BLIP-GemServer-Core');
        group: 'WebSocket' with: #('BLIP-WebSocket');
        group: 'WebSocket-Server' with: #('BLIP-GemServer-WebSocket');
        group: 'Tests-Core'
          with:
            #('BLIP-Tests-TCP' 'BLIP-Tests-Core' 'BLIP-Tests-GemServer-Core');
        group: 'Tests-WebSocket'
          with: #('BLIP-Tests-WebSocket' 'BLIP-Tests-GemServer-WebSocket');
        group: 'All' with: #('Core-Server' 'WebSocket-Server');
        group: 'All-Tests' with: #('Tests-Core' 'Tests-WebSocket');
        group: 'default' with: #('All' 'All-Tests') ]