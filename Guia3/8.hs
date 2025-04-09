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

sumaUltimosDosDigitos :: Rational -> Rational
sumaUltimosDosDigitos a = ((absoluto a) * (`mod` 10)) + (((absoluto a) / 10) * (`mod` 10))


absoluto :: Rational -> Rational
absoluto n
    | n >= 0    = n
    | otherwise = -n
