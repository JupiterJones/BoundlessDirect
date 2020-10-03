baseline
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        package: 'BoundlessDirect-Core';
        package: 'BoundlessDirect-API-Core'
          with: [ spec requires: #('BoundlessDirect-Core') ];
        package: 'BoundlessDirect-API-Model'
          with: [ spec requires: #('BoundlessDirect-API-Core') ] ]