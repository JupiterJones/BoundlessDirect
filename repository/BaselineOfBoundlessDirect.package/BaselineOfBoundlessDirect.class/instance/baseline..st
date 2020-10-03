baseline
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        baseline: 'Seaside3'
        with: [ 
          spec
            loads: #('Core' 'Development' 'Zinc' 'CI');
            repository: 'github://SeasideSt/Seaside:master/repository' ].
      spec
        package: 'BoundlessDirect-Core' with: [ spec requires: #('Seaside3') ];
        package: 'BoundlessDirect-API-Core'
          with: [ spec requires: #('BoundlessDirect-Core') ];
        package: 'BoundlessDirect-API-Model'
          with: [ spec requires: #('BoundlessDirect-API-Core') ] ]