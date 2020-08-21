module Programa exposing (..)

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

areaMaybe (x1,y1) (x2,y2) (x3,y3) (x4,y4) = 
    let
        centrox = (x1+x2+x3+x4)/4
        centroy = (y1+y2+y3+y4)/4
        vectorx = x1-(centrox)
        vectory = y1-(centroy)
        vector2x= -vectory
        vector2y= vectorx
        verificacion=   
            (centrox-vectorx,centroy-vectory) == (x4,y4) || 
            (centrox+vector2x,centroy+vector2y) == (x3,y3) ||
            (centrox-vector2x,centroy-vector2y) == (x2,y2)
        area=(((x1-centrox)*2)^2) /= 0
    in
    if verificacion == True && area==True
    then Just (((x1-centrox)*2)^2) 
    else Nothing

-- Suma el area de los dos cuadrados
--- Acepta dos cuadrados como los que utiliza
-- areaMaybe y suma sus areas.
-- Si ninguno es cuadrado, retornar 0
-- Si solo uno es cuadrado, retornar el area de ese cuadrado

sumarAreas (x1,y1) (x2,y2) (x3,y3) (x4,y4) (x5,y5) (x6,y6) (x7,y7) (x8,y8)= 

    let
    --Para el cuadradado 1
        centrox = (x1+x2+x3+x4)/4
        centroy = (y1+y2+y3+y4)/4
        vectorx = x1-(centrox)
        vectory = y1-(centroy)
        vector2x= -vectory
        vector2y= vectorx
        verificacion=   
            (centrox-vectorx,centroy-vectory) == (x4,y4) ||
            (centrox+vector2x,centroy+vector2y) == (x3,y3) ||
            (centrox-vector2x,centroy-vector2y) == (x2,y2)
    --Para el cuadrado 2
        centrox2 = (x5+x6+x7+x8)/4
        centroy2 = (y5+y6+y7+y8)/4
        vectorx2 = x5-(centrox2)
        vectory2 = y5-(centroy2)
        vector2x2= -vectory2
        vector2y2= vectorx2
        verificacion2=   
            (centrox2-vectorx2,centroy2-vectory2) == (x8,y8) ||
            (centrox2+vector2x2,centroy2+vector2y2) == (x7,y7) ||
            (centrox2-vector2x2,centroy2-vector2y2) == (x6,y6)
    --El area de cada cuadrado
        area1= (((x1-centrox)*2)^2)
        area2= (((x5-centrox2)*2)^2)
    --Un lado no puede ser 0
        lado= area1 /= 0
        lado2= area2 /= 0
        ambos= verificacion2 == True && verificacion==True
    in
    --si ambos son verdaderos se suman
    if verificacion2 && verificacion && lado && lado2
    then Just (area1+area2)
    --si el cuadrado 1 es verdadero arrojar su area
    else if verificacion2==False && verificacion==True
    then Just(area1)
    --si el cuadrado 2 es verdadero arrojar su area
    else if verificacion2==True && verificacion==False 
    then Just(area2)
    --si ninguno es cuadrado
    else Nothing



