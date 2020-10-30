module Notas3 exposing (..)

import Browser
import Html exposing (Html, div, input, button, p, text)
import Html.Attributes exposing (style, type_)
import Html.Events exposing (onClick, onInput)

-- PARCIAL FINAL
-- Clase: Martes 22 de octubre de 2020.
-- Tema: Interfaces gráficas.

type Model = Modelo Int

type Acciones = Incrementar | Decrementar | Insertar Int

inicial = Modelo 0

actualizador accion modelo =
    case (accion, modelo) of
    (Incrementar, Modelo i) -> Modelo (i + 1)
    (Decrementar, Modelo i) ->
        if (i - 1) >= 0
        then Modelo (i - 1)
        else Modelo i
    (Insertar i, Modelo h) -> Modelo (i + h)

vista (Modelo i) =
    let
        numeros = List.range 0 i
    in
        div
        [
            style "text-align" "center",
            style "font-size" "150px"
        ]
        [
            button [onClick Decrementar] [text "-"],
            text (String.fromInt i),
            button [onClick Incrementar] [text "+"],
            div [] (List.map numeroAHtml numeros)
        ]

listaAHtml nums =
    case nums of
    [] -> []
    b :: bs -> button [] [text (String.fromInt b)] :: listaAHtml bs

numeroAHtml num =
    let
        colorMod = modBy 3 num
        color =
            if colorMod == 0
            then "red"
            else if colorMod == 1
            then "green"
            else "blue"
    in
    button
    [
        onClick (Insertar num),
        style "color" color
    ]
    [
        text (String.fromInt num)
    ]

main = Browser.sandbox { init = inicial, update = actualizador, view = vista }