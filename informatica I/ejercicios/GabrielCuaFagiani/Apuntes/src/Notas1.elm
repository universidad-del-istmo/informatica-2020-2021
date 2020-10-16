module Notas exposing (..)

import Browser
import Html exposing (Html, div, button, p, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)

-- PARCIAL FINAL
-- Clase: Martes 13 de octubre de 2020.
-- Tema: Interfaces gráficas.

-- Representa los estados de nuestro programa.
type Modelo = Modelo String String

type Accion = Mensaje String

actualizador (Mensaje accion) modelo = Modelo accion "white"

-- Indica cómo convertir un modelo a una inter-
-- faz gráfica.
vista (Modelo mensaje estilo) = div [] 
    [
      p
        [
            style "color" "white",
            style "background" "black",
            style "text-align" "center",
            style "font-size" "65px"
        ] [text mensaje],
        button [onClick (Mensaje "Cuá"),
            style "color" "red",
            style "background-color" "black"
        ] [text "Presionar"],
        button [onClick (Mensaje "Fagiani"),
            style "color" "yellow",
            style "background-color" "black"
        ] [text "Apachar"]
    ]

inicial = Modelo "Gabriel" "white"

main = Browser.sandbox { init = inicial, update = actualizador, view = vista }