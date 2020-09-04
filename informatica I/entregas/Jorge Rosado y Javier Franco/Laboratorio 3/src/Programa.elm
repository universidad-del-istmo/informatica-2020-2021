module Programa exposing(..)

--Ejercicio#1
-- y=sqrt(x2-x1)^2+(y2-y1)^2

    --Ejercicio 1
distanciaEuclideana (x1,y1) (x2,y2)=
    sqrt((x2-x1)^2 + (y2-y1)^2)

--Ejercicio #2
--Tres puntos P1,P2,P3

putoscercanos (x1,y1)(x2,y2)(x3,y3)=
    if distanciaEuclideana (x1,y1)(x2,y2)<distanciaEuclideana (x2,y2)(x3,y3)&&
    distanciaEuclideana (x1,y1)(x2,y2)<distanciaEuclideana (x1,y1)(x3,y3)
    then ((x1,y1) , (x2,y2))
    else if distanciaEuclideana (x2,y2)(x3,y3)<distanciaEuclideana (x1,y1)(x2,y2)&&
    distanciaEuclideana (x2,y2)(x3,y3)<distanciaEuclideana (x1,y1)(x3,y3)
    then ((x2,y2) , (x3,y3))
    else ((x1,y1) ,(x3,y3))


--Ejercicio#3
-- Tres punto Pa,Pb,Pc

valido (x1,y1)(x2,y2)(x3,y3) =

    let 
        a = distanciaEuclideana (x1,y1) (x2,y2)
        b = distanciaEuclideana (x2,y2) (x3,y3)
        c = distanciaEuclideana (x1,y1) (x3,y3)
        semi =(a+b+c)/2

    in
    if sqrt(abs (semi*(semi-a)*(semi-b)*(semi-c))) /= 0
    then True
    else False

--Ejercio#4
triangulocomprobado (x1,y1) (x2,y2) (x3,y3) = 
    (abs((x1*(y2-y3))+(x2*(y3-y1))+(x3*(y1-y2)))/2)
    
areaTrianguloAux (x1,y1) (x2,y2) (x3,y3) =
    (abs ((((x1*y2) + (x2*y3) + (x3*y1)) - ((x1*y3) + (x3*y2) + (x2*y1)))/2))
areaTriangulo (x1,y1) (x2,y2) (x3,y3) = 
    if triangulocomprobado (x1,y1) (x2,y2) (x3,y3) /= 0
    then Just (areaTrianguloAux(x1,y1) (x2,y2) (x3,y3))
    else Nothing 

--Ejercicio#5
sumaAreaTriangulos (x1,y1) (x2,y2) (x3,y3) (a1,b1) (a2,b2) (a3,b3) =
    if triangulocomprobado (x1,y1) (x2,y2) (x3,y3) /= 0 && triangulocomprobado (a1,b1) (a2,b2) (a3,b3) /= 0  
        then Just ((Maybe.withDefault 0 (areaTriangulo (x1,y1) (x2,y2) (x3,y3))) + 
            (Maybe.withDefault 0 (areaTriangulo (a1,b1) (a2,b2) (a3,b3))))
        else Nothing 
