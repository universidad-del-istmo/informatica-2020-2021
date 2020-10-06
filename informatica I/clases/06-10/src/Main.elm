module Main exposing (..)

import Browser
import Html exposing (Html, div, p, text)
import Html.Attributes exposing (style)

-- Tipo que continee un mensaje
type Modelo = Modelo String

type Accion = Nada

-- Esta funcion establece como el programa
-- cambia luego que el usuario hace una
-- accion.
actualizar : Accion -> Modelo -> Modelo
actualizar _ m = m

-- Funcion que transforma el modelo
-- a HTML para ser mostrado en el
-- navegador
vista : Modelo -> Html Accion
vista (Modelo texto) =
    div
        [
            style "background-color" "red",
            style "color" "blue"
        ]
        (List.repeat 5 (p [] [text texto]))

inicial = Modelo "hola, mundo"

main = Browser.sandbox { init = inicial, update = actualizar, view = vista }
