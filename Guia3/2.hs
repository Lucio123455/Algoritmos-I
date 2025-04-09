-- a) absoluto: calcula el valor absoluto de un n ́umero entero.

absoluto :: Integer -> Integer
absoluto n
    | n >= 0    = n
    | otherwise = -n

-- b) maximoAbsoluto: devuelve el m ́aximo entre el valor absoluto de dos n ́umeros enteros

maximoAbsoluto :: Integer -> Integer -> Integer
maximoAbsoluto a b
    | absolutoA > absolutoB = absolutoA
    | otherwise            = absolutoB
    where
        absolutoA = absoluto a  
        absolutoB = absoluto b  

-- c) maximo3: devuelve el m ́aximo entre tres n ́umeros enteros

maximo3 :: Integer -> Integer -> Integer -> Integer
maximo3 a b c
    | a >= b && a >= c = a
    | b >= c           = b
    | otherwise        = c

-- d) algunoEsCero: dados dos n ́umeros racionales, decide si alguno es igual a 0 (resolverlo con y sin pattern matching ).

algunoEsCero :: Rational -> Rational -> Bool
algunoEsCero a b 
    | a == 0 || b == 0 = True
    
algunoEsCeroPL :: Rational -> Rational -> Bool
algunoEsCeroPL 0 _ = True  -- Primer argumento es 0
algunoEsCeroPL _ 0 = True  -- Segundo argumento es 0
algunoEsCeroPL _ _ = False -- Ninguno es 0

-- e) ambosSonCero: dados dos n ́umeros racionales, decide si ambos son iguales a 0 (resolverlo con y sin pattern matching )

ambosSonCero :: Rational -> Rational -> Bool
ambosSonCero a b 
    | a == 0 && b == 0 = True
    | otherwise        = False 

ambosSonCeroPL :: Rational -> Rational -> Bool
ambosSonCeroPL 0 0 = True  -- Caso donde ambos son 0
ambosSonCeroPL _ _ = False -- Cualquier otro caso

-- f) enMismoIntervalo: dados dos n ́umeros reales, indica si est ́an relacionados 
-- por la relacion de equivalencia en R cuyas
-- clases de equivalencia son: (−∞, 3], (3, 7] y (7, ∞), 
-- o dicho de otra manera, si pertenecen al mismo intervalo

esMismoIntervalo :: Rational -> Rational -> Bool
esMismoIntervalo a b 
    | a <= 3 && b <= 3                          = True
    | (a > 3 && a <= 7) && (b > 3 && b <= 7)    = True
    | a > 7 && b > 7                            = True
    | otherwise                                 = False 

-- g) sumaDistintos: 
-- que dados tres n ́umeros enteros calcule la suma sin sumar repetidos (si los hubiera)

sumaDistintos :: Integer -> Integer -> Integer -> Integer 
sumaDistintos a b c 
    | a /= b && b /= c && c /= a    = a + b + c
    | a == b                        = c 
    | b == c                        = a 
    | c == a                        = b
    | a == b && b == a && c == a    = 0

-- h) esMultiploDe: dados dos n ́umeros naturales, decide si el primero es m ́ultiplo del segundo

esMultiploDe :: Integer -> Integer -> Bool
esMultiploDe a b 
    | a <= 0 && b <= 0  = False
    | a `mod` b == 0    = True 
    | otherwise         = False

-- i) digitoUnidades: dado un n ́umero entero, extrae su dıgito de las unidades

digitoUnidades :: Integer -> Integer
digitoUnidades a = a `mod` 10


-- j) digitoDecenas: dado un n ́umero entero mayor a 9, extrae su d ́ıgito de las decenas.
digitoDecenas :: Integer -> Integer
digitoDecenas n = (n `div` 10) `mod` 10