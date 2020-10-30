module Lab exposing (..)

import Browser
import Html exposing (Html, button, input, div, p, text)
import Html.Attributes exposing (style, type_)
import Html.Events exposing (onClick, onInput)

type Modelos = Modelo Int String

type Acciones = Actualizar String | Igual String

inicial = Modelo 0 "Adivina el número secreto..."

actualizador accion modelo = 
    case (accion, modelo) of
    (Igual _, z) -> z
    (Actualizar n, Modelo x y) -> Modelo x n

numero x =
    if x == 27
    then "¡Ganaste!"
    else if x > 27
    then "El número es más pequeño"
    else "El número es más grande"

funcion n =
    button
    [
        onClick (Actualizar (numero n)),
        style "background-color" "#233ECA",
        style "color" "white",
        style "font-size" "35px",
        style "font-family" "Times New Roman"
    ]
    [
        text (String.fromInt n)
    ]

rango = List.range 1 50

vista (Modelo x y) =
    div 
    [
        style "text-align" "center",
        style "color" "#152991",
        style "font-size" "50px",
        style "font-weight" "bold"
    ]
    [
        text y,
        div [] (List.map funcion rango)
    ]

main = Browser.sandbox {view = vista, update = actualizador, init = inicial}