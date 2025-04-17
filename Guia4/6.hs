todosDigitosIguales :: Integer -> Bool
todosDigitosIguales n
    | n < 10    = True  -- Caso base: números de un solo dígito
    | otherwise = (ultimo == restoUltimo) && todosDigitosIguales (n `div` 10)
    where
        ultimo = n `mod` 10
        restoUltimo = (n `div` 10) `mod` 10