sacarBlancosRepetidos :: [Char] -> [Char]
sacarBlancosRepetidos [] = []
sacarBlancosRepetidos [x] = [x]
sacarBlancosRepetidos (x:y:xs)
  | x == ' ' && y == ' ' = sacarBlancosRepetidos (y:xs)  
  | otherwise = x : sacarBlancosRepetidos (y:xs)

contarPalabras :: [Char] -> Integer 
contarPalabras [] = 1
contarPalabras (x:xs) 
    | x == ' ' = 1 + contarPalabras xs 
    | otherwise = contarPalabras xs

primerPalabra :: [Char] -> [Char]
primerPalabra [] = []
primerPalabra (x:xs) 
    | ' ' == x = []
    |otherwise = x : primerPalabra xs

saltarPalabra :: [Char] -> [Char]
saltarPalabra [] = []
saltarPalabra (x:xs)
  | x /= ' '  = saltarPalabra xs
  | otherwise = borrarEspacios xs

borrarEspacios :: [Char] -> [Char]
borrarEspacios [] = []
borrarEspacios (x:xs)
  | x == ' '  = borrarEspacios xs
  | otherwise = x:xs

palabras :: [Char] -> [[Char]]
palabras [] = []
palabras lista = primerPalabra (sacarBlancosRepetidos lista) : palabras (saltarPalabra (sacarBlancosRepetidos lista))

esMasLarga :: [Char] -> [Char] -> Bool


palabraMasLarga :: [Char] -> [Char] 
palabraMasLarga [] = []
palabraMasLarga 




