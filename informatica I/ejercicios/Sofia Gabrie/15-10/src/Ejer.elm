module Ejer exposing (..)

import Browser
import Html exposing (Html, input, div, p, text, button)
import Html.Attributes exposing (style, type_)
import Html.Events exposing (onClick, onInput)

type Modelo = Modelo String String

type Accion =
    Mensaje | Actualizar String 

actualizador accion (Modelo msg1 msg2) =
    case accion of 
    Mensaje -> Modelo msg2 msg2
    Actualizar msg -> Modelo msg1 msg

-- Ejercicio:
-- Modificar el codigo tal que el texto no cambie hasta
-- que el usuario haya hecho click en un boton que actualize
-- el texto.

vista (Modelo msg1 msg2) =
    div
    []
    [
        p [] [text msg1],
        -- Documentacion del componente input
        -- https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#attr-type
        input
        [
            type_ "text", onInput Actualizar 
        ] [],
        button [onClick (Mensaje)] [text "Mensaje"]     
    ]

inicial = Modelo "type something" "bru"

main = Browser.sandbox { init = inicial, update = actualizador, view = vista }