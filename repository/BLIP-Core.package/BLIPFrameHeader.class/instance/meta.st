as yet unclassified
meta
  "Compressed is stored in the kBLIP_Meta bit of the flags"

  ^ 0 ~~ (self flags bitAnd: BLIPConnection kBLIPMeta)