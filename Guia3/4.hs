-- a) productoInterno: calcula el producto interno entre dos tuplas de R×R

productoInterno :: (Rational, Rational) -> (Rational, Rational) -> Rational
productoInterno (x1, y1) (x2, y2) = x1 * x2 + y1 * y2 

-- b) esParMenor: dadas dos tuplas de R× R, decide si cada coordenada
-- de la primera tupla es menor a la coordenada
-- correspondiente de la segunda tupla

esParMenor :: (Rational, Rational) -> (Rational, Rational) -> Bool
esParMenor (x1, y1) (x2, y2) 
    | x1 < x2 && y1 <= y2   = True
    | otherwise             = False

-- c) distancia: calcula la distancia euclıdea entre dos puntos de R2

--distancia :: (Rational, Rational) -> (Rational, Rational) -> Bool
--distancia (x1, y1) (x2, y2) = sqrt ((x2 - x1)^2 + (y2 - y1)^2)

-- e) sumarSoloMultiplos: dada una terna de numeros enteros y un natural, 
-- calcula la suma de los elementos de la terna que
-- son multiplos del numero natural.
-- Por ejemplo:
-- sumarSoloMultiplos (10,-8,-5) 2 ⇝ 2
-- sumarSoloMultiplos (66,21,4) 5 ⇝ 0
-- sumarSoloMultiplos (-30,2,12) 3 ⇝ -18

esMultiploDe :: Integer -> Integer -> Bool
esMultiploDe a b 
    | a <= 0 && b <= 0  = False
    | a `mod` b == 0    = True 
    | otherwise         = False

sumarSoloMultiplos :: (Integer, Integer, Integer) -> Integer -> Integer
sumarSoloMultiplos (x1, x2, x3) k 
    | esMultiploDe x1 k && esMultiploDe x2 k && esMultiploDe x3 k   = x1 + x2 + x3
    | esMultiploDe x1 k && esMultiploDe x2 k                        = x1 + x2
    | esMultiploDe x1 k && esMultiploDe x2 k                        = x2 + x3
    | esMultiploDe x2 k && esMultiploDe x3 k                        = x3 + x1
    | otherwise                                                     = 0

-- d) sumaTerna: dada una terna de enteros, calcula la suma de sus tres elementos

sumaTerna :: (Integer, Integer, Integer) -> Integer
sumaTerna (x1, x2, x3) = x1 + x2 + x3


-- f) posPrimerPar: dada una terna de enteros, 
-- devuelve la posicion del primer numero par si es que hay alguno, o devuelve
-- 4 si son todos impares

esPar :: Integer -> Bool 
esPar a 
    | a mod 2 == 0    = True
    | otherwise         = False

posPrimerPar :: (Integer, Integer, Integer) -> Integer
posPrimerPar (x1, x2, x3) 
    | esPar x1  = 1
    | esPar x2  = 2
    | esPar x3  = 3
    | otherwise = 4

-- g) crearPar :: a -> b -> (a, b): a partir de dos componentes, 
--crea un par con esos valores. Debe funcionar para elementos de cualquier tipo

crearPar :: a -> b -> (a, b)
crearPar a b = (a, b)

-- h) invertir :: (a, b) -> (b, a): 
--invierte los elementos del par pasado como parametro. Debe funcionar para elementos
--de cualquier tipo

invertir :: (a, b) -> (b, a)
invertir (a, b) = (b, a)
    
-- ) Reescribir los ejercicios productoInterno, 
--esParMenor y distancia usando el siguiente renombre de tipos:
--type Punto2D = (Float, Float)

type Punto2D = (Float, Float) 

todoMenor :: Punto2D -> Punto2D -> Bool
todoMenor t1 t2 = (fst t1 < fst t2) && (snd t1 < snd t2)

