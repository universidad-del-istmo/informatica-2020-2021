module Snowflake exposing (..)

import Svg exposing (svg, polygon)
import Svg.Attributes exposing (width, height, viewBox, points, stroke, strokeWidth, fill)
import Html exposing (div)
import Browser

type Direccion = L | R

snowflake n =
    direcciones n
    |> dirs2Coords (866.0254/(3^(toFloat n)))

dirs2Coords size dirs =
    dirs2CoordsAux size dirs (250,0) (degrees -90) []

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
    L -> degrees -60
    R -> degrees 120

direcciones n =
    direccionesAux n [R, R, R]

direccionesAux n lista =
    if n <= 0 then
        lista
    else
        lista
        |> List.map (\x -> [x, L, R, L])
        |> List.concat
        |> direccionesAux (n-1)

htmlSnowflake it vfill vstroke vwidth =
    svg
    [
        width "1000",
        height "1000",
        viewBox "0 0 1000 1000"
    ]
    [
        polygon
        [
            points (
                    snowflake it
                    |> List.map (\(x,y) -> String.fromFloat x ++ "," ++ String.fromFloat y)
                    |> String.join " "
                ),
            fill vfill,
            stroke vstroke,
            strokeWidth (String.fromFloat vwidth)
        ]
        []
    ]
