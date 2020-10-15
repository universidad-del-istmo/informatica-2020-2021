module Programa exposing (..)

import Browser
import Html exposing (Html, div, p, text)
import Html.Attributes exposing (style)

type Modelo = Modelo (List Int)

type Accion = Nada

esPar n =
    if remainderBy 2 n == 0 then
        True
    else
        False

esPrimo a =
    if a == 0 || a == 1 then
        False
    else
        esPrimoAux a 2

esPrimoAux a n =
    if n < a then
        if remainderBy n a /= 0 then
            esPrimoAux a (n+1)
        else
            False
    else
        True

actualizar : Accion -> Modelo -> Modelo
actualizar _ m = m

vista : Modelo -> Html Accion
vista (Modelo numeros) =
    div
        []
        (List.map crearElemento numeros)

crearElemento n =
    let
        paroimpar = if esPar n then
                [style "color" "red"]
            else
                [style "color" "blue"]
        final = if esPrimo n then
                style "background-color" "green" :: paroimpar
            else
                paroimpar
    in
        p final [text (String.fromInt n)]

inicial = Modelo (List.range 1 100)

main = Browser.sandbox { init = inicial, update = actualizar, view = vista }
