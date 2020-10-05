Tests
testDictioaryAccessToData
  | abstractModelObject testValue |
  abstractModelObject := BDAbstractModel new.
  self assert: (abstractModelObject data isKindOf: Dictionary).
  testValue := 'VALUE'.
  abstractModelObject at: #'key' put: testValue.
  self assert: (abstractModelObject at: #'key') == testValue.
  self assert: (abstractModelObject at: #'key' ifPresent: [ true ]) == true.
  self assert: (abstractModelObject at: #'key' ifAbsent: [ true ]) == testValue.
  self
    assert: (abstractModelObject at: #'key' ifAbsentPut: [ true ]) == testValue.
  self assert: (abstractModelObject at: #'newKey' ifAbsentPut: [ true ]) == true