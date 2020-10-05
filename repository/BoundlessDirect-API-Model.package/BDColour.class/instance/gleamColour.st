Accessing
gleamColour
  "Answer an instance of Color that represents me"

  ^ gleamColour
    ifNil: [ gleamColour := Color fromHexString: (self gleamColourHex copyWithout: $#) ]