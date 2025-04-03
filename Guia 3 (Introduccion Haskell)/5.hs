todosMenores :: (Integer, Integer, Integer) -> Bool
todosMenores (t0, t1, t2) = f t0 > g t0 && f t1 > g t1 && f t2 > g t2

f :: Integer -> Integer 
f n
    | n <= 7    = n * n
    | otherwise = 2 * n - 1

g :: Integer -> Integer 
g n
    | even n    = n `div` 2  
    | otherwise = 3 * n + 1


