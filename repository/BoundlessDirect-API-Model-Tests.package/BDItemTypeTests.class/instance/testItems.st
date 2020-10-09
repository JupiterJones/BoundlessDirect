Tests
testItems
  | itemType item1 item2 |
  itemType := BDItemType new
    data: self itemTypeData;
    yourself.
  item1 := BDItem new.
  item2 := BDItem new.
  self assert: itemType items isEmpty.
  itemType addItem: item1.
  self assert: itemType items size = 1.
  itemType addItem: item1.
  self assert: itemType items size = 1.
  itemType addItem: item2.
  self assert: itemType items size = 2