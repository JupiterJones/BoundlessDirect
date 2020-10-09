Boundlexx
fetchWorldsWithId: worldId
  "Fetch boundless world info with id worldId using the BoundlexxAPI. "

  GsSecureSocket disableCertificateVerificationOnClient.
  ^ STON
    fromStream:
      (ZnClient new
        get: 'https://api.boundlexx.app/api/v1/worlds/' , worldId asString , '/')
        readStream