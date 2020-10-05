Tests
testData
  | abstractModelObject testValue |
  abstractModelObject := BDAbstractModel new.
  self assert: (abstractModelObject data isKindOf: Dictionary).
  testValue := 'VALUE'.
  abstractModelObject data at: #'key' put: testValue.
  self assert: (abstractModelObject data at: #'key') == testValue.
  self assert: abstractModelObject lastUpdated isNil.
  self assert: abstractModelObject dataAge = Duration zero.
  abstractModelObject data: Dictionary new.
  self assert: abstractModelObject lastUpdated ~= Duration zero