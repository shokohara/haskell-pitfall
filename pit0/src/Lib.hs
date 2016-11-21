module Lib
    ( someFunc
    ) where

import A
import B

data AB = A | B

--    Ambiguous occurrence ‘A’
--    It could refer to either ‘A.A’,
--                             imported from ‘A’ at src/Lib.hs:3:1-8
--                          or ‘Lib.A’, defined at src/Lib.hs:6:11
case0 = A "name"

someFunc :: IO ()
someFunc = putStrLn "someFunc"

