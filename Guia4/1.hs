fib :: Integer -> Integer
fib n 
    | n == 0 || n == 1 = n
    | n > 1 = fib (n - 1) + fib (n - 2)
