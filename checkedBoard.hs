import           Data.List (intercalate)

checkeredBoard :: Int -> Maybe String
checkeredBoard n
  | n < 2 = Nothing
  | even n = Just $ init $ concat $ take n $ cycle [dark, light]
  | otherwise = Just $ init $ concat $ take n $ cycle [light, dark]
  where dark = unwords (take n $ cycle ["\9633", "\9632"]) ++ "\n"
        light = unwords (take n $ cycle ["\9632", "\9633"]) ++ "\n"
-- Could have used intercalate "\n" to add the newlines

checkeredBoard' :: Int -> Maybe String
checkeredBoard' n
  | n < 2 = Nothing
  | even n = Just $ intercalate "\n" $ take n $ cycle [dark, light]
  | otherwise = Just $ intercalate "\n" $ take n $ cycle [light, dark]
  where dark = unwords (take n $ cycle ["\9633", "\9632"])
        light = unwords (take n $ cycle ["\9632", "\9633"])
-- import Data.List (intercalate)

-- checkeredBoard :: Int -> Maybe String
-- checkeredBoard n = if n < 2 then Nothing else Just $ intercalate "\n" $ take n $ cycle (if even n then [b,w] else [w,b])
--  where
--    w = intercalate " " (take n $ cycle ["■","□"])
--    b = intercalate " " (take n $ cycle ["□","■"])
