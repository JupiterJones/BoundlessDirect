Accessing
AllColours
  AllColours
    ifNil: [ 
      AllColours := OrderedCollection new.
      self updateAllColours ].
  ^ AllColours