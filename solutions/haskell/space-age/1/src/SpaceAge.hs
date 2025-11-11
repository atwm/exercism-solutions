module SpaceAge (Planet(..), ageOn) where

-- This is anugly solution, lots of hardcoded constants
-- would be better to put this in some data structure like
-- a key value or a dictionary. But it works :)

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

ageOn :: Planet -> Float -> Float

ageOn planet seconds =
    case planet of
        Mercury  -> seconds/earthYearInSeconds/0.2408467
        Venus    -> seconds/earthYearInSeconds/0.61519726
        Earth    -> seconds/earthYearInSeconds/1.0
        Mars     -> seconds/earthYearInSeconds/1.8808158
        Jupiter  -> seconds/earthYearInSeconds/11.862615
        Saturn   -> seconds/earthYearInSeconds/29.447498
        Uranus   -> seconds/earthYearInSeconds/84.016846
        Neptune  -> seconds/earthYearInSeconds/164.79132
    where
        earthYearInSeconds=31557600.0