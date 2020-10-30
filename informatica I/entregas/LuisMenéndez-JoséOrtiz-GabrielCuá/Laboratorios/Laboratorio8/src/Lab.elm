module Lab exposing (..)

-- Utilice el módulo Html de Elm para crear un programa con interfaz gráfica con las siguientes características:
--     Se deben mostrar los números del 1 al 100.
--     Los números pares deben ser rojos y los impares azules.
--     Los números primos deben tener el fondo verde.

import Browser
import Html exposing (..)
import Html.Attributes exposing (style)

-- Funciones para determinar si un número es primo:

numeros = List.range 1 100

residuo n1 n2 =
    remainderBy n1 n2

primo n =
    if n == 0 || n == 1
    then False
    else primoAux n 2

primoAux n x =
    if x < n
    then
        if residuo x n /= 0
        then primoAux n (x + 1)
        else False
    else True

funcionParImpar n =
    if remainderBy 2 n == 0
    then "Par"
    else "Impar"

-- Funciones para convertir a type Html:

intToHtml n = 
    if funcionParImpar n == "Par"
    then p [
        style "color" "red",
        style "text-align" "center",
        style "font-weight" "bold"] [text (String.fromInt n)]
    else if primo n == True
    then p [
        style "color" "blue",
        style "background-color" "#63D743",
        style "text-align" "center",
        style "font-weight" "bold"] [text (String.fromInt n)]
    else p [
        style "color" "blue",
        style "text-align" "center",
        style "font-weight" "bold"] [text (String.fromInt n)]

map = List.map intToHtml (List.range 1 100)

-- Funciones de la interfaz gráfica:

main = Browser.sandbox { init = inicial, update = actualizar, view = vista }

inicial = "Inicio"

actualizar _ m = m

vista texto =
    div
    [] map