sumatoria :: [Integer] -> Integer
sumatoria [] = 0
sumatoria (x:xs) = x + sumatoria xs 

productoria :: [Integer] -> Integer
productoria [] = 1
productoria (x:xs) = x * productoria xs 

maximo :: [Integer] -> Integer
maximo [x] = x 
maximo (x:y:xs) 
    | x > y = maximo (x:xs)
    | otherwise = maximo (y:xs)

sumarN :: Integer -> [Integer] -> [Integer]
sumarN n [] = []
sumarN n (x:xs) = (x + n) : sumarN n xs 

sumarElPrimero :: [Integer] -> [Integer]
sumarElPrimero [] = []
sumarElPrimero xs = sumarN (head xs) xs 

pares :: [Integer] -> [Integer] 
pares [] = []
pares (x:xs) 
    | mod x 2 == 0 = x : pares xs
    | otherwise = pares xs

multiplosDeN :: Integer -> [Integer] -> [Integer]
multiplosDeN n [] = []
multiplosDeN n (x:xs) 
    | mod x n == 0 = x : multiplosDeN n xs 
    | otherwise = multiplosDeN n xs

quitar :: (Eq t) => t -> [t] -> [t]
quitar n [] = []
quitar n (x:xs) 
  | n == x = xs 
  | otherwise = x : quitar n xs

ordenar :: [Integer] -> [Integer] 
ordenar [] = []
ordenar lista = maximo lista : ordenar (quitar (maximo lista) lista)

