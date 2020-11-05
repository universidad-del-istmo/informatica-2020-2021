module Dragon exposing (..)

import Svg exposing (svg, path)
import Svg.Attributes exposing (width, height, viewBox, d, stroke, strokeWidth, fill)
import Html exposing (div)
import Browser



type Direccion = L | R

dragon n =
    R :: direcciones n
    |> dirs2Coords (lineLength 500 n) (degrees (-45*(toFloat n)))

lineLength size n =
    if n==0 then
        size
    else
        lineLength (sqrt ((size^2)/2)) (n-1)

dirs2Coords size ang dirs =
    dirs2CoordsAux size dirs (0,0) ang [(0,0)]

dirs2CoordsAux size dirs (x,y) angActual coords =
    case dirs of
    dir :: resto ->
        let
            ang = dirAAng dir
            nuevoAng = angActual + ang
            nuevaCoord = desplazar (x,y) size nuevoAng
        in
            dirs2CoordsAux size resto nuevaCoord nuevoAng (nuevaCoord :: coords)
    _ -> coords

desplazar (x,y) unid ang =
    let
        xnew = x + unid * cos ang
        ynew = y + unid * sin ang
    in
        (xnew, ynew)


dirAAng d =
    case d of
    L -> degrees -90
    R -> degrees 90

direcciones n =
    direccionesAux n []

direccionesAux n lista =
    if n <= 0 then
        lista
    else
        let
            lista1 = lista ++ [R]
            lista2 = lista1 ++ List.reverse (List.map cambiarRL lista)
        in
            direccionesAux (n-1) lista2

cambiarRL dir =
    case dir of
    R -> L
    L -> R


lineaSvg (x,y) =
    "L " ++ String.fromFloat x ++ "," ++ String.fromFloat y 

    
--Convierte todas las coordenadas en formato Line to
coordsAPath coords =
    String.concat (List.map lineaSvg coords)

htmlDragon it vstroke vwidth =
    svg
    [
        width "1000",
        height "1000",
        viewBox "-200 -200 1000 1000"
    ]
    [
        path
        [
            let
                coords = dragon it
                primero = Maybe.withDefault (0,0) (List.head coords)
                (x,y) = primero
            in
                d ("M " ++ String.fromFloat x ++ "," ++ String.fromFloat y ++ coordsAPath coords),
            fill "none",
            stroke vstroke,
            strokeWidth (String.fromFloat vwidth)
        ]
        []
    ]

