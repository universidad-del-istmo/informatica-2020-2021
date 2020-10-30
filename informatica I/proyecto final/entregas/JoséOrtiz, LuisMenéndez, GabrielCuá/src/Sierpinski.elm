module Sierpinski exposing (..)

import Browser
import Html exposing (Html, button, div, p, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import Svg exposing (..)
import Svg.Attributes exposing (..)

type Modelo = Modelo Int (List (List (Float, Float))) String

type Accion = Sumar | Restar | Amarillo | Celeste | Naranja

sierpinski x = (dividir 52 78 87 0 x)

tri x y l =
    [(x, y), ((x + l/2), y - (sin (pi/3))*l), (x + l, y)]

dividir x y l n m =
    if n == m
    then [tri x y l]
    else
        (dividir x y (l/2) (n+1) m) ++
        (dividir (x + (l/2)) y (l/2) (n+1) m) ++
        (dividir (x + (l/4)) (y - (sin (pi/3))*(l/2)) (l/2) (n+1) m)

inicial = Modelo 0 (sierpinski 0) "#003D6B"

actualizador accion (Modelo n l c) =
    case accion of
    Sumar -> Modelo (n + 1) (sierpinski (n + 1)) c
    Restar -> Modelo (n - 1) (sierpinski (n - 1)) c
    Amarillo -> Modelo n (sierpinski n) ("#FFE61D")
    Celeste -> Modelo n (sierpinski n) ("#0995FF")
    Naranja -> Modelo n (sierpinski n) ("#FF9E09")

vista (Modelo n l color) =
    div []  [
            p
                [] [],
            div
                [] [
                    button [        
                        onClick Amarillo,
                        Html.Attributes.style "background-color" "#FFE61D",
                        Html.Attributes.style "color" "black",
                        Html.Attributes.style "font-size" "25px",
                        Html.Attributes.style "width" "75px",
                        Html.Attributes.style "align" "left",
                        Html.Attributes.style "margin-left" "38%",
                        Html.Attributes.style "border-color" "#FFE61D",
                        Html.Attributes.style "font-family" "Times New Roman"] [Html.text "1"],
                    button [        
                        onClick Celeste,
                        Html.Attributes.style "background-color" "#0995FF",
                        Html.Attributes.style "color" "black",
                        Html.Attributes.style "font-size" "25px",
                        Html.Attributes.style "width" "75px",
                        Html.Attributes.style "align" "center",
                        Html.Attributes.style "margin-left" "38px",
                        Html.Attributes.style "border-color" "#0995FF",
                        Html.Attributes.style "font-family" "Times New Roman"] [Html.text "2"],
                    button [        
                        onClick Naranja,
                        Html.Attributes.style "background-color" "#FF9E09",
                        Html.Attributes.style "color" "black",
                        Html.Attributes.style "font-size" "25px",
                        Html.Attributes.style "width" "75px",
                        Html.Attributes.style "align" "center",
                        Html.Attributes.style "margin-left" "38px",
                        Html.Attributes.style "border-color" "#FF9E09",
                        Html.Attributes.style "font-family" "Times New Roman"] [Html.text "3"]],
            p
                [
                        Html.Attributes.style "margin-left" "32%",
                        Html.Attributes.style "color" "#152991",
                        Html.Attributes.style "font-size" "50px",
                        Html.Attributes.style "font-weight" "bold"
                ]       [Html.text "Triángulo de Sierpinski"],
            div
                [] [
                    button [        
                        onClick Restar,
                        Html.Attributes.style "background-color" "#DE0606",
                        Html.Attributes.style "color" "white",
                        Html.Attributes.style "font-size" "55px",
                        Html.Attributes.style "width" "75px",
                        Html.Attributes.style "align" "center",
                        Html.Attributes.style "margin-left" "38%",
                        Html.Attributes.style "border-radius" "100%",
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
                        Html.Attributes.style "border-radius" "100%",
                        Html.Attributes.style "border-color" "#00A304",
                        Html.Attributes.style "font-family" "Times New Roman"] [Html.text "+"]],
            svg [
                    width "2300",
                    height "2300",
                    viewBox (String.concat ["0 0 ", "300", " ", "300"])
                ] (lineas l color)
                ]

lineas coords color =
    case coords of
    [(a,b), (c,d), (e,f)] :: xs -> svg [] [
        line
            [
                x1 (String.fromFloat a),
                y1 (String.fromFloat b),
                x2 (String.fromFloat c),
                y2 (String.fromFloat d),
                stroke color,
                strokeWidth "0.2"] [],
        line [
                x1 (String.fromFloat c),
                y1 (String.fromFloat d),
                x2 (String.fromFloat e),
                y2 (String.fromFloat f),
                stroke color,
                strokeWidth "0.2"] [],
        line [
                x1 (String.fromFloat e),
                y1 (String.fromFloat f),
                x2 (String.fromFloat a),
                y2 (String.fromFloat b),
                stroke color,
                strokeWidth "0.2"
            ]
            []]
        :: lineas xs color
    _ -> []

main = Browser.sandbox {view = vista, update = actualizador, init = inicial }