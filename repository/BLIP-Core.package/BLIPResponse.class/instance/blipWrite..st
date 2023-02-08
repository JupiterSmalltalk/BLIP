as yet unclassified
blipWrite: object
  | dataStream |
  dataStream := WriteStream on: body.
  object blipWriteOn: dataStream