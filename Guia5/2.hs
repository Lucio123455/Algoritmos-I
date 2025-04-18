ultimo :: [t] -> t
ultimo xs
  | longitud xs == 1 = head xs
  | otherwise        = ultimo (tail xs)

longitud :: [t] -> Integer
longitud [] = 0
longitud (_:xs) = 1 + longitud xs

