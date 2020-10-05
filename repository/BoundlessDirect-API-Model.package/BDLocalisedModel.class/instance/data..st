Updating
data: newObject
  "update localisations for more convenient access"

  super data: newObject.
  self localisedStringKeyPaths
    do: [ :localisedStringKeyPath | 
      | localisation |
      localisation := localisedStringKeyPath allButLast
        inject: self
        into: [ :dataObject :pathKey | dataObject at: pathKey ].
      localisation
        ifNotNil: [ 
          localisation
            at: localisedStringKeyPath last
            put:
              ((localisation at: localisedStringKeyPath last)
                inject: Dictionary new
                into: [ :localisationDictionary :localisation | 
                  localisationDictionary
                    at: (localisation at: 'lang') put: localisation;
                    yourself ]) ] ]