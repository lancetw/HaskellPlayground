module Fac(
  facA,
  facB,
  facC,
  facD,
  facE,
  facF,
  facG
) where

facA :: (Integral a) => a -> a
facA 0 = 1
facA n = n * facA (n - 1)

facB :: (Integral a) => a -> a
facB n = if n < 2 then 1 else n * facB (n - 1)

facC :: (Integral a) => a -> a
facC n = product [1..n]

facD :: (Integral a) => a -> a
facD n = foldl (*) 1 [1..n]

facE :: (Integral a) => a -> a
facE n = go n 1
  where go 0 acc = acc
        go _n acc = go (_n - 1) (_n * acc)

facF :: (Integral a) => a -> a
facF n = go n 1
  where
  go _n _res
    | _n > 1 = go (_n - 1) (_res * _n)
    | otherwise = _res

facG :: (Integral a) => a -> a
facG n =
  let go 0 acc = acc
      go _n acc = go (_n - 1) (_n * acc)
  in go n 1
