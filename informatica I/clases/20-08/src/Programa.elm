module Programa exposing (..)

divisionOpcion numerador denominador =
    if denominador == 0
    then Nothing
    else Just (numerador/denominador)

divisionParejaOpcion (numerador, denominador) =
    divisionOpcion numerador denominador

-- Retorna una lista de tal forma que v1,v2,3
-- esten ordenados en la lista resultante
ordenar v1 v2 v3 = ?

-- Si las 4 coordenadas forman un cuadrado,
-- retornar el area dentro de un just.
-- De lo contrario, retornar nothing
areaMaybe (x1,y1) (x2,y2) (x3,y3) (x4,y4) = ?

-- Suma el area de los dos cuadrados
--- Acepta dos cuadrados como los que utiliza
-- areaMaybe y suma sus areas.
-- Si ninguno es cuadrado, retornar 0
-- Si solo uno es cuadrado, retornar el area de ese cuadrado
sumarAreas = ?