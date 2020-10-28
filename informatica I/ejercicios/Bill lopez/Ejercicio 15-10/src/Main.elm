module Ejercicio15-10 exposing (..)

import Html exposing (Html, div, p, text, span, button, input)
import Browser
import Html.Attributes exposing (style, type_)
import Html.Events exposing (onClick, onDoubleClick, onInput)


-- Ejercicio:
-- Modificar el codigo tal que el texto no cambie hasta
-- que el usuario haya hecho click en un boton que actualize
-- el texto.

type Modelo = Modelo String String 

type Accion = 
    Mensaje | Reversa | Actualizar String

actualizador accion (Modelo oMsg oMsg2) =
    case accion of
    Mensaje -> Modelo oMsg2 oMsg2
    Reversa -> Modelo (String.reverse oMsg2) oMsg2
    Actualizar msg -> Modelo oMsg msg


vista (Modelo mensaje msg2) = 
    div 
    []
    [
        p [] [text mensaje],
        input 
            [type_ "text", onInput (\texto -> Actualizar texto)] [],
        button
            [onClick (Reversa)] [text "Al revés"],
        button
            [onClick (Mensaje)] [text "Normal"]
    ] 
    

inicial = Modelo "Escribe cualquier cosa" "Hola"
main = Browser.sandbox 
    { init = inicial, 
        update = actualizador, view = vista }