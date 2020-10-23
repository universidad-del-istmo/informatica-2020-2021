module Main exposing (..)

import Browser
import Html exposing (Html, button, input, div, p, text)
import Html.Attributes exposing (style, type_)
import Html.Events exposing (onClick, onInput)

type Model = Modelo Int

type Acciones =
    Incrementar
    | Decrementar
    | Insertar Int

actualizador accion modelo =
    case (accion, modelo) of
    (Insertar i, Modelo j) -> Modelo (i + j)
    (Incrementar, Modelo i) -> Modelo (i + 1)
    (Decrementar, Modelo i) ->
        let
            nuevo = i - 1
        in
            if nuevo >= 0
            then Modelo nuevo
            else Modelo i

numerosAHtml nums =
    case nums of
    [] -> []
    b :: bs ->
        button [] [text (String.fromInt b)] :: numerosAHtml bs

numeroAHtml b =
    let
        colorMod = modBy 3 b
        color =
            if colorMod == 0
            then "red"
            else if colorMod == 1
            then "green"
            else "blue"
    in
    button
    [
        onClick (Insertar b),
        style "color" color
    ]
    [
        text (String.fromInt b)
    ]

inicial = Modelo 0

-- arriba codigo general
-- abajo codigo especifico a HTML

vista (Modelo i) =
    let
        numeros = List.range 0 i
    in
        div
        []
        [
            button [onClick Decrementar] [text "-"],
            text (String.fromInt i),
            button [onClick Incrementar] [text "+"],
            div [] (List.map numeroAHtml numeros)
        ]


main = Browser.sandbox { view = vista, update = actualizador, init = inicial }