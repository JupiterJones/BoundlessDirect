Accessing
dataAge
  "Answer the duration since I was lastUpdated, or a zero diration if no lastUpdated time"

  lastUpdated ifNil: [ ^ Duration zero ].
  ^ Time now - self lastUpdated