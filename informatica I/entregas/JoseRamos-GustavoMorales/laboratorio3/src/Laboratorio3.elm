module Laboratorio3 exposing (..) 

--Ejercicio 1
--Escriba una función que acepta dos *paerejas
--ordenaas* de numero reales. Estas parejas
--representan coordenadas cartesianas en dos
--dimensiones. La función debe calcular la
--distancia euclidena* entre los dos puntos

diseucle (x1,y1) (x2,y2) = sqrt(((x2-x1)^2)+((y2-y1)^2))

--Ejercicio 2
--Escriba una función que acepta 3 *parejas
--ordenadas* que representan coordenadas
--cartesianas. Esta función debe retornar una
--pareja ordenada con los dos puntos más cercanos
--que se le dieron como parametros

puntomascercano (x1,y1) (x2,y2) (x3,y3) = 
    let
        d1=  sqrt(((x2-x1)^2)+((y2-y1)^2))
        d2=  sqrt(((x3-x2)^2)+((y3-y2)^2))
        d3=  sqrt(((x3-x1)^2)+((y3-y1)^2))
    in
    if d1 <= d2 && d1 <= d3
    then [(x1,y1),(x2,y2)]
    else if d2 <= d3 && d2 <= d1
    then [(x2,y2),(x3,y3)]
    else [(x3,y3),(x1,y1)]

--Ejercicio 3
--Escriba una función que acepta 3 *parejas
--ordenada* de numeros reales que representan
--coordenadas cartesianas. Esta función debe
--retornar **True** si esas coordenadas
--corresponden a los vertices de un triangulo 
--válido; de lo contrario retornar **False*

triangulo (x1,y1) (x2,y2) (x3,y3) = 
    let
        a=  sqrt(((x2-x1)^2)+((y2-y1)^2))
        b=  sqrt(((x3-x2)^2)+((y3-y2)^2))
        c=  sqrt(((x3-x1)^2)+((y3-y1)^2))
    in 
    if a+b > c && a+c > b && c+b > a
    then True
    else False

--Ejercicio 4
--Escriba una función que acepta 3 *parejas
--ordenadas* de numeros reales que representan
--coordenadas cartesianas. Si estas forman un
--triángulo válido, retornar el area del mismo; de
--lo contrario retornar **Nothing**

areaTriangulo (x1,y1) (x2,y2) (x3,y3) = 
    let
        a=  sqrt(((x2-x1)^2)+((y2-y1)^2))
        b=  sqrt(((x3-x2)^2)+((y3-y2)^2))
        c=  sqrt(((x3-x1)^2)+((y3-y1)^2))
        s= (a+b+c)/2
    in 
    if a+b > c && a+c > b && c+b > a
    then Just (sqrt(s*(s-a)*(s-b)*(s-c)))
    else Nothing

--Ejercicio 5
--Escriba una funcion que acepta vertices de dos
--triangulos. Si estos son triangulos validos,
--retornar la suma de sus areas. De lo conrario
--retornar Nothing

sumaAreaTriangulo (x1,y1) (x2,y2) (x3,y3) (x4,y4) (x5,y5) (x6,y6) = 
    let
        a=  sqrt(((x2-x1)^2)+((y2-y1)^2))
        b=  sqrt(((x3-x2)^2)+((y3-y2)^2))
        c=  sqrt(((x3-x1)^2)+((y3-y1)^2))
        s= (a+b+c)/2
        a2=  sqrt(((x5-x4)^2)+((y5-y4)^2))
        b2=  sqrt(((x6-x5)^2)+((y6-y5)^2))
        c2=  sqrt(((x6-x4)^2)+((y6-y4)^2))
        s2= (a2+b2+c2)/2
    in 
    if (a+b > c && a+c > b && c+b > a) && (a2+b2 > c2 && a2+c2 > b2 && c2+b2 > a2)
    then Just ( (sqrt(s*(s-a)*(s-b)*(s-c)))+(sqrt(s2*(s2-a2)*(s2-b2)*(s2-c2))) )
    else Nothing


