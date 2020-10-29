module Lab9v2 exposing (..)

import Html exposing (Html, div, p, text, span, button, input)
import Browser
import Html.Attributes exposing (style, type_)
import Html.Events exposing (onClick, 
    onDoubleClick, onInput)

--# Laboratorio #9

--**Fecha de Entrega: Viernes 23 de Octubre, 11:59 pm**

--El objetivo de este laboratorio es que implemente una versión grafica de un programa llamado "HighLow". 
--El objetivo de "HighLow" es que el usuario del programa adivine un numero secreto el cual puede estar pre-programado 
--en el estado del programa. El numero secreto debe ser un numero entre 1 y 50. 
--El programa le debe mostrar al usuario 50 botones cada uno con uno de
--los numeros entre 1 y 50. Cuando el usuario presione alguno de los 50 botoens, el programa
--debe indicarle si el numero correspondiente al boton es "más alto", "más bajo" o "igual" al boton seleccionado.

--Para simplifical la implementación, es aceptable que el numero secreto siempre sea el mismo en cada una de las ejecuciones del programa (ie. no debe ser un numero aleatoreo).


type Modelo = Modelo String
type Accion = 
    MasAlto | MasBajo | Igual

n = "23"

actualizador accion modelo =
    case accion of 
    MasAlto -> Modelo "Mas alto"
    MasBajo -> Modelo "Mas bajo"
    Igual -> Modelo "Igual"

vista (Modelo y) =
    div 
    []
    [
        p [] botones,
        (text y)
    ]

main = Browser.sandbox 
    { init = Modelo "Encuentra el número (El Número es 23)", 
        update = actualizador, view = vista }

botones = 
    [
        button [onClick MasAlto] [text "1"],
        button [onClick MasAlto] [text "2"],
        button [onClick MasAlto] [text "3"],
        button [onClick MasAlto] [text "4"],
        button [onClick MasAlto] [text "5"],
        button [onClick MasAlto] [text "6"],
        button [onClick MasAlto] [text "7"],
        button [onClick MasAlto] [text "8"],
        button [onClick MasAlto] [text "9"],
        button [onClick MasAlto] [text "10"],
        button [onClick MasAlto] [text "11"],
        button [onClick MasAlto] [text "12"],
        button [onClick MasAlto] [text "13"],
        button [onClick MasAlto] [text "14"],
        button [onClick MasAlto] [text "15"],
        button [onClick MasAlto] [text "16"],
        button [onClick MasAlto] [text "17"],
        button [onClick MasAlto] [text "18"],
        button [onClick MasAlto] [text "19"],
        button [onClick MasAlto] [text "20"],
        button [onClick MasAlto] [text "21"],
        button [onClick MasAlto] [text "22"],
        button [onClick Igual] [text "23"],
        button [onClick MasBajo] [text "24"],
        button [onClick MasBajo] [text "25"],
        button [onClick MasBajo] [text "26"],
        button [onClick MasBajo] [text "27"],
        button [onClick MasBajo] [text "28"],
        button [onClick MasBajo] [text "29"],
        button [onClick MasBajo] [text "30"],
        button [onClick MasBajo] [text "31"],
        button [onClick MasBajo] [text "32"],
        button [onClick MasBajo] [text "33"],
        button [onClick MasBajo] [text "34"],
        button [onClick MasBajo] [text "35"],
        button [onClick MasBajo] [text "36"],
        button [onClick MasBajo] [text "37"],
        button [onClick MasBajo] [text "38"],
        button [onClick MasBajo] [text "39"],
        button [onClick MasBajo] [text "40"],
        button [onClick MasBajo] [text "41"],
        button [onClick MasBajo] [text "42"],
        button [onClick MasBajo] [text "43"],
        button [onClick MasBajo] [text "44"],
        button [onClick MasBajo] [text "45"],
        button [onClick MasBajo] [text "46"],
        button [onClick MasBajo] [text "47"],
        button [onClick MasBajo] [text "48"],
        button [onClick MasBajo] [text "49"],
        button [onClick MasBajo] [text "50"]
    ]