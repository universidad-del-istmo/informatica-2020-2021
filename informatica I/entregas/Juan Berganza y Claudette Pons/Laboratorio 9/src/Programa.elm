module Programa exposing (..)

import Html exposing (div, p, button, text)
import Html.Events exposing (onClick)
import Browser

type Modelo = Modelo Int String

type Accion =
    Adivinar Int

inicial = Modelo 7 "Elige un número, pecador"

actualizador accion (Modelo num pres) =
    case accion of
    Adivinar n ->
        if n < num then
            Modelo num "Es un número mayor que este"
        else if n > num then
            Modelo num "Es un número menor que este"
        else
            Modelo num "¡¡¡¡¡¡¡¡¡¡ADIVINASTE!!!!!!!!!!"

convertirABoton n =
    button
    [ onClick (Adivinar n) ]
    [ text (String.fromInt n) ]

vista (Modelo num pres) =
    div
    []
    (p [] [text pres] :: List.map convertirABoton (List.range 1 50))

main = Browser.sandbox {
        init = inicial,
        update = actualizador,
        view = vista
    }
