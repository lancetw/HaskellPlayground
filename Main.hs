module Main where

import Playground(
  sayMe,
  multThree,
  compareWithHundred,
  divideByTen,
  applyTwice,
  zipWith'
  )

import QuickSort
import FirstEmpty
import FirstOrEmpty
import Length(length')
import Maximum(maximum')

main :: IO ()
main = do
  let s0 = []
  let s1 = ["", "1", "2"]
  let s2 = ["0", "1", "2"]
  let n1 = [1, 2, 3, 4, 999, 0, 10]
  print (firstEmpty s1)
  print (firstEmpty s2)
  print (firstOrEmpty s0)
  print (firstOrEmpty s2)
  print (length' s2 :: Int)
  print (maximum' n1 :: Int)
  print (sayMe (3 :: Int))
  print (multThree 1 2 3 :: Int)
  print (compareWithHundred (100 :: Int))
  print (divideByTen (1 :: Float))
  print (quickSort n1 :: [Int])
  print (applyTwice (+3) 10 :: Int)
  print (zipWith' (+) [4,2,5,6] [2,6,2,3] :: [Int])
