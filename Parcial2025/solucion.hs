module SolucionT2 where

{--
Comentario para poder revisar que envian
el archivo que ustedes realmente quieren.
Este archivo de solución pertenece a: Lucio Cienfuegos
Lo modifiqué por última vez a las: 16:35
--}

{- Ejercicio 1 (2 puntos)

problema hayPrimosGemelos (d: Z,h: Z) : Bool {
  requiere: {0 < d ≤ h}
  asegura: {res = true <=> existen dos números p1 y p2 contenidos en el rango [d..h] tales que p1 y p2 son primos gemelos}
}

Aclaración: Se dice que p1 y p2 son primos gemelos si ambos son primos y además |p2-p1| = 2

 Ejemplo: hayPrimosGemelos 5 7 debe devolver True
  -}

-- Ejercicio 1
esDivisor :: Integer -> Integer -> Bool
esDivisor a b 
    | mod b a == 0 = True
    | otherwise = False

contarDivisoresDeUnNumero :: Integer -> Integer -> Integer 
contarDivisoresDeUnNumero a n
    | a == n = 1
    | esDivisor n a = 1 + contarDivisoresDeUnNumero a (n + 1)
    | otherwise = contarDivisoresDeUnNumero a (n + 1)

esPrimo :: Integer -> Bool 
esPrimo a 
    | contarDivisoresDeUnNumero a 1 == 2 = True
    | otherwise = False

hayPrimosGemelos :: Integer -> Integer -> Bool
hayPrimosGemelos a b 
    | hayPrimosGemelosN a b a = True
    | otherwise = False

hayPrimosGemelosN :: Integer -> Integer -> Integer -> Bool
hayPrimosGemelosN a b n 
    |n > b = False
    |(esPrimo a) && (esPrimo n) && (n - a) == 2 = True 
    |otherwise = hayPrimosGemelosN a b (n + 1)

{-- 

 Ejercicio 2 (2 puntos)
Representaremos un día de cursada de cierta materia con una tupla String x String x Z x Z, donde:

    La primera componente de la tupla contiene el nombre de una materia
    La segunda componente de la tupla contiene el día de cursada (lunes, martes, etc)
    La tercera componente de la tupla contiene el horario de inicio de la cursada de ese día
    La cuarta componente de la tupla contiene el horario de fin de la cursada de ese día

Se pide implementar materiasTurnoTarde, que dada una lista de cursadas devuelva aquellas materias que se cursan en el turno tarde (14 a 17hs)

problema materiasTurnoTarde (s: seq⟨String x String x Z x Z⟩) :seq⟨String⟩ {
  requiere: { s[i]1 es alguno de los siguientes valores: "Lunes", "Martes", "Miércoles", "Jueves", "Viernes"}
  requiere: { s[i]2 ≥ 8 para todo i tal que 0 ≤ i < |s|}
  requiere: { s[i]3 ≤ 22 para todo i tal que 0 ≤ i < |s|}
  requiere: { s[i]2 < s[i]3 para todo i tal que 0 ≤ i < |s|}
  asegura: { res no tiene elementos repetidos}
  asegura: { res contiene los nombre de todas las materias incluídas en s tales el horario de cursada de dichas materias se superpone (total o parcialmente) con el rango (14..17)}
  asegura: { res contiene solamente los nombre las materias incluídas en s tales el horario de cursada de dichas materias se superpone (total o parcialmente) con el rango (14..17)}
}

 Ejemplo: materiasTurnoTarde [("Introducción a la Programación", "Miércoles", 14, 17)] debe devolver ["Introducción a la Programación"]

Ejercicio 2-}
horasDisponibles :: [Integer]
horasDisponibles = [15,16]

generarListaDeHoras :: Integer -> Integer -> [Integer]
generarListaDeHoras a b 
    | a == b = b : [] 
    |otherwise = a : generarListaDeHoras (a + 1) b

perteneceAlTurnoTarde :: [Integer] -> [Integer] -> Bool
perteneceAlTurnoTarde [] tt = False 
perteneceAlTurnoTarde (x:xs) tt 
    | for x tt == 1 = True 
    | otherwise = perteneceAlTurnoTarde xs tt 

for :: Integer -> [Integer] -> Integer
for a [] = 0
for a (x:xs) 
    | a == x = 1 + for a xs 
    | otherwise = for a xs

materiasTurnoTarde :: [(String, String, Integer, Integer)] -> [String]
materiasTurnoTarde [] = []
materiasTurnoTarde ((nombre,dia,entrada,salida):materias)
    | perteneceAlTurnoTarde (generarListaDeHoras entrada salida) horasDisponibles = nombre : materiasTurnoTarde materias
    | otherwise = materiasTurnoTarde materias    




{- Ejercicio 3 (2 puntos)

problema maximaSumaDeTresConsecutivos (s: seq⟨Z⟩) : Z {
  requiere: { |s| ≥ 3}
  asegura: { res es la suma de tres elementos que se encuentran en posiciones consecutivas de s }
  asegura: {Para cualquier i en el rango 1 ≤ i < |s|-1, se cumple que s[i-1]+s[i]+s[i+1] ≤ res}
}

 Ejemplo: maximaSumaDeTresConsecutivos [3,8,5,4,1] debe devolver 17
    -}

sumaEntreTres :: Integer -> Integer -> Integer -> Integer 
sumaEntreTres a b c = a + b + c

sumaDeTresConsecutivosEnLista :: [Integer] -> [Integer] 
sumaDeTresConsecutivosEnLista [] = []
sumaDeTresConsecutivosEnLista [x] = []
sumaDeTresConsecutivosEnLista (x:y:[]) = []
sumaDeTresConsecutivosEnLista (x:y:z:xs) = sumaEntreTres x y z : sumaDeTresConsecutivosEnLista (y:z:xs)

mayor :: [Integer] -> Integer
mayor [] = 0
mayor [x] = x 
mayor (x:y:xs) 
    | x > y = mayor (x:xs)
    | otherwise = mayor (y:xs)

--Ejercicio 3
maximaSumaDeTresConsecutivos :: [Integer] -> Integer
maximaSumaDeTresConsecutivos lista = mayor (sumaDeTresConsecutivosEnLista lista)

{- Ejercicio 4 (2,5 puntos)

problema sumaIesimaColumna (matriz: seq⟨seq⟨Integer⟩⟩, col: Integer) : Integer⟩{
  requiere: {Todos los elementos de la secuencia matriz tienen la misma longitud}
  requiere: {|matriz| > 0}
  requiere: {|matriz[0]| > 0}
  requiere: {1 ≤ col ≤ |matriz[0]| }
  asegura: {res es la sumatoria de los elementos matriz[i][col-1] para todo i tal que 0 ≤ i < |matriz| }
}

 Ejemplo: sumaIesimaColumna [[1,2],[3,4]] 1 debe devolver 4
  -}

-- Ejercicio 4

longitud :: [Integer] -> Integer
longitud [] = 0
longitud (x:xs) = 1 + longitud xs

devolverElValorDeLaPosicionN :: [Integer] -> Integer -> Integer -> Integer -> Integer 
devolverElValorDeLaPosicionN [] _ _ _ = 0
devolverElValorDeLaPosicionN (x:xs) n k longitud 
    | k >= longitud = x  
    | n == k = x
    | otherwise = devolverElValorDeLaPosicionN xs n (k + 1) longitud 

sumaIesimaColumna :: [[Integer]] -> Integer -> Integer
sumaIesimaColumna [] columna = 0
sumaIesimaColumna (fila:filas) columna = devolverElValorDeLaPosicionN fila columna 1 (longitud fila) + sumaIesimaColumna filas columna

--sumaIesimaColumna :: [[Integer]] -> Integer -> Integer
--sumaIesimaColumna 