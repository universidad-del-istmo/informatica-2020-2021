module Ejer exposing (..)

import Browser
import Html exposing (Html, input, div, p, text)
import Html.Attributes exposing (style, type_)
import Html.Events exposing (onClick, onInput)

type Modelo = Modelo String

type Accion =
    Actualizar String

actualizador : Accion -> Modelo -> Modelo
actualizador (Actualizar accion) (Modelo _) =
    Modelo accion

-- Ejercicio:
-- Modificar el codigo tal que el texto no cambie hasta
-- que el usuario haya hecho click en un boton que actualize
-- el texto.

vista (Modelo mensaje) =
    div
    []
    [
        p [] [text mensaje],
        -- Documentacion del componente input
        -- https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#attr-type
        input
        [
            type_ "text",
            onInput Actualizar
        ]
        []
    ]

inicial = Modelo "hola"

main = Browser.sandbox { init = inicial, update = actualizador, view = vista }