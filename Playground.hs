module Playground(
  sayMe,
  multThree,
  compareWithHundred,
  divideByTen,
  applyTwice,
  zipWith',
  revA,
  revB,
  revC
) where

sayMe :: (Integral a) => a -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe _ = "Not between 1 and 5"

multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * z

compareWithHundred :: (Num a, Ord a) => a -> Ordering
compareWithHundred = compare 100

divideByTen :: (Floating a) => a -> a
divideByTen = (/10)

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

revA :: [a] -> [a]
revA [] = []
revA xs = last xs : revA (init xs)

revB :: [a] -> [a]
revB [] = []
revB xs = revB (tail xs) ++ [head xs]

revC :: [a] -> [a]
revC [] = []
revC (x:xs) = reverse xs ++ [x]

