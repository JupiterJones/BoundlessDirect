Updating
updateAllItemTypes
  "BDItemType's are build from BDItem's"

  BDItem AllItems
    do: [ :item | 
      item itemTypeData
        ifNotNil: [ 
          item
            itemType:
              ((self AllItemTypes
                detect: [ :itemType | itemType symbolicId = (item itemTypeData at: 'string_id') asSymbol ]
                ifNone: [ self AllItemTypes add: BDItemType new ])
                data: item itemTypeData;
                addItem: item;
                yourself) ] ]