uploaded metadata
imagesskyPng
	^ WAFileLibraryResource
		filepath: 'images/sky.png'
		mimeType: (WAMimeType main: 'image' sub: 'png')
		cacheDuration: (Duration days: 0 hours: 0 minutes: 30 seconds: 0)
		contents: (GRDelayedSend receiver: self selector: #imagesskyPngContent)