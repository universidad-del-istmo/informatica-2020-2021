module Main exposing (..)

--SOFIA GABRIE - DIEGO VALLEJO

--Fecha de entrega: Viernes 16 de Octubre, 11:59

--Ejercicio #1
--Utilize el modulo Html de Elm para crear un programa con iterfaz grafica con las siguientes caracteristicas:

--Se deben mostrar los numeros del 1 al 100
--Los numeros pares deben ser rojos y los impares azules
--Los numeros primos deben tener el fondo verde






import Browser
import Html exposing (Html, div, p, text)
import Html.Attributes exposing (style)

-- Tipo que continee un mensaje
type Modelo = Modelo (List Int)

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

vista (Modelo numeros) =
    div []
    (paragraph numeros [])
    

inicial = Modelo (List.range 1 100)

main = Browser.sandbox { init = inicial, update = actualizar, view = vista }

---(String.join " "  (List.map String.fromInt (List.range 1 10)))











even x =
    if remainderBy 2 x == 0
    then True
    else False


primeaux x xs =
    case x of
    2 -> xs
    a -> primeaux (a-1) ((a-1) :: xs)

primeaux2 x xs =
    case xs of
    [] -> True
    a :: b -> if remainderBy a x == 0 then False else primeaux2 x b

prime x =
    if x == 2 then True 
    else if x == 0 || x == 1 then False 
    else primeaux2 x (primeaux x [])






paragraph x xs = 
    case x of
    [] -> xs
    a :: b -> if even a 
                then if prime a 
                then (p [style "background-color" "green", style "color" "red"] [text (String.fromInt a)]) :: paragraph b xs 
                else (p [style "color" "red"] [text (String.fromInt a)]) :: paragraph b xs
            else if prime a 
            then (p [style "background-color" "green", style "color" "blue"] [text (String.fromInt a)]) :: paragraph b xs 
            else (p [style "color" "blue"] [text (String.fromInt a)]) :: paragraph b xs

--if prime a then (p [style "background-color" "green"] [text (String.fromInt a)]) :: paragraph b xs

