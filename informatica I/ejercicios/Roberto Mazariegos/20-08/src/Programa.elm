module Programa exposing (..)

-- 1  
ordenar v1 v2 v3 =
List.sort [v1,v2,v3]

--2
areaMaybe (x1,y1) (x2,y2) (x3,y3) (x4,y4) =
let 
c1 = sqrt((x2-x1)^2 + (y2-y1)^2)
c2 = sqrt((x3-x2)^2 + (y3-y2)^2)
c3 = sqrt((x4-x3)^2 + (y4-y3)^2)
c4 = sqrt((x1-x4)^2 + (y1-y4)^2)
comprobar = c1 == c2 &&  c2 == c3 && c3 == c4 && c4 == c1

in
if comprobar == True
then Just ((c1)^2)
else Nothing 
-- 3
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