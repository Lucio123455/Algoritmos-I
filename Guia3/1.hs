-- A

f :: Integer -> Integer
f n 
    | n == 1 = 8
    | n == 4 = 131
    | n == 16 = 16
    | otherwise = error "Invalid input"

-- B

g :: Integer -> Integer
g n 
    | n == 8 = 1
    | n == 131 = 4
    | n == 16 = 16
    | otherwise = error "Invalid input"


-- C

h :: Integer -> Integer
h x = f (g x)

k :: Integer -> Integer
k x = g (f x)