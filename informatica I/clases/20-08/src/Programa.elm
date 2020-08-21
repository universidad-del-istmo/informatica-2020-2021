module Programa exposing (..)

divisionOpcion numerador denominador =
    if denominador == 0
    then Nothing
    else Just (numerador/denominador)

divisionParejaOpcion (numerador,denominador) =
    divisionOpcion numerador denominador

--Retorna una lista de tal forma que v1,v2,3
--esten ordenados en la lista resultante 
ordenar v1 v2 v3 = ?
-- si las 4 coordenadas forman un cuadrado
--retornar el area dentro de un just.
--de lo contrario, retornar nothing 
areaMaybe (x1,y1) (x2,y2) (x3,y3) (x4,y4) = ?

--suma el area de dos cuadrados
-- acepta dos cuadrados como los que utiliza 
--areaMaybe
-- si solo uno es cuadrado, retornar el area de ese cuadrado
sumarAreas ? = ?

