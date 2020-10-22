Rendering
style
  ^ String
    streamContents: [ :stream | 
      (CascadingStyleSheetBuilder new
        declareRuleSetFor: [ :selector | selector body ]
          with: [ :style | 
              style
                position: #'fixed';
                top: '0px';
                left: '0px';
                bottom: '0px';
                right: '0px' ];
        declareRuleSetFor: [ :selector | selector class: #'bdLogo' ]
          with: [ :style | 
              style
                position: #'fixed';
                top: 0 px;
                left: 0 px;
                height: 20 vh;
                width: 30 vw ];
        declareRuleSetFor: [ :selector | (selector class: #'bdLogo') > selector image ]
          with: [ :style | 
              "style
                width: '500px';
                height: '300px'"
               ];
        build) printOn: stream ]