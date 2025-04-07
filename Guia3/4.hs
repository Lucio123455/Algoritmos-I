-- a) productoInterno: calcula el producto interno entre dos tuplas de R×R

productoInterno :: (Rational, Rational) -> (Rational, Rational) -> Rational
productoInterno (x1, y1) (x2, y2) = x1 * x2 + y1 * y2 
