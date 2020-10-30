module Sierpinski exposing (..)

import Svg exposing (svg, polygon)
import Svg.Attributes exposing (width, height, viewBox, points, stroke, strokeWidth, fill)
import Html exposing (div)
import Browser

type Triangulo = Triangulo (Float,Float) (Float,Float) (Float,Float)

sierpinski n =
    sierpinskiAux n (crearTriangulo 1000)

sierpinskiAux n (Triangulo p1 p2 p3) =
    if n <= 0 then
        [Triangulo p1 p2 p3]
    else
        let
            pm12 = puntoMedio p1 p2
            pm13 = puntoMedio p1 p3
            pm23 = puntoMedio p2 p3

            triang1 = Triangulo p1 pm12 pm13
            triang2 = Triangulo p2 pm12 pm23
            triang3 = Triangulo p3 pm13 pm23
        in
            sierpinskiAux (n-1) triang1 ++
            sierpinskiAux (n-1) triang2 ++
            sierpinskiAux (n-1) triang3

crearTriangulo size =
    Triangulo (0, size) (size/2, size - sin (pi/3) * size) (size, size)

puntoMedio (x1,y1) (x2,y2) =
    let
        xnew = (x1 + x2)/2
        ynew = (y1 + y2)/2
    in
        (xnew, ynew)

crearPolygon vfill vstroke vwidth (Triangulo (x1, y1) (x2, y2) (x3, y3)) =
    polygon
    [
        points (
                String.fromFloat x1 ++ "," ++ String.fromFloat y1 ++ " " ++
                String.fromFloat x2 ++ "," ++ String.fromFloat y2 ++ " " ++
                String.fromFloat x3 ++ "," ++ String.fromFloat y3
            ),
        fill vfill,
        stroke vstroke,
        strokeWidth (String.fromFloat vwidth)
    ] []

htmlSierpinski it vfill vstroke vwidth =
    svg
    [
        width "1000",
        height "1000",
        viewBox "0 0 1000 1000"
    ]
    (sierpinski it |> List.map (crearPolygon vfill vstroke vwidth))
