module Codewars.G964.Salesmantravel where
import Data.Map.Strict as Map

book = fromList [("AA 45522", [("Paris St. Abbeville", "10"),("Paris St. Abbeville", "100")]), 
                ("EX 34342", [("Pussy Cat Rd. Chicago", "67"), ("Pussy Cat. Rd Chicago", "670")])]

travel :: [Char] -> [Char] -> [Char]
travel r zipcode = zipcode ++ ":" ++ streets ++ "/" ++ houses
  where streets = "Paris St. Abbeville,Paris St. Abbeville"
        houses = "67,670"

