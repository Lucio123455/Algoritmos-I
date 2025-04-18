f :: Integer -> Integer -> Integer
f n m
    | n == 0 = 0
    | otherwise = sumaPotencias n m + f (n - 1) m 

sumaPotencias :: Integer -> Integer -> Integer
sumaPotencias i j 
    | j == 0 = 1
    | otherwise = i ^ j + sumaPotencias i (j - 1) 