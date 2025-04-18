esSumaInicialDePrimos :: Integer -> Bool
esSumaInicialDePrimos n 
    | n == sumatoriaDePrimosHastaN n = True 
    


sumatoriaDePrimosHastaN :: Integer -> Integer
sumatoriaDePrimosHastaN n
    | n == 0 = 0
    | not (esPrimo n) = 0
    | otherwise = n + sumatoriaDePrimosHastaN (n - 1) 


menorDivisor :: Integer -> Integer
menorDivisor n = buscarDivisorDesde n 2

buscarDivisorDesde :: Integer -> Integer -> Integer
buscarDivisorDesde n k
  | mod n k == 0 = k
  | otherwise    = buscarDivisorDesde n (k + 1)

esPrimo :: Integer -> Bool
esPrimo n = n > 1 && menorDivisor n == n
