s1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"]
s2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]

t = [(length x) - (length y) | x <- s1, y <- s2]

makeString :: String -> String
makeString s = foldr (\x y -> [head x] ++ y) [] $ words s
-- makeString = map head . words

checkeredBoard :: Int -> Maybe String
checkeredBoard n 
  | n < 2 = Nothing
  | even n = Just $ init $ concat $ take n $ cycle [dark, light]
  | otherwise = Just $ init $ concat $ take n $ cycle [light, dark]
  where dark = (unwords $ take n $ cycle ["□", "■"]) ++ "\n"
        light = (unwords $ take n $ cycle ["■", "□"]) ++ "\n"
-- Could have used intercalate "\n" to add the newlines

-- import Data.List (intercalate)

-- checkeredBoard :: Int -> Maybe String
-- checkeredBoard n = if n < 2 then Nothing else Just $ intercalate "\n" $ take n $ cycle (if even n then [b,w] else [w,b])
--  where
--    w = intercalate " " (take n $ cycle ["■","□"])
--    b = intercalate " " (take n $ cycle ["□","■"])

