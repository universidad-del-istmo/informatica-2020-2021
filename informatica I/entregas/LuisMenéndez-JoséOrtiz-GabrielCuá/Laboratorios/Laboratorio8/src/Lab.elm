module Lab exposing (..)

-- Utilice el módulo Html de Elm para crear un programa con interfaz gráfica con las siguientes características:
--     Se deben mostrar los números del 1 al 100.
--     Los números pares deben ser rojos y los impares azules.
--     Los números primos deben tener el fondo verde.

import Browser
import Html exposing (..)
import Html.Attributes exposing (style)

------------------

-- Funciones para determinar si un número es primo:

numeros = List.range 1 100

parImparPrimo xs =
    case xs of
    [] -> []
    first :: rest -> 
        if remainderBy 2 first == 0
        then "Par" :: parImparPrimo rest
        else primoAux first 2 :: parImparPrimo rest

primoAux x n =
    if n < x
    then 
        if remainderBy n x /= 0
        then primoAux x (n+1)
        else "Impar"
    else "Primo"

------------------

main = Browser.sandbox { init = inicial, update = actualizar, view = vista }

inicial = "Inicio"

actualizar _ m = m

vista texto =
    div
    []
    [
        h1
        [
            style "text-align" "center",
            style "font-weight" "bold",
            style "color" "#15159C"
        ] [text "Laboratorio 8"],
        h2
        [
            style "text-align" "center",
            style "font-weight" "bold",
            style "color" "#15689C"
        ] [text "Gabriel Cuá, José Ortiz, Luis Menéndez"],
        p 
        [
            style "color" "blue",
            style "background-color" "#56FF33",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "1"],
        p
        [
            style "color" "red",
            style "background-color" "#56FF33",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "2"],
        p 
        [
            style "color" "blue",
            style "background-color" "#56FF33",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "3"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "4"],
        p 
        [
            style "color" "blue",
            style "background-color" "#56FF33",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "5"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "6"],
        p 
        [
            style "color" "blue",
            style "background-color" "#56FF33",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "7"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "8"],
        p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "9"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "10"],
        p 
        [
            style "color" "blue",
            style "background-color" "#56FF33",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "11"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "12"],
        p 
        [
            style "color" "blue",
            style "background-color" "#56FF33",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "13"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "14"],
        p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "15"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "16"],
        p 
        [
            style "color" "blue",
            style "background-color" "#56FF33",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "17"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "18"],
        p 
        [
            style "color" "blue",
            style "background-color" "#56FF33",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "19"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "20"],
        p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "21"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "22"],
        p 
        [
            style "color" "blue",
            style "background-color" "#56FF33",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "23"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "24"],
        p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "25"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "26"],
        p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "27"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "28"],
        p 
        [
            style "color" "blue",
            style "background-color" "#56FF33",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "29"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "30"],
        p 
        [
            style "color" "blue",
            style "background-color" "#56FF33",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "31"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "32"],
        p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "33"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "34"], 
          p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "35"], 
          p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "36"], 
          p
        [
            style "color" "blue",
            style "background-color" "#56FF33",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "37"],
         p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "38"],
         p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "39"],  
         p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "40"], 
         p 
        [
            style "color" "blue",
            style "background-color" "#56FF33",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "41"],
         p 
        [
            style "color" "red",
            
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "42"],  
         p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "background-color" "#56FF33",
            style "font-weight" "bold"
        ] [text "43"], 
         p 
        [
            style "color" "red",
            
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "44"], 
         p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "45"], 
         p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "46"],
         p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "background-color" "#56FF33",
            style "font-weight" "bold"
        ] [text "47"],  
         p 
        [
            style "color" "red",
           
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "48"], 
         p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "49"], 
         p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "50"], 
         p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "51"], 
         p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "52"], 
         p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "background-color" "#56FF33",
            style "font-weight" "bold"
        ] [text "53"], 
         p 
        [
            style "color" "red",
            
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "54"], 
         p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "55"], 
         p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "56"], 
         p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "57"], 
         p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "58"], 
         p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "background-color" "#56FF33",
            style "font-weight" "bold"
        ] [text "59"], 
         p 
        [
            style "color" "red",
            
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "60"], 
         p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "background-color" "#56FF33",
            style "font-weight" "bold"
        ] [text "61"], 
         p 
        [
            style "color" "red",
            
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "62"], 
         p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "63"], 
         p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "64"],
         p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "65"], 
         p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "66"],
        p 
        [
            style "color" "blue",
            style "background-color" "#56FF33",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "67"],
        p
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "68"],
        p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "69"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "70"],
        p 
        [
            style "color" "blue",
            style "background-color" "#56FF33",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "71"],
        p
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "72"],
        p 
        [
            style "color" "blue",
            style "background-color" "#56FF33",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "73"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "74"],
        p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "75"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "76"],
        p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "77"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "78"],
        p 
        [
            style "color" "blue",
            style "background-color" "#56FF33",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "79"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "80"],
        p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "81"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "82"],
        p 
        [
            style "color" "blue",
            style "background-color" "#56FF33",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "83"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "84"],
        p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "85"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "86"],
        p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "87"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "88"],
        p 
        [
            style "color" "blue",
            style "background-color" "#56FF33",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "89"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "90"],
        p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "91"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "92"],
        p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "93"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "94"],
        p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "95"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "96"],
        p 
        [
            style "color" "blue",
            style "background-color" "#56FF33",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "97"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "98"],
        p 
        [
            style "color" "blue",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "99"],
        p 
        [
            style "color" "red",
            style "text-align" "center",
            style "font-weight" "bold"
        ] [text "100"]
    ]