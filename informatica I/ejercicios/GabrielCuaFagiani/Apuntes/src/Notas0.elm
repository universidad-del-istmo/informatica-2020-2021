module Notas0 exposing (..)

-- 1. COPO DE NIEVE DE KOCH

coordenada1 = (0,0)
coordenada2 = (45,77.94228724)
coordenada3 = (90,0)

distancia (x1,y1) (x2,y2) = sqrt ( (x2-x1)^2 + (y2-y1)^2 )

-- Ejes x de las coordenas.
ejeX1 (x1,y1) (x2,y2) = (distancia (x1,y1) (x2,y2)) * (1/6)
ejeX2 (x1,y1) (x2,y2) = (distancia (x1,y1) (x2,y2)) * (1/3)
ejeX3 (x1,y1) (x2,y2) = (distancia (x1,y1) (x2,y2)) * (1/2)
ejeX4 (x1,y1) (x2,y2) = (distancia (x1,y1) (x2,y2)) * (2/3)
ejeX5 (x1,y1) (x2,y2) = (distancia (x1,y1) (x2,y2)) * (5/6)

-- Ejes y de las coordenadas.
ejeY1 (x1,y1) (x2,y2) = (ejeX2 coordenada1 coordenada2)*(sqrt 3)/2
ejeY2 (x1,y1) (x2,y2) = (ejeX2 coordenada1 coordenada2)*(sqrt 3)/2