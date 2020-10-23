module Notas4 exposing (..)

-- 3. CUADRADO DE MAURINSKI

-- Fórmula que genera el cuadrado inicial:

cua x y l =
    [(x, y), (x, (y + l)), ((x + l,y + l)), ((x + l), y)]

-- Cuadrado inicial (Recursión 0):

cuadrado = cua 0 0 50

-- Función recursiva (Genera más cuadrados en base al inicial):

division x y l n m =
    if n == m
    then [cua x y l]
    else
        (division x y (l/2) (n + 1) m) ++
        (division (x + (l/2)) y (l/2) (n + 1) m) ++
        (division x (y + (l/2)) (l/2) (n + 1) m) ++
        (division (x + (l/2)) (y + (l/2)) (l/2) (n + 1) m)