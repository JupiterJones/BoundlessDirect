Accessing
baseColour
  "Answer an instance of Color that represents me"

  ^ baseColour
    ifNil: [ baseColour := Color fromHexString: (self baseColourHex copyWithout: $#) ]