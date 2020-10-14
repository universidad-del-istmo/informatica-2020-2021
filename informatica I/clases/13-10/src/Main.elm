module Main exposing (..)

import Browser
import Html exposing (Html, button, div, p, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)

-- Representa los estados de nuestro programa
type Modelo = Modelo String String

type Accion =
    Mensaje String
    | Color String

actualizador accion (Modelo oMsg oColor) =
    case accion of
    Mensaje msg -> Modelo msg oColor
    Color col -> Modelo oMsg col

-- Indica como convertir un modelo
-- a una interfaz grafica
vista (Modelo mensaje fondo) =
    div
    []
    [
        -- Lista de attibutos css: https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Properties_Reference
        p [style "background" fondo] [text mensaje],
        button [onClick (Mensaje "hola, mundo")] [text "Mensaje 1"],
        button [onClick (Mensaje "adios, mundo")] [text "Mensaje 2"],
        button [onClick (Mensaje "otro mensaje")] [text "Mensaje 2"],
        button [onClick (Color "red")] [text "Fondo rojo"],
        button [onClick (Color "white")] [text "Fondo blanco"]
    ]

inicial = Modelo "hola, mundo" "white"

main = Browser.sandbox { init = inicial, update = actualizador, view = vista }