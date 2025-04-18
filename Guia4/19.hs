{-esSumaInicialDePrimos :: Integer -> Bool
esSumaInicialDePrimos n 
    | n == sumatoriaDePrimosHastaN n = True 
    


sumatoriaDePrimosHastaN :: Integer -> Integer
sumatoriaDePrimosHastaN n
    | n == 0 = 0
    | not (esPrimo n) = 0
    | otherwise = n + sumatoriaDePrimosHastaN (n - 1) 

-}



esSumaInicialDePrimos :: Integer -> Bool 
esSumaInicialDePrimos n = sumaPrimosDesde 0 2 n

{-sumaPrimosDesde :: Integer -> Integer -> Integer -> Bool
sumaPrimosDesde acum actual objetivo
  | acum == objetivo = True
  | acum > objetivo  = False
  | esPrimo actual   = sumaPrimosDesde (acum + actual) (actual + 1) objetivo
  | otherwise        = sumaPrimosDesde acum (actual + 1) objetivo
-}

sumaPrimosDesde :: Integer -> Integer -> Integer -> Bool
sumaPrimosDesde suma actual objetivo
  | suma == objetivo = True
  | suma > objetivo = False
  | esPrimo actual = sumaPrimosDesde (suma + actual) (actual + 1) objetivo
  | otherwise = sumaPrimosDesde suma (actual + 1) objetivo

esPrimo :: Integer -> Bool
esPrimo n = n > 1 && menorDivisor n == n

menorDivisor :: Integer -> Integer
menorDivisor n = buscarDivisorDesde n 2

buscarDivisorDesde :: Integer -> Integer -> Integer
buscarDivisorDesde n k
  | mod n k == 0 = k
  | otherwise    = buscarDivisorDesde n (k + 1)