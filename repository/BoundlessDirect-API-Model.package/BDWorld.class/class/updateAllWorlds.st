Updating
updateAllWorlds
  "Fetch all worlds via the API, update or create BDWorld instances, storing them in AllWorlds"

  BDAPI fetchWorlds
    do: [ :worldData | 
      (self AllWorlds
        detect: [ :item | item id = (worldData at: 'id') ]
        ifNone: [ self AllWorlds add: BDWorld new ]) data: worldData ]