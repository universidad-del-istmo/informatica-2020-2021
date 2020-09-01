module Programa exposing (..)

-- Ejercicio #1

--Escriba una funcion que acepta dos *parejas ordenadas* de numeros reales. Estas parejas representan coordenadas cartesianas en dos dimensiones. La función debe calcular la *distancia euclideana* entre los dos puntos.

parejas (x1,y1) (x2,y2) = 
    sqrt((x2-x1)^2+(y2-y1)^2)

--Ejercicio #2

--Escriba una función que acepta 3 *parejas ordenadas* que representan coordenadas cartesianas. Esta función debe retornar una pareja ordenada con los dos puntos más cercanos que se le dieron como parametros.

parejas2 (x1,y1) (x2,y2) (x3,y3) = 
    if parejas (x1,y1) (x2,y2) < parejas (x2,y2) (x3,y3) && parejas (x2,y2) (x3,y3) < parejas (x1,y1) (x3,y3)
    then ((x1,y1),(x2,y2))
    else 
    if parejas (x2,y2) (x3,y3) < parejas (x1,y1) (x2,y2) && parejas (x2,y2) (x3,y3) < parejas (x1,y1) (x3,y3)
    then ((x2,y2),(x3,y3))
    else ((x3,y3),(x1,y1))

--Ejercicio #3

--Escriba una función que acepta 3 *parejas ordenadas* de numeros reales que representan coordenadas cartesianas. Esta función debe retornar **True** si esas coordenadas corresponden a los vertices de un triangulo valido; de lo contrario retornar **False**.

triangValido (x1,y1) (x2,y2) (x3,y3) =
    if x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2) /= 0
    then True
    else False

--Ejercicio #4

--Escriba una función que acepta 3 *parejas ordenadas* de numeros reales que representan coordenadas cartesianas. Si estas forman un triangulo valido, retornar el area del mismo; de lo contrario retornar **Nothing**.

triangValido2 (x1,y1) (x2,y2) (x3,y3) =
    if x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2) /= 0
    then Just ((x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2))/2)
    else Nothing

--Ejercicio #5

--Escriba una función que acepta vertices de dos triangulos. Si estos son triangulos validos, retornar la suma de sus areas. De lo contrario retornar **Nothing**.

sumarAreas (ax1,ay1) (ax2,ay2) (ax3,ay3) (bx1,by1) (bx2,by2) (bx3,by3) =
    if triangValido (ax1,ay1) (ax2,ay2) (ax3,ay3) && triangValido (bx1,by1) (bx2,by2) (bx3,by3) 
    then Just (Maybe.withDefault 0 (triangValido2 (ax1,ay1) (ax2,ay2) (ax3,ay3)) + Maybe.withDefault 0 (triangValido2 (bx1,by1) (bx2,by2) (bx3,by3)))
    else Nothing