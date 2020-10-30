module ProyectoFinal exposing (..)

---------------------------------------------------------------------------------------------------
koch p =
    List.map (redondear) (kochAux [] (lados p) (0,0) 0) 

--Redondea y lo convierte en decimal
redondear= (\(x,y) -> (toFloat (round (x * 100))/100, 
                       toFloat (round (y * 100))/100))

kochAux listacoor dirs (x,y) dirInicial =
    case dirs of
    [] -> listacoor
    direccion :: resto ->
        let 
            dirActual = (+) direccion dirInicial 
            coordActual = ((-1*cos(dirActual)+x), 
                         (1* sin(dirActual))+y)
        in
            kochAux (listacoor ++ [coordActual]) resto coordActual dirActual

--120 grados 
lados p = ladosAux [(2/3)*pi,(2/3)*pi,(2/3)*pi] p 

--por 60,120,60
cambiarLados= (\x -> [x,-pi/3,2*pi/3,-pi/3])
ladosAux bs p  =
    if p > 0 then 
            ladosAux (List.concatMap (cambiarLados) (bs)) (p - 1)
    else 
        bs

--------------------------------------------------------------------------------------------------------

puntoMedio (x1,y1) (x2,y2) = [((x2+x1)/2,(y2+y1)/2)]

sierpinski p =
    triangle [(2.5,4.33),(5,0),(0,0)] p 

triangle base p =
    case base of
    [] -> base
    [( _, _ )] -> base
    [( _, _ ),( _, _ )] -> base
    ( _, _ ) :: ( _, _ ) :: ( _, _ ) :: _ :: _ -> base
    [(x1,y1),(x2,y2),(x3,y3)] -> 
        if p < 1
        then base
        else
        triangle ((x1,y1)::(puntoMedio (x1,y1) (x2,y2))++(puntoMedio (x1,y1) (x3,y3))) (p-1) ++
        triangle ((x2,y2)::(puntoMedio (x3,y3) (x2,y2))++(puntoMedio (x1,y1) (x2,y2))) (p-1) ++
        triangle ((x3,y3)::(puntoMedio (x1,y1) (x3,y3))++(puntoMedio (x2,y2) (x3,y3))) (p-1) 


-------------------------------------------------------------------------------------------------------------------

vicsek p =
     vicsekAux [(2.5,4.33),(5,0),(0,0)] p 

vicsekAux base p =
     case base of
     [] -> base
     [( _, _ )] -> base
     [( _, _ ),( _, _ )] -> base
     ( _, _ ) :: ( _, _ ) :: ( _, _ ) :: _ :: _ -> base
     [(x1,y1),(x2,y2),(x3,y3)] -> 
         if p < 1
         then base
         else 
        vicsekAux ((x1,y1)::(segmento (x1,y1) (x2,y2))++(segmento (x1,y1) (x3,y3))) (p-1) ++
        vicsekAux ((x2,y2)::(segmento (x3,y3) (x2,y2))++(segmento (x1,y1) (x2,y2))) (p-1) ++
        vicsekAux ((x3,y3)::(segmento (x1,y1) (x3,y3))++(segmento (x2,y2) (x3,y3))) (p-1) 

segmento (x1,x2) (y1,y2) = [((x2+(2*x1))/3,(y2+(2*y1))/3), ((x1+(2*x2))/3,(y1+(2*y2))/3)]
