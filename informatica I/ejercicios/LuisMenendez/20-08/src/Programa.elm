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
    [v1] ++ [v2] ++ [v3]


-- Si las 4 coordenadas forman un cuadrado,
-- retornar el area dentro de un just.
-- De lo contrario, retornar nothing
areaMaybe (x1,y1) (x2,y2) (x3,y3) (x4,y4) =
    if 
    (((((x1-x2)^2)+((y1-y2)^2))^1/2) == ((((x2-x3)^2)+((y2-y3)^2))^1/2)) && 
    (((((x2-x3)^2)+((y2-y3)^2))^1/2) == ((((x3-x4)^2)+((y3-y4)^2))^1/2)) && 
    (((((x3-x4)^2)+((y3-y4)^2))^1/2) == ((((x4-x1)^2)+((y4-y1)^2))^1/2)) && 
    (((((x4-x1)^2)+((y4-y1)^2))^1/2) == ((((x1-x2)^2)+((y1-y2)^2))^1/2))
    then Just ((((((x1-x2)^2)+((y1-y2)^2))^1/2))^2)
    else Nothing


-- Suma el area de los dos cuadrados
--- Acepta dos cuadrados como los que utiliza
-- areaMaybe y suma sus areas.
-- Si ninguno es cuadrado, retornar 0
-- Si solo uno es cuadrado, retornar el area de ese cuadrado
sumarAreas (ax1,ay1) (ax2,ay2) (ax3,ay3) (ax4,ay4) (bx1,by1) (bx2,by2) (bx3,by3) (bx4,by4) =
    Maybe.withDefault 0 (areaMaybe (ax1,ay1) (ax2,ay2) (ax3,ay3) (ax4,ay4))
    + Maybe.withDefault 0 (areaMaybe (bx1,by1) (bx2,by2) (bx3,by3) (bx4,by4))