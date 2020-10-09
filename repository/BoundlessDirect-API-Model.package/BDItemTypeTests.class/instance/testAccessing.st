Tests
testAccessing
  | itemType |
  itemType := BDItemType new
    data: self itemTypeData;
    yourself.
  self assert: itemType symbolicId = #'GUI_LIST_TYPE_SOILS'.
  self assert: itemType title = 'Soils'.
  self
    assert: (itemType titleForLocale: (WALocale fromString: 'fr_FR')) = 'Sols'