pertenece :: (Eq t) => t -> [t] -> Bool
pertenece n [] = False
pertenece n (x:xs)  | n == x = True
                    | otherwise = pertenece n xs

todosIguales :: (Eq t) => [t] -> Bool
todosIguales [] = True
todosIguales [x] = True
todosIguales (x:y:xs)
  | x /= y    = False
  | otherwise = todosIguales (y:xs)

todosDistintos :: (Eq t) => [t] -> Bool
todosDistintos [] = True
todosDistintos [x] = True
todosDistintos (x:xs)
  | pertenece x xs = False
  | otherwise      = todosDistintos xs

hayRepetidos :: (Eq t) => [t] -> Bool 
hayRepetidos [] = False
hayRepetidos [x] = False
hayRepetidos (x:xs)
  | pertenece x xs = True
  | otherwise      = hayRepetidos xs

quitar :: (Eq t) => t -> [t] -> [t]
quitar n [] = []
quitar n (x:xs) 
  | n == x = xs 
  | otherwise = x : quitar n xs

quitarTodos :: (Eq t ) => t -> [t] -> [t]
quitarTodos n [] = []
quitarTodos n (x:xs) 
  | n == x = quitarTodos n xs 
  | otherwise = x : quitarTodos n xs

eliminarRepetidos :: (Eq t) => [t] -> [t]
eliminarRepetidos [] = []
eliminarRepetidos (x:xs) = x : eliminarRepetidos (quitarTodos x xs)

mismosElementos :: (Eq t) => [t] -> [t] -> Bool
mismosElementos [] (z:zs) = True
mismosElementos (x:xs) (z:zs) 
  | not (pertenece x (z:zs)) = False
  | otherwise = mismosElementos xs  (z:zs)

capicua :: (Eq t) => [t] -> Bool
capicua [] = True
capicua [x] = True
capicua (x:xs) 
  | x /= head (reverso (x:xs)) = False
  | otherwise = capicua (principio xs)  

reverso :: [t] -> [t]
reverso [] = []
reverso (x:xs) = reverso xs ++ [x]

principio :: [t] -> [t]
principio [] = error "La lista no puede ser vacía"
principio [_] = []
principio (x:xs) = x : principio xs
