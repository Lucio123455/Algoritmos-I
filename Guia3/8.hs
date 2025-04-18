{-Ejercicio 8. Implementar la funci ́on comparar :: Integer -> Integer -> Integer
problema comparar (a : Z, b : Z) : Z{
requiere: {T rue}
asegura: {(res = 1) ↔(sumaUltimosDosDigitos(a) < sumaUltimosDosDigitos(b))}
asegura: {(res = −1) ↔(sumaUltimosDosDigitos(a) > sumaUltimosDosDigitos(b))}
asegura: {(res = 0) ↔(sumaUltimosDosDigitos(a) = sumaUltimosDosDigitos(b))}
}
problema sumaUltimosDosDigitos (x : Z) : Z{
requiere: {T rue}
asegura: {res = (|x| m ́od 10) + (
⌊|x|10⌋ mod 10)}
}
Por ejemplo:
comparar 45 312 ⇝ -1 porque 45 ≺312 y 4 + 5 > 1 + 2.
comparar 2312 7 ⇝ 1 porque 2312 ≺7 y 1 + 2 < 0 + 7.
comparar 45 172 ⇝ 0 porque no vale 45 ≺172 ni tampoco 172 ≺45-}

comparar :: Integer -> Integer -> Integer
comparar a b 
    | sumaUltimosDosDigitos a < sumaUltimosDosDigitos b     = 1 
    | sumaUltimosDosDigitos a > sumaUltimosDosDigitos b     = (-1)
    | otherwise                                             = 0

sumaUltimosDosDigitos :: Integer -> Integer
sumaUltimosDosDigitos a = (digitoUnidades a) + (digitoDecenas a) 

absoluto :: Integer -> Integer
absoluto n
    | n >= 0    = n
    | otherwise = -n

digitoUnidades :: Integer -> Integer
digitoUnidades n = (absoluto n) `mod` 10

digitoDecenas :: Integer -> Integer
digitoDecenas n = (absoluto((absoluto n) `div` 10)) `mod` 10