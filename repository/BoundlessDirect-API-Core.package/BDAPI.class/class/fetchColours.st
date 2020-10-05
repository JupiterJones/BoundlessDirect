Boundlexx - Colours
fetchColours
  "Fetch all boundless colours using the BoundlexxAPI"

  GsSecureSocket disableCertificateVerificationOnClient.
  ^ STON
    fromStream:
      (ZnClient new get: 'https://api.boundlexx.app/api/v1/colors/?limit=255')
        readStream