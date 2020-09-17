module Ejercicio exposing (..)
import String

divisionOpcion numerador denominador =
    if denominador == 0
    then Nothing
    else Just (numerador/denominador)

divisionParejaOpcion (numerador, denominador) =
    divisionOpcion numerador denominador

-- Retorna una lista de tal forma que v1,v2,3
-- esten ordenados en la lista resultante

ordenar v1 v2 v3 = List.sort [v1,v2,v3]

-- Si las 4 coordenadas forman un cuadrado,
-- retornar el area dentro de un just.
-- De lo contrario, retornar nothing

distancia (x1,y1) (x2,y2) = sqrt ( (x2-x1)^2 + (y2-y1)^2 )

areaMaybe (x1,y1) (x2,y2) (x3,y3) (x4,y4) =
    if distancia (x1,y1) (x2,y2) == distancia (x2,y2) (x3,y3) &&
       distancia (x2,y2) (x3,y3) == distancia (x3,y3) (x4,y4) &&
       distancia (x3,y3) (x4,y4) == distancia (x4,y4) (x1,y1)
    then Just ((sqrt((x2-x1)^2+(y2-y1)^2))^2)
    else Nothing

-- Suma el area de los dos cuadrados
-- Acepta dos cuadrados como los que utiliza
-- areaMaybe y suma sus areas.
-- Si ninguno es cuadrado, retornar 0
-- Si solo uno es cuadrado, retornar el area de ese cuadrado

sumarAreas (x1,y1) (x2,y2) (x3,y3) (x4,y4) (x5,y5) (x6,y6) (x7,y7) (x8,y8) =
    Maybe.withDefault 0 (areaMaybe (x1,y1) (x2,y2) (x3,y3) (x4,y4))
    + Maybe.withDefault 0 (areaMaybe (x5,y5) (x6,y6) (x7,y7) (x8,y8))