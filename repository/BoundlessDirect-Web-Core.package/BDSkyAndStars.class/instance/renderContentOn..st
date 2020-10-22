Rendering
renderContentOn: canvas
  canvas div
    class: 'bdSky';
    with: [ canvas canvas class: 'bdStarsCanvas' ].
  canvas document addLoadScript: self starsScript