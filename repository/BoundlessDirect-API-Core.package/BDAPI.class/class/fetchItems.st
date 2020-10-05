Boundlexx - Colours
fetchItems
  "Fetch all boundless colours using the BoundlexxAPI"

  GsSecureSocket disableCertificateVerificationOnClient.
  ^ STON
    fromStream:
      (ZnClient new get: 'https://api.boundlexx.app/api/v1/items/?limit=9999')
        readStream