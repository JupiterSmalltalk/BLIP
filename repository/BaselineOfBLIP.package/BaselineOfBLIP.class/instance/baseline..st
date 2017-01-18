baseline
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        package: 'BLIP-TCP';
        package: 'BLIP-Core' with: [ spec requires: #('BLIP-TCP') ];
        package: 'BLIP-WebSocket' with: [ spec requires: #('BLIP-Core') ] ]