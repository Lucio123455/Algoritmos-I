sumaPotencias :: Integer -> Integer -> Integer
sumaPotencias q n 
    | n == 1 = q
    | otherwise = q ^ n + sumaPotencias q (n - 1)