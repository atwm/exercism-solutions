module SpaceAge (Planet(..), ageOn) where

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
        Mercury  -> yearfraction/0.2408467
        Venus    -> yearfraction/0.61519726
        Earth    -> yearfraction/1.0
        Mars     -> yearfraction/1.8808158
        Jupiter  -> yearfraction/11.862615
        Saturn   -> yearfraction/29.447498
        Uranus   -> yearfraction/84.016846
        Neptune  -> yearfraction/164.79132
    where
        yearfraction=seconds/earthYearInSeconds
        earthYearInSeconds=31557600.0