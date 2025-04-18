mayorDigitoPar :: Integer -> Integer 
mayorDigitoPar n = calcularMayorDigito n (-1)

calcularMayorDigitoPar :: Integer -> Integer -> Integer
calcularMayorDigitoPar n mayor
  | n == 0 = mayor
  | ult n > mayor && esPar (ult n) = calcularMayorDigito (quitarUlt n) (ult n)
  | otherwise     = calcularMayorDigito (quitarUlt n) mayor

ult :: Integer -> Integer
ult n = mod n 10

quitarUlt :: Integer -> Integer
quitarUlt n = div n 10

esPar :: Integer -> Bool 
esPar n = mod n 2 == 0