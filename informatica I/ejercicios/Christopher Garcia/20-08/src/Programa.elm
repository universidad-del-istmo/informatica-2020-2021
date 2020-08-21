module Programa exposing (..)

divisionOpcion numerador denominador =
    if denominador == 0
    then Nothing
    else Just (numerador/denominador)

divisionParejaOpcion (numerador,denominador) =
    divisionOpcion numerador denominador


--Retorna una lista de tal forma que v1,v2,3
--esten ordenados en la lista resultante 
ordenar v1 v2 v3 =
    List.sort [v1,v2,v3]

-- si las 4 coordenadas forman un cuadrado
--retornar el area dentro de un just.
--de lo contrario, retornar nothing 

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
        comprobar1 =
            p1 == p2 &&  p2 == p3 && p3 == p4 && p4 == p1
    in 
    if comprobar1 == True
    then Just ((p1)^2)
    else Nothing


--suma el area de dos cuadrados
-- acepta dos cuadrados como los que utiliza 
--areaMaybe
-- si solo uno es cuadrado, retornar el area de ese cuadrado




sumaArea (x1,y1) (x2,y2) (x3,y3) (x4,y4) (l1,q1) (l2,q2) (l3,q3) (l4,q4) =
    let
        p1 =
            areaMaybe (x1,y1) (x2,y2) (x3,y3) (x4,y4)
        p2 =
            areaMaybe (l1,q1) (l2,q2) (l3,q3) (l4,q4)
    in 
    if p1 == Nothing && p2 == Nothing
    then 0
        else if p1 == Nothing 
        then Maybe.withDefault 0 p2
            else if p2 == Nothing 
            then Maybe.withDefault 0 p1
                else Maybe.withDefault 0 p1 + Maybe.withDefault 0 p2
    

