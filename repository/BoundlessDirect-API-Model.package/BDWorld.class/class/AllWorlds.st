Accessing
AllWorlds
  AllWorlds
    ifNil: [ 
      AllWorlds := OrderedCollection new.
      self updateAllWorlds ].
  ^ AllWorlds