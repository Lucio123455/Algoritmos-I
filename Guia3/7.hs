distanciaManhattan :: (Float, Float, Float) -> (Float, Float, Float) -> Float
distanciaManhattan (x1, y1, z1) (x2, y2, z2) = (absoluto (x1 - x2)) + (absoluto (y1 - y2) + (absoluto (z1 - z2))) 


absoluto :: Float -> Float
absoluto n
    | n >= 0    = n
    | otherwise = -n


