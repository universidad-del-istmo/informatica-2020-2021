module Proyecto exposing (..)

-- 2. TRIÁNGULO DE SIERPINSKI

-- Fórmula que genera el triángulo inicial:

tri x y l =
    [(x, y), ((x + l/2), y + (sin (pi/3))*l), ((x + l, y))]

-- Triángulo inicial (Recursión 0):

triangulo = tri 2 2 50

-- Función recursiva (Genera más triángulos en base al inicial):

dividir x y l n m =
    if n == m
    then [tri x y l]
    else
        (dividir x y (l/2) (n+1) m) ++ 
        (dividir (x +(l/2)) y (l/2) (n+1) m) ++
        (dividir (x +(l/4)) (y + (sin (pi/3))*(l/2)) (l/2) (n+1) m)

-- Función que acepta un número entero como parámetro y genera una
-- lista de las coordenadas de los triángulos generados recursiva-
-- mente en la función "dividir":

sierpinski x = dividir 0 0 90 0 x

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

-- Función que acepta un número entero como parámetro y genera una
-- lista de las coordenadas de los cuadrados generados recursiva-
-- mente en la función "division":

maurinski x = division 0 0 50 0 x       