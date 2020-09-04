module Laboratorio3 exposing (..)

-- Ejercicio #1
-- Escriba una funcion que acepta dos *parejas ordenadas* de numeros reales. Estas parejas representan coordenadas 
-- cartesianas en dos dimensiones. La función debe calcular la *distancia euclideana* entre los dos puntos.

distancia (x1,y1) (x2,y2) = ((x2-x1)^2+(y2-y1)^2)^1/2

-- Ejercicio #2

-- Escriba una función que acepta 3 *parejas ordenadas* que representan coordenadas cartesianas. Esta función 
-- debe retornar una pareja ordenada con los dos puntos más cercanos que se le dieron como parametros.

tres (x1,y1) (x2,y2) (x3,y3) = 
    if ((x2-x1)^2+(y2-y1)^2)^1/2 < ((x3-x2)^2+(y3-y2)^2)^1/2 && ((x3-x2)^2+(y3-y2)^2)^1/2 < ((x1-x3)^2+(y1-y3)^2)^1/2
    then ((x1,y1),(x2,y2))
    else if ((x3-x2)^2+(y3-y2)^2)^1/2 < ((x1-x3)^2+(y1-y3)^2)^1/2 && ((x1-x3)^2+(y1-y3)^2)^1/2 < ((x2-x1)^2+(y2-y1)^2)^1/2 
    then ((x2,y2),(x3,y3))
    else ((x3,y3),(x1,y1))

-- Ejercicio #3

-- Escriba una función que acepta 3 *parejas ordenadas* de numeros reales que representan coordenadas cartesianas. 
-- Esta función debe retornar **True** si esas coordenadas corresponden a los vertices de un triangulo valido; de lo contrario retornar **False**.

triangulo (x1,y1) (x2,y2) (x3,y3) = 
    if abs((x1*(y2-y3)+x2*(y3-y1)+x3*(y1-y2)))/2 == 0
    then False
    else True

-- Ejercicio #4

-- Escriba una función que acepta 3 *parejas ordenadas* de numeros reales que representan coordenadas cartesianas. 
-- Si estas forman un triangulo valido, retornar el area del mismo; de lo contrario retornar **Nothing**.

triangulo2 (x1,y1) (x2,y2) (x3,y3) = 
    if abs((x1*(y2-y3)+x2*(y3-y1)+x3*(y1-y2)))/2 == 0
    then Nothing
    else Just (abs((x1*(y2-y3)+x2*(y3-y1)+x3*(y1-y2)))/2)

-- Ejercicio #5

-- Escriba una función que acepta vertices de dos triangulos. Si estos son triangulos validos, 
-- retornar la suma de sus areas. De lo contrario retornar **Nothing**.

triangulo3 (xa1, ya1) (xa2, ya2) (xa3, ya3) (xb1, yb1) (xb2, yb2) (xb3, yb3) = 
    if (abs((xa1*(ya2-ya3)+xa2*(ya3-ya1)+xa3*(ya1-ya2)))/2 == 0) || (abs((xb1*(yb2-yb3)+xb2*(yb3-yb1)+xb3*(yb1-yb2)))/2 == 0)
    then Nothing
    else Just ((abs((xa1*(ya2-ya3)+xa2*(ya3-ya1)+xa3*(ya1-ya2)))/2) + (abs((xb1*(yb2-yb3)+xb2*(yb3-yb1)+xb3*(yb1-yb2)))/2))