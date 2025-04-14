esCapicua :: Integer -> Bool
esCapicua n 
    | n < 10 = True
    | otherwise = ((iesimoDigito n 1) == (iesimoDigito n (cantDig n))) && esCapicua div (mod n 10^((cantDig n) (-1)) 10)

iesimoDigito ::  Integer -> Integer -> Integer 
iesimoDigito n i 
    | cantDig n == i = (mod n 10)
    | otherwise = iesimoDigito (div n 10) i

cantDig :: Integer -> Integer 
cantDig n
    | n < 10 = 1
    | otherwise = 1 + (cantDig(div n 10))

