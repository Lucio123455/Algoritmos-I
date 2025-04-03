import GHC.Windows (BOOL)
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

