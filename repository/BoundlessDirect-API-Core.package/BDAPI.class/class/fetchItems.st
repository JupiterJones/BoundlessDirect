Boundlexx - Colours
fetchItems
  "Fetch all boundless colours using the BoundlexxAPI"

  | items offset limit complete |
  GsSecureSocket disableCertificateVerificationOnClient.
  items := OrderedCollection new.
  offset := 0.
  limit := 500.
  complete := false.
  [ complete ]
    whileFalse: [ 
      | response |
      response := STON
        fromStream:
          (ZnClient new
            get:
              'https://api.boundlexx.app/api/v1/items/?offset=' , offset asString , '&limit='
                , limit asString)
            readStream.
      items addAll: (response at: 'results').
      (response at: 'next') ifNil: [ complete := true ].
      offset := offset + limit ].
  ^ items