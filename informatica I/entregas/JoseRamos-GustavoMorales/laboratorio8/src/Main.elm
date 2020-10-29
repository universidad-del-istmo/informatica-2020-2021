module Main exposing (..)

import Browser
import Html exposing (Html, div, p, text)
import Html.Attributes exposing (style)

--Utilize el modulo Html de Elm para crear un programa con iterfaz grafica con las siguientes caracteristicas:
--deben mostrar los numeros del 1 al 100
--Los numeros pares deben ser rojos y los impares azules
--Los numeros primos deben tener el fondo verde

--Se representa un estado de la pagina llamado modelo
--que es una estructura que contiene la información
--del programa. En este caso una lista de enterimpos
--Por ejemplo:
--type alias Model =
--{ channels : List String
--, selectedChannel: Int
--, query: String }
type alias Modelo = 
    { div : List Int }

--La anotación de tipo de la función de vista sugiere 
--que devuelve un valor de tipo Html msg, lo que significa 
--que el código HTML generado por la vista es capaz 
--de producir mensajes de tipo msg. 
type Mensaje = Nada 

actualizar : Mensaje -> Modelo -> Modelo
actualizar mensaje modelo = modelo 

numeros : Int -> Html Mensaje 
numeros numero =
    div 
    ( 
    if esPar numero == True  
        then 
            if esPrimo numero == True
            --Fondo verde y letra roja 
            then [style "background-color" "#19FE2F",
                  style "color" "#B20404"]
            --Letra roja
            else [style "color" "#B20404"]
        else 
            if esPrimo numero == True
            --Fondo verde y letra azul
            then [style "background-color" "#19FE2F ", 
            style "color" "#0024AE"]
           --Letra azul
            else [style "color" "#0024AE"]
    ) 
        [ text (Debug.toString(numero)) ]

vista : Modelo -> Html Mensaje
vista modelo = 
    div []
    (List.map numeros modelo.div)

modeloInicial= { div = List.range 0 100 }

main = Browser.sandbox { init = modeloInicial, update = actualizar, view = vista }

esPar n =
    if modBy 2 n == 0
    then True
    else False

esPrimo n =
    if n == 0 
    then False 
    else 
        if n == 1 
        then False
    else esPrimoAux n (List.range 2 (n-1))

esPrimoAux n cont =
    let
        numero = Maybe.withDefault 0 (List.head cont)
        l = List.drop 1 cont
    in
        if numero /= 0 
        then if modBy numero n == 0 
            then False
            else esPrimoAux n l
        else True
