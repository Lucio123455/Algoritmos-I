--Ejercicio 21. Especificar e implementar una funci ́on pitagoras :: Integer ->Integer ->Integer ->Integer que dados
--m, n , r ∈N≥0, cuente cuantos pares (p, q) con 0 ≤p ≤m y 0 ≤q ≤n satisfacen que p2 + q2 ≤r2. Por ejemplo:
--pitagoras 3 4 5 ⇝ 20
--pitagoras 3 4 2 ⇝ 6

pitagoras :: Integer -> Integer -> Integer -> Integer
pitagoras m n r = for n m r
    
for :: Integer -> Integer -> Integer -> Integer 
for n m r 
    | n < 0 = 0
    | otherwise  =  calculo n m r + for (n - 1) m r

calculo :: Integer -> Integer -> Integer -> Integer
calculo n m r 
    | m < 0 = 0
    | n ^ 2 + m ^ 2 <= r ^ 2 = 1 + calculo n (m - 1) r
    | otherwise = calculo n (m - 1) r