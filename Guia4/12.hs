raizDe2Aprox :: Integer -> FLoat 
raizDe2Aprox n 
    | n == 1 = 1
    |otherwise = 2 + 1 / raizDe2Aprox (n - 1)