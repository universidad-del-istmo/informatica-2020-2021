module Notas5 exposing (..)

-- PARCIAL FINAL
-- Clase: Jueves 29 de octubre de 2020.
-- Tema: SVG: Gráficos vectoriales escalables.

import Browser
import Html exposing (Html, button, input, div, p, text)
import Html.Attributes exposing (style, type_)
import Html.Events exposing (onClick, onInput)
import Svg exposing (..)
import Svg.Attributes exposing (..)

-- Tarea, 2 puntos extra:
-- Hacer una interfaz que tiene un botón para aumentar y disminuir,
-- y dibujar un poligono de n lados donde n se aumenta y disminuye
-- con el + y -.

type Modelo = Modelo Int (List (List (Float, Float)))

type Accion = Sumar | Restar

tri x y l =
    [(x, y), ((x + l/2), y - (sin (pi/3))*l), (x + l, y)]

crearLados x y l n m =
    if n == m
    then [tri x y l]
    else
        (crearLados x y (l/2) (n+1) m) ++
        (crearLados (x + (l/2)) y (l/2) (n+1) m) ++
        (crearLados (x + (l/4)) (y + (sin (pi/3))*(l/2)) (l/2) (n+1) m)

poligono x = crearLados 70 30 15 0 x

inicial = Modelo 1 (poligono 1)

actualizador accion (Modelo n lista) =
    case accion of
    Sumar -> Modelo (n + 1) (poligono (n + 1))
    Restar -> Modelo (n - 1) (poligono (n - 1))

vista (Modelo n l) =
    div
        []
        [
            p
                []
                [],
            div
                []
                [
                    button [        
                        onClick Restar,
                        Html.Attributes.style "background-color" "#DE0606",
                        Html.Attributes.style "color" "white",
                        Html.Attributes.style "font-size" "55px",
                        Html.Attributes.style "width" "75px",
                        Html.Attributes.style "align" "center",
                        Html.Attributes.style "margin-left" "38%",
                        Html.Attributes.style "border-color" "#A90101",
                        Html.Attributes.style "font-family" "Times New Roman"] [Html.text "-"],
                    button [        
                        onClick Sumar,
                        Html.Attributes.style "background-color" "#00D705",
                        Html.Attributes.style "color" "white",
                        Html.Attributes.style "font-size" "55px",
                        Html.Attributes.style "width" "75px",
                        Html.Attributes.style "font-weight" "bold",
                        Html.Attributes.style "margin-left" "10%",
                        Html.Attributes.style "border-color" "#00A304",
                        Html.Attributes.style "font-family" "Times New Roman"] [Html.text "+"]],
            svg
                [
                    width "2300",
                    height "2300",
                    viewBox (String.concat ["0 0 ", "300", " ", "300"])
                ] (lineas l)
                ]

lineas coords =
    case coords of
    [(a,b), (c,d), (e,f)] :: xs -> svg [] [
        line
            [
                x1 (String.fromFloat a),
                y1 (String.fromFloat b),
                x2 (String.fromFloat c),
                y2 (String.fromFloat d),
                stroke "black",
                strokeWidth "0.2"] [],
        line [
                x1 (String.fromFloat c),
                y1 (String.fromFloat d),
                x2 (String.fromFloat e),
                y2 (String.fromFloat f),
                stroke "black",
                strokeWidth "0.2"] [],
        line [
                x1 (String.fromFloat e),
                y1 (String.fromFloat f),
                x2 (String.fromFloat a),
                y2 (String.fromFloat b),
                stroke "black",
                strokeWidth "0.2"
            ]
            []]
        :: lineas xs
    _ -> []

main = Browser.sandbox {view = vista, update = actualizador, init = inicial }