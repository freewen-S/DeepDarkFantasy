{-# LANGUAGE NoImplicitPrelude #-}

module DDF.UnHOAS where

import DDF.Lang

newtype UnHOAS repr h x = UnHOAS {runUnHOAS :: repr h x}

instance DBI repr => DBI (UnHOAS repr) where
  z = UnHOAS z
  s (UnHOAS x) = UnHOAS $ s x
  abs (UnHOAS x) = UnHOAS $ abs x
  app (UnHOAS f) (UnHOAS x) = UnHOAS $ app f x

instance Bool r => Bool (UnHOAS r) where
  bool = UnHOAS . bool
  ite = UnHOAS ite

instance Char r => Char (UnHOAS r) where
  char = UnHOAS . char

instance Prod r => Prod (UnHOAS r) where
  mkProd = UnHOAS mkProd
  zro = UnHOAS zro
  fst = UnHOAS fst

instance Double r => Double (UnHOAS r) where
  double = UnHOAS . double
  doublePlus = UnHOAS doublePlus
  doubleMinus = UnHOAS doubleMinus
  doubleMult = UnHOAS doubleMult
  doubleDivide = UnHOAS doubleDivide
  doubleExp = UnHOAS doubleExp

instance Float r => Float (UnHOAS r) where
  float = UnHOAS . float
  floatPlus = UnHOAS floatPlus
  floatMinus = UnHOAS floatMinus
  floatMult = UnHOAS floatMult
  floatDivide = UnHOAS floatDivide
  floatExp = UnHOAS floatExp

instance Option r => Option (UnHOAS r) where
  nothing = UnHOAS nothing
  just = UnHOAS just
  optionMatch = UnHOAS optionMatch

instance Map r => Map (UnHOAS r) where
  empty = UnHOAS empty
  singleton = UnHOAS singleton
  alter = UnHOAS alter
  lookup = UnHOAS lookup
  mapMap = UnHOAS mapMap

instance Dual r => Dual (UnHOAS r) where
  dual = UnHOAS dual
  runDual = UnHOAS runDual

instance Lang r => Lang (UnHOAS r) where
  float2Double = UnHOAS float2Double
  fix = UnHOAS fix
  left = UnHOAS left
  right = UnHOAS right
  sumMatch = UnHOAS sumMatch
  unit = UnHOAS unit
  exfalso = UnHOAS exfalso
  ioRet = UnHOAS ioRet
  ioBind = UnHOAS ioBind
  nil = UnHOAS nil
  cons = UnHOAS cons
  listMatch = UnHOAS listMatch
  ioMap = UnHOAS ioMap
  writer = UnHOAS writer
  runWriter = UnHOAS runWriter
  double2Float = UnHOAS double2Float
  state = UnHOAS state
  runState = UnHOAS runState
  putStrLn = UnHOAS putStrLn