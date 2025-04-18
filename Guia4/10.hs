f1 :: Integer -> Integer 
f1 n 
    | n == 0 = 1
    | otherwise = 2 ^ n + f1 (n - 1)

