module Laboratorio exposing(..)
import Maybe

-- Ejercicio #1

distanciaEuclideana (x1,y1) (x2,y2) =
    sqrt((x2-x1)^2 + (y2-y1)^2)

-- Ejercico #2
distanciaCercana (x1,y1) (x2,y2) (x3,y3) =
    let 
        p1 =
            sqrt ((x2-x1)^2+(y2-y1)^2)
        p2 = 
            sqrt ((x3-x2)^2+(y3-y2)^2)
        p3 =
            sqrt ((x1-x3)^2+(y1-y3)^2)
        r1 =
            [(x1,y1),(x2,y2)]
        r2 =
            [(x2,y2),(x3,y3)]
        r3 =
            [(x1,y1),(x3,y3)]

    in 
    if p1 < p2 && p1 < p3
    then r1
        else if p2 < p3 && p2 < p3
        then r2
            else r3

-- Ejercicio #3

verticeTriangulo (x1,y1) (x2,y2) (x3,y3) =
    let 
        z1 = 
            sqrt(((x2 - x1)^2) + ((y2 - y1)^2))
        z2 = 
            sqrt(((x3 - x2)^2) + ((y3 - y2)^2))
        z3 = 
            sqrt(((x1 - x3)^2) + ((y1 - y3)^2))
        
    in
    if z1 > z2 && z1 > z3
    then z1 == sqrt(z2^2 + z3^2)
        else if z2 > z1 && z2 > z3
        then z2 == sqrt(z1^2 + z3^2)
            else z3 == sqrt(z1^2 + z2^2)

-- Ejercicio #4
areaTriangulo (x1,y1) (x2,y2) (x3,y3) =
    let
        z1 = 
            sqrt(((x2 - x1)^2) + ((y2 - y1)^2))
        z2 = 
            sqrt(((x3 - x2)^2) + ((y3 - y2)^2))
        z3 = 
            sqrt(((x1 - x3)^2) + ((y1 - y3)^2))
    in
    if z1 > z2 && z1 > z3
    then Just((z2 * z3) / 2)
        else if z2 > z1 && z2 > z3
        then Just((z3 * z1) / 2)
            else if z3 > z1 && z3 > z2
                then Just((z1 * z2)/ 2)
                else Nothing

-- Ejercicio #5
sumaDeAreas (x1,y1) (x2,y2) (x3,y3) (z1,v1) (z2,v2) (z3,v3) =
    let
        r1 =
            verticeTriangulo (x1,y1) (x2,y2) (x3,y3)
        r2 =
            verticeTriangulo (z1,v1) (z2,v2) (z3,v3)
        r3 =
            areaTriangulo (x1,y1) (x2,y2) (x3,y3)
        r4 =
            areaTriangulo (z1,v1) (z2,v2) (z3,v3)
    in
    if r1 == True && r2 == True
    then Just(Maybe.withDefault 0 r3 + Maybe.withDefault 0 r4)
    else Nothing