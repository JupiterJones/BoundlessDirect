Tests
testAccessing
  | colour nativeColour |
  colour := BDColour new
    data: self colourData;
    yourself.
  nativeColour := Color fromHexString: '1b1b1b'.
  self assert: colour id == 1.
  self assert: colour baseColourHex = '#1b1b1b'.
  self assert: colour baseColour = nativeColour.
  self assert: colour gleamColourHex = '#1b1b1b'.
  self assert: colour gleamColour = nativeColour.
  self assert: colour title = 'Black'.
  self assert: (colour titleForLocale: (WALocale fromString: 'fr_FR')) = 'Noir'