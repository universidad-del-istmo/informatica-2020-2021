module Programa exposing (..)

divisionOpcion numerador denominador = 
    if denominador == 0 
    then Nothing 
    else Just (numerador/denominador)

divisionParejaOpcion (numerador, denominador) =
    divisionOpcion numerador denominador

-- Ordenar v1 v2 v3 = ?
-- Retornar una lista de tal forma que v1, v2, v3
-- Esten ordenados en la lista resultante

ordenar v1 v2 v3 =
    List.sort [v1, v2, v3]

-- areaMaybe (x1, y1) (x2, y2) (x3,y3) (x4,y4) = ?
-- Si las 4 coordenasdas forman un cuadrado 
-- Retornar el area dentro de un Just
-- De lo contrario, retornar un Nothing 

areaMaybe (x1,y1) (x2, y2) (x3, y3) (x4, y4) =
    let
        z1 = 
            sqrt((x2-x1)^2 + (y2-y1)^2)
        z2 = 
            sqrt((x3-x2)^2 + (y3-y2)^2)
        z3 = 
            sqrt((x4-x3)^2 + (y4-y3)^2)
        z4 = 
            sqrt((x1-x4)^2 + (y1-y4)^2)
 
        compro1 = 
            z1 == z2 && z3 == z4 && z1 == z3 && z2 == z4

    in
    
    if compro1 == True
    then Just ((z1)^2)
    else Nothing



-- sumarAreas ? ? = ?
-- Suma el area de dos cuadrados
-- Acepta dos cuadrados como los que utiliza
-- Area Maybe y suma sus areas
-- Si ninguno es cuadrado, retornar 0
-- Si solo uno es cuadrado, retornar el area de ese cuadrado

sumarAreas (x1,y1) (x2,y2) (x3,y3) (x4,y4) (v1,w1) (v2,w2) (v3,w3) (v4,w4) =

    let
        z = 
            areaMaybe (x1,y1) (x2,y2) (x3,y3) (x4,y4)
        
        
        z1 =
            areaMaybe (v1,w1) (v2,w2) (v3,w3) (v4,w4)

    in

    if z == Nothing
    then Maybe.withDefault 0 z1
    else if z1 == Nothing
        then Maybe.withDefault 0 z
        else if z == Nothing && z1 == Nothing
            then 0
            else
                Maybe.withDefault 0 z + Maybe.withDefault 0 z1