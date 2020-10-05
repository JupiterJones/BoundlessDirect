Accessing-Data
localisedStringForKey: key path: path locale: locale
  | localisation |
  localisation := path
    inject: self
    into: [ :dataObject :pathKey | dataObject at: pathKey ].
  ^ (localisation
    at: locale languageName asLowercase
    ifAbsent: [ localisation at: self defaultLocale languageName asLowercase ])
    at: key