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
    if (v1 < v2 && v1 < v3) then
        if (v2 < v3) then
            [v1, v2, v3]
        else
            [v1, v3, v2]
    else if (v2 < v1 && v2 < v3) then
        if (v1 < v3) then
            [v2, v1, v3]
        else
            [v2, v3, v1]
    else
        if (v1 < v2) then
            [v3, v1, v2]
        else
            [v3, v2, v1]



dist (x1,y1) (x2,y2) =
    sqrt((x2-x1)^2 + (y2-y1)^2)

-- ACEPTA 4 COORDENADAS UBICADAS EN SENTIDO HORARIO
ladosIguales (x1,y1) (x2,y2) (x3,y3) (x4,y4) =
    dist (x1,y1) (x2,y2) == dist (x2,y2) (x3,y3) &&
    dist (x2,y2) (x3,y3) == dist (x3,y3) (x4,y4)

-- ACEPTA 4 COORDENADAS UBICADAS EN SENTIDO HORARIO
pendientesCorrectas (x1,y1) (x2,y2) (x3,y3) (x4,y4) =
    (y2-y1)/(x2-x1) == (y3-y4)/(x3-x4) &&
    (y2-y3)/(x2-x3) == -1/((y2-y1)/(x2-x1)) &&
    (y1-y4)/(x1-x4) == -1/((y2-y1)/(x2-x1))

-- Si las 4 coordenadas forman un cuadrado,
-- retornar el area dentro de un just.
-- De lo contrario, retornar nothing
-- ACEPTA 4 COORDENADAS UBICADAS EN SENTIDO HORARIO
areaMaybe (x1,y1) (x2,y2) (x3,y3) (x4,y4) =
    if ladosIguales (x1,y1) (x2,y2) (x3,y3) (x4,y4) && pendientesCorrectas (x1,y1) (x2,y2) (x3,y3) (x4,y4) then
        Just ((dist (x1,y1) (x2,y2))^2)
    else
        Nothing

-- Suma el area de los dos cuadrados
-- Acepta dos cuadrados como los que utiliza
-- areaMaybe y suma sus areas.
-- Si ninguno es cuadrado, retornar 0
-- Si solo uno es cuadrado, retornar el area de ese cuadrado
-- ACEPTA 4 COORDENADAS UBICADAS EN SENTIDO HORARIO POR CADA CUADRADO
sumarAreas (ax1,ay1) (ax2,ay2) (ax3,ay3) (ax4,ay4) (bx1,by1) (bx2,by2) (bx3,by3) (bx4,by4) =
    Maybe.withDefault 0 (areaMaybe (ax1,ay1) (ax2,ay2) (ax3,ay3) (ax4,ay4))
    + Maybe.withDefault 0 (areaMaybe (bx1,by1) (bx2,by2) (bx3,by3) (bx4,by4))
