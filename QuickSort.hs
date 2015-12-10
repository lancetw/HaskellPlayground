module QuickSort where

quickSort :: Ord a => [a] -> [a]
quickSort [] = []
quickSort (p:xs) = (quickSort lesser) ++ [p] ++ (quickSort greater)
  where
    lesser  = filter (< p) xs
    greater = filter (>= p) xs

{-
  usage:
    quickSort [3,1,7,9,4,2,8]
    quickSort ["goat","arm","toe","dog","bat"]
-}
