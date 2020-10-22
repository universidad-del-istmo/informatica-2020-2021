module Proyecto exposing (..)

-- 1. COPO DE NIEVE DE KOCH

coordenada1 = (0,0)
coordenada2 = (45,77.94228724)
coordenada3 = (90,0)

distancia (x1,y1) (x2,y2) = sqrt ( (x2-x1)^2 + (y2-y1)^2 )

snowflake n =
    case n of
    0 -> [coordenada1, coordenada2, coordenada3]
    x -> snowflakeAux n coordenada1 coordenada2 coordenada3

snowflakeAux (c1, c1) (c2, c2) (c3, c3) =
    case (c1, c1) (c2, c2) (c3, c3) of
    () -> []
    (x1, y1) (x2, y2) (x3, y3) -> ((distancia (x1, y1) (x2, y2)) * (1/6))