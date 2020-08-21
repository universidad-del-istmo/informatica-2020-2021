module Programa exposing (..)
import Maybe
import Maybe
import Maybe

divisionOpcion numerador denominador =
    if denominador == 0
    then Nothing
    else Just (numerador/denominador)

divisionParejaOpcion (numerador, denominador) =
    divisionOpcion numerador denominador

-- Retorna una lista de tal forma que v1,v2,3
-- esten ordenados en la lista resultante
ordenar v1 v2 v3 = 
    if v1 < v2 && v1 < v3 && v2 < v3 then [v1, v2, v3] else 
        (if v1 < v2 && v1 < v3 && v3 < v2 then [v1, v3, v2] else
            (if v2 < v1 && v2 < v3 && v3 < v1 then [v2, v3, v1] else 
                (if v3 < v1 && v3 < v2 && v2<v1 then [v3, v2, v1] else
                    (if v2 < v1 && v2 < v3 && v1 < v3 then [v2, v1, v3] else
                        [v3, v1, v2]))))

-- Si las 4 coordenadas forman un cuadrado,
-- retornar el area dentro de un just.
-- De lo contrario, retornar nothing
areaMaybe (x1,y1) (x2,y2) (x3,y3) (x4,y4) = 
    if abs(x1 - x2) == abs(y1 - y3)
    then 
        (if abs(y1 - y3) == abs(x4 - x3) then 
            (if abs(x4 - x3) == abs(y4 - y2) then 
                (if abs(y4 - y2) == abs(x1 - x2) then Just ((x1 - x2)^2) else Nothing) 
            else Nothing) 
         else Nothing) 
    else Nothing

--- Adjunto imagen guia que use para comprobar el cuadrado. (CuadradoParaInciso2.PNG)
--- Valores utilizados en prueba: (1,4) (4,4) (1,1) (4,1)



-- Suma el area de los dos cuadrados
--- Acepta dos cuadrados como los que utiliza
-- areaMaybe y suma sus areas.
-- Si ninguno es cuadrado, retornar 0
-- Si solo uno es cuadrado, retornar el area de ese cuadrado


sumAreas (x1,y1) (x2,y2) (x3,y3) (x4,y4) (x5,y5) (x6,y6) (x7,y7) (x8,y8) = 
    if Maybe.withDefault 0 (areaMaybe (x1,y1) (x2,y2) (x3,y3) (x4,y4)) + 
        Maybe.withDefault 0 (areaMaybe (x5,y5) (x6,y6) (x7,y7) (x8,y8)) /= 0
        then Maybe.withDefault 0 (areaMaybe (x1,y1) (x2,y2) (x3,y3) (x4,y4)) + 
        Maybe.withDefault 0 (areaMaybe (x5,y5) (x6,y6) (x7,y7) (x8,y8)) 
        else 
            (if Maybe.withDefault 0 (areaMaybe (x1,y1) (x2,y2) (x3,y3) (x4,y4)) == 0
            then (if Maybe.withDefault 0 (areaMaybe (x5,y5) (x6,y6) (x7,y7) (x8,y8)) /= 0
                    then Maybe.withDefault 0 (areaMaybe (x5,y5) (x6,y6) (x7,y7) (x8,y8)) else 0)
            else 
                (if Maybe.withDefault 0 (areaMaybe (x5,y5) (x6,y6) (x7,y7) (x8,y8)) == 0 
                then (if Maybe.withDefault 0 (areaMaybe (x1,y1) (x2,y2) (x3,y3) (x4,y4)) /= 0
                        then Maybe.withDefault 0 (areaMaybe (x1,y1) (x2,y2) (x3,y3) (x4,y4)) else 0) 
                else 0))

--(1,4) (4,4) (1,1) (4,1) (2,5) (5,5) (2,2) (5,2)

