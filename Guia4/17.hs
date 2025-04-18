esFibonacci :: Integer -> Bool 
esFibonacci n = encontrarCoincidencia n 1

encontrarCoincidencia :: Integer -> Integer -> Bool
encontrarCoincidencia n k
    | n == fib k = True
    | fib k > n == False
    | otherwise = encontrarCoincidencia n (k + 1) 

fib :: Integer -> Integer
fib n 
    | n == 0 || n == 1 = n
    | n > 1 = fib (n - 1) + fib (n - 2)