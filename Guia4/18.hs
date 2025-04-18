mayorDigito :: Integer -> Integer
mayorDigito n
    | n < 10    = n
    | not (esPar n) =  
    | otherwise = mayorDigitoEntre (mod n 10) (mayorDigito (div n 10))

mayorDigitoEntre :: Integer -> Integer -> Integer
mayorDigitoEntre a b
    | a > b     = a
    | otherwise = b



esPar :: Integer -> Bool 
esPar n 
    | mod n 2 == 0 = True
    | otherwise = False