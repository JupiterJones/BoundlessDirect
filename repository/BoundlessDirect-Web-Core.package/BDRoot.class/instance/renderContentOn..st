Rendering
renderContentOn: canvas
  canvas render: self skyAndStars.
  canvas div
    class: 'bdLogo';
    with: [ 
          canvas image
            class: 'next-particle';
            url: BDFileLibrary / #'imageslogoPng';
            attributeAt: 'data-particle-gap' put: 1;
            attributeAt: 'data-width' put: '500';
            attributeAt: 'data-height' put: '200';
            attributeAt: 'data-min-width' put: '60%';
            attributeAt: 'data-min-height' put: '60%';
            attributeAt: 'data-gravity' put: 0.06;
            attributeAt: 'data-mouse-force' put: 30;
            attributeAt: 'data-noise' put: 2;
            attributeAt: 'data-init-position' put: 'none';
            attributeAt: 'data-init-direction' put: 'none';
            attributeAt: 'data-fade-position' put: 'none';
            attributeAt: 'data-fade-direction' put: 'none';
            script: self logoScript ]