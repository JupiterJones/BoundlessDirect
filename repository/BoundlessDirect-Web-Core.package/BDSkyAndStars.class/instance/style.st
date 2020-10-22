Rendering
style
  ^ String
    streamContents: [ :stream | 
      (CascadingStyleSheetBuilder new
        declareRuleSetFor: [ :selector | selector class: #'bdSky' ]
          with: [ :style | 
              style
                position: #'fixed';
                top: 0 px;
                left: 0 px;
                bottom: 0 px;
                right: 0 px ];
        declareRuleSetFor: [ :selector | selector class: #'bdStarsCanvas' ]
          with: [ :style | 
              style
                width: 100 percent;
                height: 100 percent ];
        build) printOn: stream ]