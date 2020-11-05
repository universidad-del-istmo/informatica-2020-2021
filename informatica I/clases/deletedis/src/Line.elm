module Line exposing (..)

import Browser
import Html exposing (Html, button, input, div, p, text)
import Html.Attributes exposing (style, type_)
import Html.Events exposing (onClick, onInput)

import Svg exposing (svg, rect, circle, line)
import Svg.Attributes exposing (width, height, x, y, viewBox, cx, cy, r, fill, x1, x2, y1, y2, stroke)


type Modelo = Modelo (List (Int, Int))

type Accion = Inc | Dec

actualizador accion modelo = modelo

crearPoligonoaux (x,y) coords =
    case coords of
    (a,b) :: (c,d) :: xs -> 
        line   
            [
                x1 (String.fromInt a), 
                y1 (String.fromInt b),
                x2 (String.fromInt c),
                y2 (String.fromInt d),
                stroke "red"
            ] []
        :: crearPoligonoaux (x,y) ((c,d) :: xs)
    (a,b) :: [] -> 
        [
            line
                [
                    x1 (String.fromInt a),
                    y1 (String.fromInt b),
                    x2 (String.fromInt x),
                    y2 (String.fromInt y),
                    stroke "red"
                ] []
        ]
    _ -> []

crearPoligono xs =
    case xs of
    b :: bs -> crearPoligonoaux b (b :: bs)
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
            ] []
        :: crearLineas ((c,d) :: xs)
    _ -> []



vista (Modelo t) =

        div []
            [
                svg 
                    [
                        width "300",
                        height "300",
                        viewBox (String.concat ["0 0 ", "300", " ", "300"])
                    ] 
                    (crearPoligono t)

            ]
  

iniciar = Modelo [(1,1), (50, 40), (10,50), (150, 200)]

main = Browser.sandbox {view = vista, update = actualizador, init = iniciar }



--Tarea 2 pts extra
-- Hacer interfaz con boton para aumentar y disminuir
--y dibujar un poligono de n lados donde n se aumenta
--y disminuye con el + y -