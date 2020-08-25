module Laboratorio3 exposing (..) 

valor = 1

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
    if List.sort [d1,d2,d3] == [d1,d2,d3]
    then List.sort [d1,d2,d3]
    else if List.sort [d1,d2,d3] == [d2,d1,d3]
    then List.sort [d1,d2,d3]
    else if List.sort [d1,d2,d3] == [d3,d1,d2]
    then List.sort [d1,d2,d3]
    else List.sort [d1,d2,d3]
--


--Ejercicio 3
--Escriba una función que acepta 3 *parejas
--ordenada* de numeros reales que representan
--coordenadas cartesianas. Esta función debe
--retornar **True** si esas coordenadas
--corresponden a los vertices de un triangulo 
--válido; de lo contrario retornar **False*

--Ejercicio 4
--Escriba una función que acepta 3 *parejas
--ordenadas* de numeros reales que representan
--coordenadas cartesianas. Si estas forman un
--triángulo válido, retornar el area del mismo; de
--lo contrario retornar **Nothing**

--Ejercicio 5
--Escriba una funcion que acepta vertices de dos
--triangulos. Si estos son triangulos validos,
--retornar la suma de sus areas. De lo conrario
--retornar Nothing

