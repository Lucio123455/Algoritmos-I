factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

eAprox :: Integer -> Float
eAprox 0 = 1
eAprox n = 1 / fromIntegral (factorial n) + eAprox (n - 1)



