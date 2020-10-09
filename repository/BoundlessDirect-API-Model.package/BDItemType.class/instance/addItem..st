Actions
addItem: item
  "If this item is not in the collection, add it"

  (items includes: item)
    ifFalse: [ items add: item ]