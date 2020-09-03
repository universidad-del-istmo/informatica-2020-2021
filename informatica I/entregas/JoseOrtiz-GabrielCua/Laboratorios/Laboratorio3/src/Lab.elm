module Lab exposing (..)

-- EJERCICIO 1

distanciaEuclidiana (x1,y1) (x2,y2) = sqrt ( (x2-x1)^2 + (y2-y1)^2 )


-- EJERCICIO 2

-- Distancia de 1 con 2
distancia1 (x1,y1) (x2,y2) = sqrt ( (x2-x1)^2 + (y2-y1)^2 )

-- Distancia de 2 con 3
distancia2 (x2,y2) (x3,y3) = sqrt ( (x3-x2)^2 + (y3-y2)^2 )

-- Distancia de 3 con 1
distancia3 (x3,y3) (x1,y1) = sqrt ( (x1-x3)^2 + (y1-y3)^2 )

puntosCercanos (x1,y1) (x2,y2) (x3,y3) =
    if distancia1 (x1,y1) (x2,y2) < distancia2 (x2,y2) (x3,y3) && distancia1 (x1,y1) (x2,y2) < distancia3 (x3,y3) (x1,y1)
    then ((x1,y1),(x2,y2))
    else if distancia2 (x2,y2) (x3,y3) < distancia1 (x1,y1) (x2,y2) && distancia2 (x2,y2) (x3,y3) < distancia3 (x3,y3) (x1,y1)
    then ((x2,y2),(x3,y3))
    else ((x3,y3),(x1,y1))
 

-- EJERCICIO 3

-- Fórmula para determinar si es un triángulo en base a sus coordenadas
comprobacionTriangulo (x1,y1) (x2,y2) (x3,y3) = (abs((x1*(y2-y3))+(x2*(y3-y1))+(x3*(y1-y2)))/2)

trianguloVerdadero (x1,y1) (x2,y2) (x3,y3) =
    if comprobacionTriangulo (x1,y1) (x2,y2) (x3,y3) /= 0
    then True
    else False


-- EJERCICIO 4

-- Fórmula del área de un triángulo usando sus coordenadas
areaVertices (x1,y1) (x2,y2) (x3,y3) = 
    (abs ((((x1*y2) + (x2*y3) + (x3*y1)) - ((x1*y3) + (x3*y2) + (x2*y1)))/2))

trianguloArea (x1,y1) (x2,y2) (x3,y3) =
    if comprobacionTriangulo (x1,y1) (x2,y2) (x3,y3) /= 0
    then Just (areaVertices (x1,y1) (x2,y2) (x3,y3))
    else Nothing


-- EJERCICIO 5

sumaTriangulos (x1,y1) (x2,y2) (x3,y3) (x4,y4) (x5,y5) (x6,y6) =
    if comprobacionTriangulo (x1,y1) (x2,y2) (x3,y3) /= 0 && 
       comprobacionTriangulo (x4,y4) (x5,y5) (x6,y6) /= 0
    then Just ((areaVertices (x1,y1) (x2,y2) (x3,y3)) + (areaVertices (x4,y4) (x5,y5) (x6,y6)))
    else Nothing