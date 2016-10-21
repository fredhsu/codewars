module CodeWars.Largest (largest) where
import Data.List (sort)

largest :: Ord a => Int -> [a] -> [a]
largest n xs = reverse $ take n $ reverse $ sort xs
-- largest n xs = drop k $ sort xs
--   where k = length xs - n
-- largest n = reverse . take n . reverse . sort
