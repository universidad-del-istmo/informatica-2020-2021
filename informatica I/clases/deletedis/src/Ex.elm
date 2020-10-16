module Ex exposing (..)

import Browser
import Html exposing (Html, div, p , text, button)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)

type Modelo = Modelo String String

type Accion = 
    Mensaje String
    |   Color String

actualizador accion (Modelo oMsg oColor) = 
    case accion of
    Mensaje msg -> Modelo msg oColor 
    Color col -> Modelo oMsg col

vista (Modelo mensaje fondo) = 
    div 
    [] 
    [
        p [style "background" fondo] [text mensaje],
        button [onClick (Mensaje "hola, mundo")] [text "Mensaje 1"],
        button [onClick (Mensaje "adios, mundo")] [text "Mensaje 2"],
        button [onClick (Mensaje "otro mensaje")] [text "Mensaje 3"],
        button [onClick (Color "red")] [text "Fondo rojo"],
        button [onClick (Color "white")] [text "Fondo blanco"]
    ]

inicial = Modelo "hola, mundo" "white"

main = Browser.sandbox { init = inicial, update = actualizador, view = vista }