module Lib
    ( someFunc
    ) where

import A
import B

-- error: Qualified name in binding position: A.A
-- error: Qualified name in binding position: B.B
data AB = AA A.A | BB B.B

someFunc :: IO ()
someFunc = putStrLn "someFunc"

