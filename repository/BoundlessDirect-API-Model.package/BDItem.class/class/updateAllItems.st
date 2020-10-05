Updating
updateAllItems
  "Fetch all colours via the API, update or create BDColour instances, storing them in AllColours"

  (BDAPI fetchItems at: 'results')
    do: [ :itemData | 
      self AllItems
        detect: [ :item | item id = (itemData at: 'game_id') ]
        ifNone: [ 
          self AllItems
            add:
              (BDItem new
                data: itemData;
                yourself) ] ]