module Programa  exposing (..)

--ejercicio 1 

coordenadaCartesiana ((x, x1),(y1, y2)) = (((x1 - x)^2) + ((y2 - y)^2))^1/2


--ejercicio 2

coordenadaOrden ((v1,v2),(v3,v4),(v5,v6)) = 
let
c1 = sqrt ((v2 - v1)^2) + ((v4 - v3)^2)
c2 = sqrt ((v2 - v1)^2) + ((v6 - v5)^2)
c3 = sqrt ((v6 - v5)^2) + ((v4 - v3)^2)
comprobar = (c1>c2) || (c1>c3) 

comprabar2 = (c2>c1) || (c2>c3)
comprabar3 = (c3>c2) || (c3>c3)
in 
if comprobar == true  
then ((v1,v2),(v3,v4))
else Nothing 

if comprobar2 == true 
then ((v1,v2),(v5,v6))
else Nothing

if comporbar 3 == true 
then ((v3,v4),(v5,v6))
else Nothing 


--ejercicio 3

coordenadaCartesiana2 ((v1,v2),(v3,v4),(v5,v6)) = 
let
c1 = (((v2 - v1)^2) + ((v4 - v3)^2))^1/2
c2 = (((v2 - v1)^2) + ((v6 - v5)^2))^1/2
c3 = (((v6 - v5)^2) + ((v4 - v3)^2))^1/2
comprobar = c1^2 + c2^2 == c3^2
in 
if comprobar == true
then true 
else false 

--ejercicio 4
coordenadaCartesiana2 ((v1,v2),(v3,v4),(v5,v6)) = 
let
c1 = (((v2 - v1)^2) + ((v4 - v3)^2))^1/2
c2 = (((v2 - v1)^2) + ((v6 - v5)^2))^1/2
c3 = (((v6 - v5)^2) + ((v4 - v3)^2))^1/2
comprobar = c1^2 + c2^2 == c3^2
s = (c1 + c2 + c3)/2

in 
if comprobar == true
then ((s*(s-c1)*(s-c2)*(s-c3))^1/2)
else nothing

--ejercicio 5
sumarAreas (ax1,ay1) (ax2,ay2) (ax3,ay3) (bx1,by1) (bx2,by2) (bx3,by3) =
    if triangValido (ax1,ay1) (ax2,ay2) (ax3,ay3) && triangValido (bx1,by1) (bx2,by2) (bx3,by3) 
    then Just (Maybe.withDefault 0 (triangValido2 (ax1,ay1) (ax2,ay2) (ax3,ay3)) + Maybe.withDefault 0 (triangValido2 (bx1,by1) (bx2,by2) (bx3,by3)))
    else Nothing
    
