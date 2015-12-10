module FirstOrEmpty where

firstOrEmpty :: [[Char]] -> [Char]
firstOrEmpty xs = if not (null xs)
                  then head xs
                  else "empty"

