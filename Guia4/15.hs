sumaRacionales :: Integer -> Integer -> Float
sumaRacionales n m
  | n == 0    = 0
  | otherwise = sumaDivision n m + sumaRacionales (n - 1) m

sumaDivision :: Integer -> Integer -> Float
sumaDivision p q
  | q == 0    = 0
  | otherwise = fromIntegral p / fromIntegral q + sumaDivision p (q - 1)

