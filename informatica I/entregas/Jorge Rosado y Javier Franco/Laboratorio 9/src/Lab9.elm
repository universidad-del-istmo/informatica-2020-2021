module Lab9 exposing (..)

import Html exposing (button, p, div, text)
import Html.Events exposing (onClick)
import Browser

type Modelo = Modelo Int String

type Accion = Adivinar Int

inicial = Modelo 37 "Elige cualquier número de los que te aparece en pantalla"

actualizador accion (Modelo numero pres) =
    case accion of
    Adivinar x ->
        if x < numero 
            then Modelo numero "El número correcto es mayor del número que elegiste"
            else if x > numero 
                then Modelo numero "El número correcto es menor del número que elegiste"
                else Modelo numero "¡Adivinaste el número correcto!"

convertirABoton x =
    button [ onClick (Adivinar x) ] [ text (String.fromInt x) ]

vista (Modelo numero pres) =
    div [] (p [] [text pres] :: List.map convertirABoton (List.range 1 50))

main = Browser.sandbox { init = inicial, update = actualizador, view = vista }