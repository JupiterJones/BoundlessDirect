Accessing
AllItemTypes
  AllItemTypes
    ifNil: [ 
      AllItemTypes := OrderedCollection new.
      self updateAllItemTypes ].
  ^ AllItemTypes