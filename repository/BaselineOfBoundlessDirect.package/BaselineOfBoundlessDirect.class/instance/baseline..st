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
                repository: 'github://SeasideSt/Seaside:master/repository' ];
        baseline: 'Magritte3'
          with: [ 
              spec
                loads: #('Core' 'Tests' 'Seaside');
                repository: 'github://GsDevKit/Magritte3:master/repository' ];
        baseline: 'RenoirSt'
          with: [ 
              spec
                repository: 'github://brunobuzzi/RenoirSt:v4.0.0g/source';
                loads: #('Deployment-Seaside-Extensions') ].
      spec
        package: 'BoundlessDirect-Core'
          with: [ spec requires: #('Seaside3' 'Magritte3') ];
        package: 'BoundlessDirect-API-Core'
          with: [ spec requires: #('BoundlessDirect-Core') ];
        package: 'BoundlessDirect-API-Model'
          with: [ spec requires: #('BoundlessDirect-API-Core') ];
        package: 'BoundlessDirect-API-Model-Tests'
          with: [ spec requires: #('BoundlessDirect-API-Model') ];
        package: 'BoundlessDirect-Web-Core'
          with: [ spec requires: #('RenoirSt' 'BoundlessDirect-API-Model') ] ]