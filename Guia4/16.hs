menorDivisor :: Integer -> Integer
menorDivisor n = buscarDivisorDesde n 2

buscarDivisorDesde :: Integer -> Integer -> Integer
buscarDivisorDesde n k
  | mod n k == 0 = k
  | otherwise    = buscarDivisorDesde n (k + 1)

esPrimo :: Integer -> Bool
esPrimo n 
    | menorDivisor n == n   = True
    | otherwise             = False

sonCoprimos :: Integer -> Integer -> Bool
    | 