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
sumarAreas (x1,y1) (x2,y2) (x3,y3) (x4,y4)








    


 





