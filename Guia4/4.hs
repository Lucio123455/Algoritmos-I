-- Ejercicio 4. Especificar e implementar la funci ́on 
--sumaImpares :: Integer ->Integer que dado n ∈N sume los primeros
-- n numeros impares. Por ejemplo: sumaImpares 3 ;1+3+5 ⇝ 9.
sumaImpares :: Integer -> Integer 
sumaImpares n
    | n <= 0    = 0  -- Caso base: si n es 0 o negativo
    | otherwise = (2*n - 1) + sumaImpares (n - 1)

