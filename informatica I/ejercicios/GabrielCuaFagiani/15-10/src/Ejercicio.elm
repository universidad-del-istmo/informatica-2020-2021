module Ejercicio exposing (..)

import Browser
import Html exposing (Html, div, input, button, p, text)
import Html.Attributes exposing (style, type_)
import Html.Events exposing (onInput, onClick)

-- PARCIAL FINAL
-- Clase: Jueves 15 de octubre de 2020.
-- Tema: Interfaces gráficas.

type Modelo = Modelo String

type Accion = Actualizar String

actualizador : Accion -> Modelo -> Modelo
actualizador (Actualizar accion) (Modelo _) = Modelo accion

vista (Modelo mensaje) =
    div
    []
    [
        p [] [text mensaje],
        -- Documentación del type input:
        -- https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input#attr-type
        input
        [
            type_ "text",
            onInput (Actualizar)
        ] [],
        button [onClick (Actualizar mensaje),
            style "color" "blue",
            style "background-color" "yellow"
        ] [text "Presionar"]
    ]

inicial = Modelo "Escribe algo..."

main = Browser.sandbox { init = inicial, update = actualizador, view = vista }