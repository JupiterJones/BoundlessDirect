Components
skyAndStars
  ^ self componentAt: #'skyAndStars' ifAbsentPut: [ BDSkyAndStars new ]