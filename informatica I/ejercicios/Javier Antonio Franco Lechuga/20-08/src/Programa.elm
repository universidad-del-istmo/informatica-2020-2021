module Programa exposing (..)

-- Retorna una lista de tal forma que v1,v2,3
-- esten ordenados en la lista resultante
ordenar v1 v2 v3 =
    List.sort [v1, v2, v3]

-- Si las 4 coordenadas forman un cuadrado,
-- retornar el area dentro de un just.
-- De lo contrario, retornar nothing
areaMaybe (x1,y1) (x2,y2) (x3,y3) (x4,y4) = 
    let 
        p1 = 
            sqrt((x2-x1)^2 + (y2-y1)^2)
        p2 = 
            sqrt((x3-x2)^2 + (y3-y2)^2)
        p3 = 
            sqrt((x4-x3)^2 + (y4-y3)^2)
        p4 = 
            sqrt((x1-x4)^2 + (y1-y4)^2)
        comprobacion = 
            p1 == p2 && p3 == p4 && p1 == p4 && p2 == p3

    in 

    if comprobacion == True
    then Just (p1 * p2)
    else Nothing 


-- Suma el area de los dos cuadrados
--- Acepta dos cuadrados como los que utiliza
-- areaMaybe y suma sus areas.
-- Si ninguno es cuadrado, retornar 0
-- Si solo uno es cuadrado, retornar el area de ese cuadrado
sumarAreas  (x1,y1) (x2,y2) (x3,y3) (x4,y4) (a1,b1) (a2,b2) (a3,b3) (a4,b4) =
    let
        f =
            areaMaybe (x1,y1) (x2,y2) (x3,y3) (x4,y4)
        r = 
            areaMaybe (a1,b1) (a2,b2) (a3,b3) (a4,b4)
    in 
    if f == Nothing 
    then Maybe.withDefault 0 r 
    else if r == Nothing
        then Maybe.withDefault 0 f 
        else if f == Nothing && r == Nothing
        then 0
        else Maybe.withDefault 0 f + Maybe.withDefault 0 r 

