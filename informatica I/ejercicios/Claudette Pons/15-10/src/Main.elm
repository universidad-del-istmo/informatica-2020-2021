module Main exposing (..)

import Browser
import Html exposing (Html, input, button, div, p, text)
import Html.Attributes exposing (style, type_)
import Html.Events exposing (onClick, onInput)

type Modelo = Modelo String String

type Accion = 
    Guardar String
    | Cambiar 

actualizador : Accion -> Modelo -> Modelo
actualizador accion (Modelo otro guardado) =
    case accion of
    Guardar msg -> Modelo otro msg
    Cambiar -> Modelo guardado guardado

-- Ejercicio:
-- Modificar el codigo tal que el texto no cambie hasta
-- que el usuario haya hecho click en un boton que actualize
-- el texto.

vista (Modelo otro guardado) =
    div
    []
    [
        p [] [text otro],
        -- Documentacion del componente input
        -- https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#attr-type
        input
        [
            type_ "text",
            onInput (\texto -> Guardar texto)
        ]
        [],
        button [onClick Cambiar] [text "Cambiar"]
    ]

inicial = Modelo "hola" "jajaja"

main = Browser.sandbox { init = inicial, update = actualizador, view = vista }