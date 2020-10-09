Boundlexx
fetchWorldSummaries
  "Fetch all boundless worlds using the BoundlexxAPI"

  | worlds offset limit complete |
  GsSecureSocket disableCertificateVerificationOnClient.
  worlds := OrderedCollection new.
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
              'https://api.boundlexx.app/api/v1/worlds/simple/?offset=' , offset asString
                , '&limit=' , limit asString)
            readStream.
      worlds addAll: (response at: 'results').
      (response at: 'next') ifNil: [ complete := true ].
      offset := offset + limit ].
  ^ worlds