module Programa exposing (..)

divisionOpcion numerador denominador =
    if denominador == 0
    then Nothing
    else Just (numerador/denominador)

divisionParejaOpcion (numerador, denominador) =
    divisionOpcion numerador denominador

-- Retorna una lista de tal forma que v1,v2,3
-- esten ordenados en la lista resultante
ordenar v1 v2 v3 = 
    if v1 < v2 && v1 < v3 && v2 < v3 
    then Just (v1,v2,v3)
    else 
    if v1 < v2 && v1 < v3 && v2 > v3 
    then Just (v1,v3,v2)
    else
    if v2 < v1 && v2 < v3 && v1 < v3
    then Just (v2,v1,v3)
    else
    if v2 < v1 && v2 < v3 && v1 > v3
    then Just (v2,v3,v1)
    else
    if v3 < v1 && v3 < v2 && v1 < v2
    then Just (v3,v1,v2)
    else Just (v3,v2,v1)


-- Si las 4 coordenadas forman un cuadrado,
-- retornar el area dentro de un just.
-- De lo contrario, retornar nothing
areaMaybe (x1,y1) (x2,y2) (x3,y3) (x4,y4) = 
    if sqrt((x2-x1)^2+(y2-y1)^2) == sqrt((x4-x3)^2+(y4-y3)^2) && sqrt((x4-x1)^2+(y4-y1)^2) == sqrt((x3-x2)^2+(y3-y2)^2) && sqrt((x2-x1)^2+(y2-y1)^2) == sqrt((x3-x2)^2+(y3-y2)^2)
    then Just (sqrt((x2-x1)^2+(y2-y1)^2)*sqrt((x4-x1)^2+(y4-y1)^2))
    else Nothing


-- Suma el area de los dos cuadrados
--- Acepta dos cuadrados como los que utiliza
-- areaMaybe y suma sus areas.
-- Si ninguno es cuadrado, retornar 0
-- Si solo uno es cuadrado, retornar el area de ese cuadrado
sumarAreas (x1,y1) (x2,y2) (x3,y3) (x4,y4) (x5,y5) (x6,y6) (x7,y7) (x8,y8) =
    if sqrt((x2-x1)^2+(y2-y1)^2) == sqrt((x4-x3)^2+(y4-y3)^2) && sqrt((x4-x1)^2+(y4-y1)^2) == sqrt((x3-x2)^2+(y3-y2)^2) && sqrt((x2-x1)^2+(y2-y1)^2) == sqrt((x3-x2)^2+(y3-y2)^2)
    && sqrt((x6-x5)^2+(y6-y5)^2) == sqrt((x7-x6)^2+(y7-y6)^2) && sqrt((x7-x6)^2+(y7-y6)^2) == sqrt((x8-x7)^2+(y8-y7)^2) && sqrt((x8-x7)^2+(y8-y7)^2) == sqrt((x5-x8)^2+(y5-y8)^2)
    then Just (sqrt((x2-x1)^2+(y2-y1)^2)*sqrt((x4-x1)^2+(y4-y1)^2)+sqrt((x7-x6)^2+(y7-y6)^2)*sqrt((x8-x7)^2+(y8-y7)^2))
    else 
    if sqrt((x2-x1)^2+(y2-y1)^2) == sqrt((x4-x3)^2+(y4-y3)^2) && sqrt((x4-x1)^2+(y4-y1)^2) == sqrt((x3-x2)^2+(y3-y2)^2) && sqrt((x2-x1)^2+(y2-y1)^2) == sqrt((x3-x2)^2+(y3-y2)^2)
    then Just (sqrt((x2-x1)^2+(y2-y1)^2)*sqrt((x4-x1)^2+(y4-y1)^2))
    else
    if sqrt((x6-x5)^2+(y6-y5)^2) == sqrt((x7-x6)^2+(y7-y6)^2) && sqrt((x7-x6)^2+(y7-y6)^2) == sqrt((x8-x7)^2+(y8-y7)^2) && sqrt((x8-x7)^2+(y8-y7)^2) == sqrt((x5-x8)^2+(y5-y8)^2)
    then Just (sqrt((x7-x6)^2+(y7-y6)^2)*sqrt((x8-x7)^2+(y8-y7)^2))
    else Just 0