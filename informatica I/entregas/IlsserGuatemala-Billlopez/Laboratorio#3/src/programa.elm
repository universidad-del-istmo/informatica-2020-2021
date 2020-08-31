module Programa exposing(..)

--Ejercicio#1
-- y=sqrt(x2-x1)^2+(y2-y1)^2

    --Ejercicio 1
dist(x1,y1)(x2,y2)
=sqrt((x2-x1)^2 + (y2-y1)^2)

--Ejercicio #2
    --Tres puntos P1,P2,P3

putoscercanos (x1,y1)(x2,y2)(x2,y3)=
ifdist(x1,y1)(x2,y2)<(x2,y2)(x3,y3)&&
dist(x1,y1)(x2,y2)<(x1,y1)(x3,y3)
then ((x1,y1) , (x2,y2))
else if dist(x2,y2)(x3,y3)<(x1,y1)(x2,y2)&&
dist(x2,y2)(x3,y3)<(x1,y1)(x3,y3)
then ((x2,y2) , (x3,y3))
else ((x1,y1) ,(x3,y3))


--Ejercicio#3
-- Tres punto Pa,Pb,Pc

valido (x1,y1)(x2,y2)(x3,y3)

let 
a=dist (x1,y1)(x2,y2)
b=dist (x2,y2)(x3,y3)
c=dist (x1,y1)(x3,y3)
semi=(a+b+c)/2

in
if sqrt(semi*(semi-a)*(semi-b)*(semi-c)) /= 0
then True
else False


 --Ejercio#4
    coordenadas (x1,y1) (x2,y2) (x3,y3) =
    let
    a=dist (x1,y1)(x2,y2)
    b=dist (x2,y2)(x3,y3)
    c=dist (x1,y1)(x3,y3)
    in
    if sqrt(semi*(semi-a)*(semi-b)*(semi-c)) /= 0
    then Just (sqrt(semi*(semi-a)*(semi-b)*(semi-c)) /2)
    else Nothing

--Ejercicio#5
