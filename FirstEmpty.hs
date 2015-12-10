module FirstEmpty where

firstEmpty :: [[Char]] -> Bool
firstEmpty [] = True
firstEmpty (x:_) = if x == []
                   then True
                   else False
