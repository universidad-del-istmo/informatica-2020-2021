module Line exposing (..)

import Browser
import Html exposing (Html, button, input, div, p, text)
import Html.Attributes exposing (style, type_)
import Html.Events exposing (onClick, onInput)

import Svg exposing (..)
import Svg.Attributes exposing (..)

type Modelo = Modelo (List (Int, Int))

type Accion = Inc | Dec

actualizador accion modelo = modelo

-- documentacion de SVG: https://developer.mozilla.org/en-US/docs/Web/SVG

crearPoligonoAux (x,y) coords =
    case coords of
    (a,b) :: (c,d) :: xs ->
        line
            [
                stroke "red",
                x1 (String.fromInt a),
                y1 (String.fromInt b),
                x2 (String.fromInt c),
                y2 (String.fromInt d) 
            ]
            []
        :: crearPoligonoAux (x,y) ((c,d) :: xs)
    (a,b) :: [] ->
        [
            line
                [
                    stroke "red",
                    x1 (String.fromInt a),
                    y1 (String.fromInt b),
                    x2 (String.fromInt x),
                    y2 (String.fromInt y)
                ]
                []
        ]
    _ -> []

crearPoligono xs =
    case xs of
    b :: bs -> crearPoligonoAux b (b :: bs)
    _ -> []

crearLineas coords =
    case coords of
    (a,b) :: (c,d) :: xs ->
        line
            [
                x1 (String.fromInt a),
                y1 (String.fromInt b),
                x2 (String.fromInt c),
                y2 (String.fromInt d),
                stroke "black"
            ]
            []
        :: crearLineas ((c,d) :: xs)
    _ -> []


vista (Modelo t) =
    div
        []
        [
            svg
                [
                    width "300",
                    height "300",
                    viewBox (String.concat ["0 0 ", "300", " ", "300"])
                ]
                (crearPoligono t)
        ]

inicial = Modelo [(1,1), (50, 40), (10, 15), (150, 200)]

main = Browser.sandbox {view = vista, update = actualizador, init = inicial }

-- Tarea, 2 puntos extra
-- Hacer una intefaz que tinee un botono para aumentar y disminuir
-- Y dibujar un poligono de n lados donde n se aumenta y disminuye
-- con el + y -