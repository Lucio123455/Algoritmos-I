iesimoDigito ::  Integer -> Integer -> Integer 
iesimoDigito n i 
    | cantDig n == i = (mod n 10)
    | otherwise = iesimoDigito (div n 10) i

cantDig :: Integer -> Integer 
cantDig n
    | n < 10 = 1
    | otherwise = 1 + (cantDig(div n 10))

