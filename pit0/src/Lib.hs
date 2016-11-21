module Lib
    ( someFunc
    ) where

import A
import B

-- error: Qualified name in binding position: A.A
-- error: Qualified name in binding position: B.B
data AB = AA A.A | BB B.B

x :: AB
x = AA $ A ""

y :: AB
y = BB $ B ""

someFunc :: IO ()
someFunc = putStrLn "someFunc"

