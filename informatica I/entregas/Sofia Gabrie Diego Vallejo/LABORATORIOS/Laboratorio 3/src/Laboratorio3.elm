module Laboratorio3 exposing (..)

--GRUPO SOFIA GABRIE - DIEGO VALLEJO

--## Ejercicio #1
--Escriba una funcion que acepta dos *parejas ordenadas* de numeros reales. Estas parejas representan coordenadas cartesianas en dos
--dimensiones. La función debe calcular la *distancia euclideana* entre los dos puntos.

distEuc (x1,y1) (x2,y2) = sqrt ((x2-x1)^2 + (y2-y1)^2)


--## Ejercicio #2
--Escriba una función que acepta 3 *parejas ordenadas* que representan coordenadas cartesianas. Esta función debe retornar una pareja 
--ordenada con los dos puntos más cercanos que se le dieron como parametros.

parejaCerc (x1,y1) (x2,y2) (x3,y3) = 
    if distEuc (x1,y1) (x2,y2) < distEuc (x2,y2) (x3,y3) 
    && distEuc (x1,y1) (x2,y2) < distEuc (x1,y1) (x3,y3) 
    then  ((x1,y1) , (x2,y2))
    else ( if distEuc (x2,y2) (x3,y3) < distEuc (x1,y1) (x3,y3)
    then ((x2,y2) , (x3,y3)) else ((x1,y1) , (x3,y3)))


--## Ejercicio #3
--Escriba una función que acepta 3 *parejas ordenadas* de numeros reales que representan coordenadas cartesianas. Esta función debe 
--retornar **True** si esas coordenadas corresponden a los vertices de un triangulo valido; de lo contrario retornar **False**.
--Pruebas realizadas con:
--(1,1) (2,2) (3,3) No es triangulo
--(1,1) (1,3) (3,1) Si es triangulo
ejercicio3 (x1,y1) (x2,y2) (x3,y3) = 
    if abs((x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2)))/2 /= 0
    then True
    else False


--## Ejercicio #4
--Escriba una función que acepta 3 *parejas ordenadas* de numeros reales que representan coordenadas cartesianas. Si estas forman un 
--triangulo valido, retornar el area del mismo; de lo contrario retornar **Nothing**.
--(1,1) (2,2) (3,3) No es triangulo
--(1,1) (1,3) (3,1) Si es triangulo
ejercicio4 (x1,y1) (x2,y2) (x3,y3) = 
    if (x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2))/2 /= 0
    then Just (((abs(x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2))))/2)
    else Nothing


--## Ejercicio #5
--Escriba una función que acepta vertices de dos triangulos. Si estos son triangulos validos, retornar la suma de sus areas. De lo
--contrario retornar **Nothing**.
--(1,1) (2,2) (3,3) (4,4) (5,5) (6,6) No son triangulos
--(1,1) (1,3) (3,1) (2,0) (2,2) (4,2) Si son triangulos
ejercicio5 (x1,y1) (x2,y2) (x3,y3) (x4,y4) (x5,y5) (x6,y6) =
    if (x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2))/2 /= 0 && (x4 * (y5 - y6) + x5 * (y6 - y4) + x6 * (y4 - y5))/2 /= 0
    then Just((abs(x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2))/2) + (abs(x4 * (y5 - y6) + x5 * (y6 - y4) + x6 * (y4 - y5))/2))
    else Nothing
   