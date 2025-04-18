{-tomaValorMax :: Integer -> Integer -> Integer
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
    | otherwise = False-}

tomaValorMax :: Integer -> Integer -> Integer
tomaValorMax n m = for n m n

--for :: Integer -> Integer -> Integer -> Integer
--for actual limite mejor
--    | actual > limite = mejor
--    | sumaDivisores actual 1 > sumaDivisores mejor 1 = for (actual + 1) limite actual
--    | otherwise = for (actual + 1) limite mejor

for :: Integer -> Integer -> Integer
for n m mayor 
    | n > m = mayor 
    | sumaDivisores n 1 > sumaDivisores mayor 1= for (n + 1) m n
    | otherwise = for (n + 1) m mejor
    
sumaDivisores :: Integer -> Integer -> Integer
sumaDivisores n k
    | k > n = 0
    | esDivisor k n = k + sumaDivisores n (k + 1)
    | otherwise = sumaDivisores n (k + 1)

esDivisor :: Integer -> Integer -> Bool
esDivisor a b = mod b a == 0

