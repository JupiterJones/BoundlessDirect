Tests
testAccessing
  | item nativeColour |
  item := BDItem new
    data: self itemData;
    yourself.
  self assert: item id == 9427.
  self assert: item symbolicId = #'ITEM_TYPE_SOIL_SILTY_COMPACT'.
  self assert: item symbolicName = #'SOIL_SILTY_COMPACT'.
  self
    assert:
      item description
        =
          'A compressed block of powdery Soil. Nice and solid, could be a useful Ingredient. '.
  self assert: item title = 'Compact Silt'.
  self
    assert:
      (item titleForLocale: (WALocale fromString: 'fr_FR')) = 'Limon compact'