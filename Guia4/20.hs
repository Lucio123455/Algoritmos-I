tomaValorMax :: Integer -> Integer -> Integer
tomaValorMax n m 
    | n == m = 0
    | otherwise = mayorEntreDos (sumaDivisores n 1) + tomaValorMax (mayorEntreDos (sumaDivisores (n + 1) 1)) m

sumaDivisores :: Integer -> Integer -> Integer
sumaDivisores n k
    | k == n = n
    | not (esDivisor k n) = 0
    | otherwise = sumaDivisores n (k + 1) + k 
        

esDivisor :: Integer -> Integer -> Bool
esDivisor a b 
    | mod b a == 0 = True
    | otherwise = False

mayorEntreDos :: Integer -> Integer -> Integer
mayorEntreDos a b 
    | a > b = a
    | otherwise = b 