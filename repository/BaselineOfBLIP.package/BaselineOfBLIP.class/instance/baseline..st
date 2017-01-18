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
          with: [ spec requires: #('BLIP-GemServer-Core' 'BLIP-WebSocket') ].
      spec
        group: 'Core' with: #('BLIP-GemServer-Core');
        group: 'WebSocket' with: #('BLIP-GemServer-WebSocket');
        group: 'All' with: #('Core' 'WebSocket');
        group: 'default' with: #('All') ]