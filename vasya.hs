module Codewars.Kata.SystemQuadratic where

solution :: Integer -> Integer -> Integer
solution n m =
  fromIntegral $ length $ [ (a,b) | a <- [0..upper], b <- [0..upper], a^2 + b == n, a + b^2 == m]
  where upper = floor $ max (sqrt $ fromIntegral n) (sqrt $ fromIntegral m)
