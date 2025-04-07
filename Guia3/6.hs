bisiesto :: Integer -> Bool
bisiesto anio 
    | esMultiplo anio 100 && not(esMultiplo anio 400) = False
    | not(esMultiplo anio 4) = False
    | otherwise = True

esMultiplo :: Integer -> Integer -> Bool
esMultiplo a b
    | a `mod` b == 0 = True
    | otherwise      = False

