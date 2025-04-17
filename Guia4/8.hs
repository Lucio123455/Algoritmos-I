sumaDigitos :: Integer -> Integer 
sumaDigitos n
    | n <= 0 = 0
    | otherwise = sumaDigitos (div n 10) + mod n 10