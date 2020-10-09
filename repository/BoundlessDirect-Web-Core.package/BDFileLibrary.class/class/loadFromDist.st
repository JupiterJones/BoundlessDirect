Loading
loadFromDist
  "BDFileLibrary loadFromDist"

  (self allSelectors
    select: [ :selector | 
      #(#'uploaded' #'uploaded metadata')
        includes: (self categoryOfSelector: selector) ])
    do: [ :selector | self removeSelector: selector ].
  self removeEmptyCategories.
  self
    recursivelyAddAllFilesIn:
      '/opt/git/JupiterJones/BoundlessDirect/www_root/files/BDFileLibrary'