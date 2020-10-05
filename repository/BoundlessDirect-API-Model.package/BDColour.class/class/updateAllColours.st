Updating
updateAllColours
  "Fetch all colours via the API, update or create BDColour instances, storing them in AllColours"

  (BDAPI fetchColours at: 'results')
    do: [ :colourData | 
      self AllColours
        detect: [ :colour | colour id = (colourData at: 'game_id') ]
        ifNone: [ 
          self AllColours
            add:
              (BDColour new
                data: colourData;
                yourself) ] ]