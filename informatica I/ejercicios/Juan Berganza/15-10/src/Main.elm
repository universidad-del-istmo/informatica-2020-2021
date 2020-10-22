module Main exposing (..)

import Browser
import Html exposing (Html, input, div, p, text, button)
import Html.Attributes exposing (style, type_)
import Html.Events exposing (onClick, onInput)

-- La primera String es la que le mostraré al usuario
-- La segunda String es la que estoy guardando
type Modelo = Modelo String String

type Accion =
    Guardar String
    | Cambiar

actualizador : Accion -> Modelo -> Modelo
actualizador accion (Modelo pres guardado) =
    case accion of
    Guardar msg -> Modelo pres msg
    Cambiar -> Modelo guardado guardado

-- Ejercicio:
-- Modificar el codigo tal que el texto no cambie hasta
-- que el usuario haya hecho click en un boton que actualize
-- el texto.

vista (Modelo pres guardado) =
    div
    []
    [
        p [] [text pres],
        input
        [
            type_ "text",
            onInput (\texto -> Guardar texto)
        ]
        [],
        button
        [
            onClick Cambiar
        ]
        [
            text "Actualizar"
        ]
    ]

inicial = Modelo "Escribe lo que sea" "Hola"

main = Browser.sandbox { init = inicial, update = actualizador, view = vista }
