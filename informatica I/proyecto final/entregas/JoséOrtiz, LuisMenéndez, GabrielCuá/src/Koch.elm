module Koch exposing (..)

import Browser
import Html exposing (Html, button, div, p, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import Svg exposing (..)
import Svg.Attributes exposing (..)

type Modelo = Modelo Float (List (Float, Float)) String

type Accion = Sumar | Restar | Amarillo | Celeste | Naranja

snowflake n = 
    kochAux1 (kochAux2 n [degrees(60), degrees(-120), degrees(-120)]) (120,45) 0 [(120,45)] (50/(3^n))

kochAux1 direccion (x,y) ang coords l =
    case direccion of 
    [] -> coords
    first :: rest ->
        let
            nX = x - l * cos (ang + first) -- Cateto adyacente.
            nY = y - l * sin (ang + first) -- Cateto opuesto.
        in
            kochAux1 rest (nX, nY) (ang + first) ((nX, nY) :: coords) l

kochAux2 n lista =
    if n <= 0
    then lista
    else 
        kochAux2 (n - 1) (map lista)

map list =
    case list of
    x :: xs -> [x, degrees(60), degrees(-120), degrees(60)] ++ map xs
    _ -> []

inicial = Modelo 0 (snowflake 0) "#003D6B"

actualizador accion (Modelo n l c) =
    case accion of
    Sumar -> Modelo (n + 1) (snowflake (n + 1)) c
    Restar -> Modelo (n - 1) (snowflake (n - 1)) c
    Amarillo -> Modelo n l ("#FFE61D")
    Celeste -> Modelo n l ("#0995FF")
    Naranja -> Modelo n l ("#FF9E09")

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
                ]       [Html.text "Copo de nieve de Koch"],
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
    (a,b) :: (c,d) :: xs ->
        line
            [
                x1 (String.fromFloat a),
                y1 (String.fromFloat b),
                x2 (String.fromFloat c),
                y2 (String.fromFloat d),
                stroke color,
                strokeWidth "0.2"
            ]
            []
        :: lineas ((c,d) :: xs) color
    _ -> []

main = Browser.sandbox {view = vista, update = actualizador, init = inicial }