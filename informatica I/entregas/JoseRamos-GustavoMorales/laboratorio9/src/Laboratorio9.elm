module Laboratorio9 exposing (..)

import Browser
import Html exposing (Html, button,div, p, text)
import Html.Attributes exposing (style, type_)
import Html.Events exposing (onClick)

--El objetivo de este laboratorio es que implemente una versión grafica de un programa llamado "HighLow". 
--El objetivo de "HighLow" es que el usuario del programa adivine un numero secreto el cual puede estar 
--pre-programado en el estado del programa. El numero secreto debe ser un
--numero entre 1 y 50. El program le debe mostrar al usuario 50 botones cada uno con uno de
--los numeros entre 1 y 50. Cuando el usuario presione alguno de los 50 botoens, el programa
--debe indicarle si el numero correspondiente al boton es "más alto", "más bajo" 
--o "igual" al boton seleccionado.
--Para simplificar la implementación, es aceptable que el numero secreto siempre 
--sea el mismo en cada una de las ejecuciones del programa (ie. no debe ser un numero aleatorio).

type Model = Modelo Int String

type Acciones = Incrementar | Decrementar |  Datos String | Insertar Int

actualizador accion modelo =
    case (accion, modelo) of
    (Insertar i, Modelo j texto) -> Modelo (i + j) texto
    (Datos i, Modelo j texto) -> Modelo j i
    (Incrementar, Modelo i texto) -> Modelo (i + 1) texto
    (Decrementar, Modelo i texto) ->
        let
            nuevo = i - 1
        in
            if nuevo >= 0
            then Modelo nuevo texto
            else Modelo i texto

numerosAHtml nums =
    case nums of
    [] -> []
    b :: bs ->
        button [] [text (String.fromInt b)] :: numerosAHtml bs

numeroAHtml b =
    let
        comrpobarNumero x =
            if x == 27
            then "                                                                                                                                                                              ¡¡¡Correcto!!!"
            else    
                if x > 23 && x < 31 
                    then "                                                                                                                                                                             Muy Caliente"
                    else
                        if x > 19 && x < 35 
                        then "                                                                                                                                                                             Caliente"
                        else 
                            if x > 16 && x < 39 
                            then "                                                                                                                                                                             Tibio"
                            else 
                                if x > 12 && x < 43 
                                then "                                                                                                                                                                             Frio"
                                else "                                                                                                                                                                             Muy frio"
    in
    button
    [
        onClick (Datos (comrpobarNumero b))
    ]
    [
        text (String.fromInt b)
    ]

inicial = Modelo 1 "                                                                                                                                                                             Adivina el número"

vista (Modelo i texto) =
    let
        numeros = List.range 1 50
    in
        div
        []
        [
            text (texto),
            div [] (List.map numeroAHtml numeros)
        ]


main = Browser.sandbox { view = vista, update = actualizador, init = inicial }