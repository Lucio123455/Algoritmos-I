estanRelacionados :: Integer -> Integer -> Bool
estanRelacionados a b
    | a == 0 || b == 0 = error "Ambos números deben ser distintos de cero"
    | any (\k -> a^2 + a*b*k == 0) [-100..100] = True  
    | otherwise = False
        

