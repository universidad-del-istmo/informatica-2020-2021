module Laboratorio exposing (..)

import Browser
import Html exposing (Html, button, input, div, p, text)
import Html.Attributes exposing (style, type_)
import Html.Events exposing (onClick, onInput)

type Model = Modelo Int String

type Acciones =
    Incrementar
    | Decrementar
    | Insertar Int
    | Datos String

actualizador accion modelo =
    case (accion, modelo) of
    (Insertar i, Modelo j x) -> Modelo (i + j) x
    (Datos i, Modelo j x) -> Modelo j i
    (Incrementar, Modelo i x) -> Modelo (i + 1) x
    (Decrementar, Modelo i x) ->
        let
            nuevo = i - 1
        in
            if nuevo >= 0
            then Modelo nuevo x
            else Modelo i x

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
        verificarNumero q =
            if q == 15
            then "Encontraste el numero"
            else if q > 15 
            then "Tampoco, muy grande"
            else "No, muy pequeño"
    in
    button
    [
        onClick (Datos (verificarNumero b)),
        style "color" color
    ]
    [
        text (String.fromInt b)
    ]

inicial = Modelo 0 "Intenta adivinar en que número estaba pensando"

-- arriba codigo general
-- abajo codigo especifico a HTML

vista (Modelo i x) =
    let
        numeros = List.range 0 50
    in
        div
        []
        [
            text (x),
            div [] (List.map numeroAHtml numeros)
        ]


main = Browser.sandbox { view = vista, update = actualizador, init = inicial }