--Ejercicio 21. Especificar e implementar una funci ́on pitagoras :: Integer ->Integer ->Integer ->Integer que dados
--m, n , r ∈N≥0, cuente cuantos pares (p, q) con 0 ≤p ≤m y 0 ≤q ≤n satisfacen que p2 + q2 ≤r2. Por ejemplo:
--pitagoras 3 4 5 ⇝ 20
--pitagoras 3 4 2 ⇝ 6

pitagoras :: Integer -> Integer -> Integer -> Integer
pitagoras m n r 
    | 