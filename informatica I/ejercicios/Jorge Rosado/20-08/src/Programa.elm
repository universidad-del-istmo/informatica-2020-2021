module Programa exposing (..)

-- Retorna una lista de tal forma que v1,v2,3
-- esten ordenados en la lista resultante
ordenar v1 v2 v3 = List.sort[v1,v2,v3]

-- Si las 4 coordenadas forman un cuadrado,
-- retornar el area dentro de un just.
-- De lo contrario, retornar nothing
areaMaybe (x1,y1) (x2,y2) (x3,y3) (x4,y4) = 
    if sqrt((x2-x1)^2+(y2-y1)^2)==sqrt((x4-x3)^2+(y4-y3)^2) && sqrt((x3-x1)^2+(y3-y1)^2)==sqrt((x4-x2)^2+(y4-y2)^2)
    then Just( sqrt((x2-x1)^2+(y2-y1)^2)^2)
    else Nothing

areaSuma (x1,y1) (x2,y2) (x3,y3) (x4,y4) (z1,w1) (z2,w2) (z3,w3) (z4,w4)  =
 let
        area1 =sqrt((x2-x1)^2+(y2-y1)^2)==sqrt((x4-x3)^2+(y4-y3)^2) && sqrt((x3-x1)^2+(y3-y1)^2)==sqrt((x4-x2)^2+(y4-y2)^2)
        areacorrecta=sqrt((x2-x1)^2+(y2-y1)^2)^2
        area2 =sqrt((z2-z1)^2+(w2-w1)^2)==sqrt((z4-z3)^2+(w4-w3)^2) && sqrt((z3-z1)^2+(w3-w1)^2)==sqrt((z4-z2)^2+(w4-w2)^2)
        areacorrecta2=sqrt((z2-z1)^2+(w2-w1)^2)^2
 in
 if area1 && area2
 then Just (areacorrecta + areacorrecta2)     
 else if area1==True && area2==False
 then Just (areacorrecta)
 else if  area2==True && area1==False
 then Just(areacorrecta2)
 else Just (0)