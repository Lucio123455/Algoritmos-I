{-menorDivisor :: Integer -> Integer
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
-}

{-menorDivisor :: Integer -> Integer 
menorDivisor n = encontrarMenorDivisor n n n

encontrarMenorDivisor :: Integer -> Integer -> Integer -> Integer
encontrarMenorDivisor n m menor 
  | m == 1 = menor 
  | esDivisor m n = encontrarMenorDivisor n (m - 1) m
  | otherwise = encontrarMenorDivisor n (m - 1) menor

esDivisor :: Integer -> Integer -> Bool 
esDivisor n m = mod m n == 0-}

menorDivisor :: Integer -> Integer
menorDivisor n = encontrarMenorDivisor n 2

encontrarMenorDivisor :: Integer -> Integer -> Integer
encontrarMenorDivisor n k 
  | mod n k == 0 = k
  | otherwise = encontrarMenorDivisor n (k + 1)

esPrimo :: Integer -> Bool
esPrimo n = n == menorDivisor n

esDivisor :: Integer -> Integer -> Bool 
esDivisor n m = mod m n == 0


sonCoprimos :: Integer -> Integer -> Bool
sonCoprimos n m 
  | n 
  | 

cantidadDeDivisores :: Integer -> Integer -> Integer
cantidadDeDivisores n k 
  | k == n = 1
  | esDivisor k n = 1 + cantidadDeDivisores n (k + 1)
  | otherwise = cantidadDeDivisores n (k + 1)

