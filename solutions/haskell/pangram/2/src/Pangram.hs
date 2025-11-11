module Pangram (isPangram) where
import qualified Data.Set as Set
import Data.Char
isPangram :: String -> Bool
isPangram [] = False
isPangram ts = 
    let lowerts = map toLower ts
        allchars = Set.fromList ['a'..'z']
     in allchars `Set.isSubsetOf`   Set.fromList lowerts
    
