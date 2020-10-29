module Lab9 exposing (..)

--Fecha de Entrega: Viernes 23 de Octubre, 11:59 pm

--El objetivo de este laboratorio es que implemente una versión grafica de un programa llamado "HighLow". 
--El objetivo de "HighLow" es que el usuario del programa adivine un numero secreto 
--el cual puede estar pre-programado en el estado del programa. 
--El numero secreto debe ser un numero entre 1 y 50. 
--El program le debe mostrar al usuario 50 botones cada uno con uno de los numeros entre 1 y 50. 
--Cuando el usuario presione alguno de los 50 botoens, 
--el programa debe indicarle si el nuero correspondiente al boton es 
--"más alto", "más bajo" o "igual" al boton seleccionado.

--Para simplifical la implementación, es aceptable que el numero secreto 
--siempre sea el mismo en cada una de las ejecuciones del programa (ie. no debe ser un numero aleatoreo).

import Browser
import Html exposing (Html, button, input, div, p, text)
import Html.Attributes exposing (style, type_)
import Html.Events exposing (onClick, onInput)

type Modelo = Modelo String 

type Accion = Mayor | Menor | Igual

actualizador accion modelo =
    case accion of
    Mayor -> Modelo "mas bajo"
    Menor -> Modelo "mas alto"
    Igual -> Modelo "hell yea"



numberbutt b = if b == 4 then button [onClick Igual] [text (String.fromInt b)]
                else if b < 4 then button [onClick Menor] [text (String.fromInt b)]
                else button [onClick Mayor] [text (String.fromInt b)]


vista (Modelo msg) = 
    div [] 
    [
        p [] [text msg],
        div [] (List.map numberbutt (List.range 1 50))
    ]



inicial = Modelo "choose a number, good luck -----*hint*------ el numero es sublime"

main = Browser.sandbox { view = vista, update = actualizador, init = inicial }