module Codewars.Kata.Hashtag where

import Data.Char

generateHashtag :: String -> Maybe String
generateHashtag s
  | null (hashtag s) = Nothing
  | length (hashtag s) >= 140 = Nothing
  | otherwise = Just $ "#" ++ hashtag s
  where capWord [] = []
        capWord (x:xs) = toUpper x : xs
        hashtag h = concatMap capWord (words h)
