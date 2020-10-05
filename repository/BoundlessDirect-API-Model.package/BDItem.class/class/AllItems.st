Accessing
AllItems
  AllItems
    ifNil: [ 
      AllItems := OrderedCollection new.
      self updateAllItems ].
  ^ AllItems