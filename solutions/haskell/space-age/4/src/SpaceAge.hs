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

ageOn planet seconds = yf/f
    where
        yis=31557600.0                -- Earth year in seconds
        yf=seconds/yis                -- fraction of an earth year given the seconds
        f  = case planet of            -- the planet year expressed in earth years
            Mercury  -> 0.2408467     
            Venus    -> 0.61519726
            Earth    -> 1.0
            Mars     -> 1.8808158
            Jupiter  -> 11.862615
            Saturn   -> 29.447498
            Uranus   -> 84.016846
            Neptune  -> 164.79132
   
        
        