-- Ejercicio 3. Especificar e implementar la funci ́on 
--esDivisible :: Integer ->Integer ->Bool que dados dos n ́umeros
-- naturales determinar si el primero es divisible por el segundo. 
-- No est ́a permitido utilizar las funciones mod ni div.

esDivisible :: Integer -> Integer -> Bool
esDivisible a b 
    | a == 0 = True
    | a < 0 = False
    | otherwise = esDivisible(a - b) b 
