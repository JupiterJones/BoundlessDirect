Boundlexx
fetchWorlds
  "Fetch all boundless worlds using the BoundlexxAPI. Since there are a lot of worlds, and to be nice to the BoundlexxAPI, pause 1 second after each request."

  | worldSummaries worlds offset limit complete |
  GsSecureSocket disableCertificateVerificationOnClient.
  worldSummaries := self fetchWorldSummaries.
  worlds := OrderedCollection new.
  worldSummaries
    do: [ :worldSummary | 
      | response |
      response := self fetchWorldsWithId: (worldSummary at: 'id').
      worlds add: response.
      Transcript
        show: 'Fetched world "' , (response at: 'display_name') , '"';
        cr.
      GRPlatform current doCommitTransaction.
      (Delay forSeconds: 1) wait ].
  ^ worlds