module Ejercicio exposing (..)

import Browser
import Html exposing (Html, input, button, div, p, text)
import Html.Attributes exposing (style, type_)
import Html.Events exposing (onClick, onInput)

type Modelo = Modelo String String

type Accion = 
    Guardar String
    | Act

actualizador : Accion -> Modelo -> Modelo
actualizador accion (Modelo nuevo guardado) =
    case accion of
    Guardar msg -> Modelo nuevo msg
    Act -> Modelo guardado guardado

-- Ejercicio:
-- Modificar el codigo tal que el texto no cambie hasta
-- que el usuario haya hecho click en un boton que actualize
-- el texto.

vista (Modelo otro guardado) =
    div
    []
    [
        p [style "background-color" "red"] [text otro],
        input
        [
            type_ "text",
            onInput (\texto -> Guardar texto)
        ]
        [],
        button [onClick Act] [text "Actualizar"]
    ]

inicial = Modelo "Escribir algo..." ""

main = Browser.sandbox { init = inicial, update = actualizador, view = vista }