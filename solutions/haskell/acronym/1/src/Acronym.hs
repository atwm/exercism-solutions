{-# LANGUAGE OverloadedStrings #-}
module Acronym (abbreviate, capitalize) where
import qualified Data.Text as T
import           Data.Text (Text)
import           Data.Char (isUpper, isAlpha, toUpper )


capitalize :: Text -> Text
capitalize "" = ""
capitalize txt  =  T.append (T.singleton  $ toUpper  $ T.head txt  ) ( T.tail txt)





abbreviate :: Text -> Text
abbreviate xs  =  T.filter isUpper $ T.concat $  map capitalize $T.words  xs
