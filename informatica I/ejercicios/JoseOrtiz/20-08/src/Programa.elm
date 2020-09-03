module Programa exposing (..)

divisionOpcion numerador denominador =
    if denominador == 0
    then Nothing
    else Just (numerador/denominador)

divisionParejaOpcion (numerador, denominador) =
    divisionOpcion numerador denominador

-- Retorna una lista de tal forma que v1,v2,3
-- esten ordenados en la lista resultante ordenar v1 v2 v3 
-- ordenar v1 v2 v3 
listaV = List.sort [v1,v2,v3] 
v1 = 5 
v2 = 3
v3 = 74 
-- Si las 4 coordenadas forman un cuadrado,
-- retornar el area dentro de un just.
-- De lo contrario, retornar nothing
-- areaMaybe (x1,y1) (x2,y2) (x3,y3) (x4,y4)

areaMaybe (x1,y1) (x2,y2) (x3,y3) (x4,y4) = if 
                ((((x2-x1)^2)+((y2-y1)^2))^(1/2)) == (((x4-x3)^2)+((y4-y3)^2)^(1/2)) &&
                (((x3-x1)^2)+((y3-y1)^2)^(1/2)) == (((x4-x2)^2)+((y4-y2)^2)^(1/2)) then Just
              ( sqrt ( ((x2-x1)^2)+((y2-y1)^2) ) * sqrt ( ((x2-x1)^2)+((y2-y1)^2) ) ) else Nothing 


-- Suma el area de los dos cuadrados
--- Acepta dos cuadrados como los que utiliza
-- areaMaybe y suma sus areas.
-- Si ninguno es cuadrado, retornar 0
-- Si solo uno es cuadrado, retornar el area de ese cuadrado
-- sumarAreas

distancia1 (x1,y1) (x2,y2) (x3,y3) (x4,y4) (x5,y5) (x6,y6) (x7,y7) (x8,y8) 

            = sqrt  ( ((x2-x1)^2)+((y2-y1)^2) )

distancia2 (x1,y1) (x2,y2) (x3,y3) (x4,y4) (x5,y5) (x6,y6) (x7,y7) (x8,y8) 

            = sqrt  ( ((x3-x2)^2)+((y3-y2)^2) )

distancia3 (x1,y1) (x2,y2) (x3,y3) (x4,y4) (x5,y5) (x6,y6) (x7,y7) (x8,y8) 
 
            = sqrt  ( ((x4-x3)^2)+((y4-y3)^2) )

distancia5 (x1,y1) (x2,y2) (x3,y3) (x4,y4) (x5,y5) (x6,y6) (x7,y7) (x8,y8) 
 

           = sqrt  ( ((x6-x5)^2)+((y6-y5)^2) )

distancia6 (x1,y1) (x2,y2) (x3,y3) (x4,y4) (x5,y5) (x6,y6) (x7,y7) (x8,y8) 


           = sqrt  ( ((x7-x6)^2)+((y7-y6)^2) )

distancia7 (x1,y1) (x2,y2) (x3,y3) (x4,y4) (x5,y5) (x6,y6) (x7,y7) (x8,y8) 

            = sqrt  ( ((x8-y7)^2)+((y8-y7)^2) )


            
sumarAreas (x1,y1) (x2,y2) (x3,y3) (x4,y4) (x5,y5) (x6,y6) (x7,y7) (x8,y8)  
        = Maybe.withDefault 0  ( areaMaybe (x1,y1) (x2,y2) (x3,y3) (x4,y4)   ) 
         + Maybe.withDefault 0  ( areaMaybe (x5,y5) (x6,y6) (x7,y7) (x8,y8)   )