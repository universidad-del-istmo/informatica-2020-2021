module Sides exposing (..)

import Browser
import Html exposing (Html, button, input, div, p, text)
import Html.Attributes exposing (style, type_)
import Html.Events exposing (onClick, onInput)

import Svg exposing (svg, rect, circle, line)
import Svg.Attributes exposing (width, height, x, y, viewBox, cx, cy, r, fill, x1, x2, y1, y2, stroke)


--Tarea 2 pts extra
-- Hacer interfaz con boton para aumentar y disminuir
--y dibujar un poligono de n lados donde n se aumenta
--y disminuye con el + y -






polygon n =
    dirs2Coords (800/((toFloat n))) n

dirs2Coords size n =
    dirs2CoordsAux size n (angL n n []) (350,0) (degrees -90) []

dirs2CoordsAux size n lang (x,y) angActual coords =
    case lang of
    b :: resto ->
        let
            nuevoAng = angActual + b
            nuevaCoord = desplazar (x,y) size nuevoAng
        in
            dirs2CoordsAux size n resto nuevaCoord nuevoAng (nuevaCoord :: coords)
    _ -> coords


desplazar (x,y) size ang =
    let
        xnew = x + size * cos (degrees ang)
        ynew = y + size * sin (degrees ang)
    in
        (xnew, ynew)


angL n estA xs = 
    case n of
    0 -> xs
    a -> angL (n-1) estA ((((toFloat 180)/(toFloat estA)))*2 :: xs)









type Modelo = Modelo Int (List (Int, Int))

type Accion = Dis | Aum 


actualizador accion modelo  =
    case (accion, modelo) of
    (Dis, Modelo n xs) -> if n <= 3 then Modelo n xs else Modelo (n-1) xs
    (Aum, Modelo n xs) -> Modelo (n+1) xs


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

crearPoligonoP n xs =
    crearPoligono (List.map redondear (polygon n))


redondear (x,y) = (round x, round y)








vista (Modelo n t) =

        div [] 
        [div [] 
        [
            button [onClick Dis] [text "-"],
            button [onClick Aum] [text "+"]
        ], 
        div []
            [
                svg 
                    [
                        width "3000",
                        height "3000",
                        viewBox (String.concat ["0 0 ", "3000", " ", "3000"])
                    ] 
                    (crearPoligonoP n t)

            ]]
  

iniciar = Modelo 3 []

main = Browser.sandbox {view = vista, update = actualizador, init = iniciar }