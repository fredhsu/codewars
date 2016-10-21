module Codewars.G964.Longestconsec where

longestConsec :: [String] -> Int -> String
longestConsec strarr k = longC strarr k "" 0

longC [] k best count = best
longC y@(x:xs) k best count 
    | length y < k = best
    | length current > count = longC xs k current (length current)
    | otherwise = longC xs k best count
  where current = concat $ take k y
