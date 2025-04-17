medioFact :: Integer -> Integer
medioFact n
    | n <= 0    = 1  -- Caso base: por convención, 0!! = 1
    | n == 1    = 1
    | otherwise = n * medioFact (n - 2)  -- Restamos 2 en cada paso

