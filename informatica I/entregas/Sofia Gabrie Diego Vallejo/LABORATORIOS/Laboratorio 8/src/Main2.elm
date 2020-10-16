module Main2 exposing (..)


import Html exposing (Html, div, p, text, span)
import Browser
import Html.Attributes exposing (style)


--HEHE FUNI 
--CODING IS MY PASSION <3


type Modelo = Modelo String
type Accion = Nada

actualizar _ m = m 

numeros = "1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100"

vista : Modelo -> Html Accion 
vista (Modelo listanumeros) = 
    div [] 
        [
        p [style "color" "blue", style "text-align""center"] [text "1"],
        p [style "color" "red", style "background""green", style "text-align""center"] [text "2"],
        p [style "color" "blue", style "background""green", style "text-align""center"] [text "3"],
        p [style "color" "red", style "text-align""center"] [text "4"],
        p [style "color" "blue", style "background""green", style "text-align""center"] [text "5"],
        p [style "color" "red", style "text-align""center"] [text "6"],
        p [style "color" "blue", style "background""green", style "text-align""center"] [text "7"],
        p [style "color" "red", style "text-align""center"] [text "8"],
        p [style "color" "blue", style "text-align""center"] [text "9"],
        p [style "color" "red", style "text-align""center"] [text "10"],
        p [style "color" "blue", style "background""green", style "text-align""center"] [text "11"],
        p [style "color" "red", style "text-align""center"] [text "12"],
        p [style "color" "blue", style "background""green", style "text-align""center"] [text "13"],
        p [style "color" "red", style "text-align""center"] [text "14"],
        p [style "color" "blue", style "text-align""center"] [text "15"],
        p [style "color" "red", style "text-align""center"] [text "16"],
        p [style "color" "blue", style "background""green", style "text-align""center"] [text "17"],
        p [style "color" "red", style "text-align""center"] [text "18"],
        p [style "color" "blue", style "background""green", style "text-align""center"] [text "19"],
        p [style "color" "red", style "text-align""center"] [text "20"],
        p [style "color" "blue", style "text-align""center"] [text "21"],
        p [style "color" "red", style "text-align""center"] [text "22"],
        p [style "color" "blue", style "background""green", style "text-align""center"] [text "23"],
        p [style "color" "red", style "text-align""center"] [text "24"],
        p [style "color" "blue", style "text-align""center"] [text "25"],
        p [style "color" "red", style "text-align""center"] [text "26"],
        p [style "color" "blue", style "text-align""center"] [text "27"],
        p [style "color" "red", style "text-align""center"] [text "28"],
        p [style "color" "blue", style "background""green", style "text-align""center"] [text "29"],
        p [style "color" "red", style "text-align""center"] [text "30"],
        p [style "color" "blue", style "background""green", style "text-align""center"] [text "31"],
        p [style "color" "red", style "text-align""center"] [text "32"],
        p [style "color" "blue", style "text-align""center"] [text "33"],
        p [style "color" "red", style "text-align""center"] [text "34"],
        p [style "color" "blue", style "text-align""center"] [text "35"],
        p [style "color" "red", style "text-align""center"] [text "36"],
        p [style "color" "blue", style "background""green", style "text-align""center"] [text "37"],
        p [style "color" "red", style "text-align""center"] [text "38"],
        p [style "color" "blue", style "text-align""center"] [text "39"],
        p [style "color" "red", style "text-align""center"] [text "40"],
        p [style "color" "blue", style "background""green", style "text-align""center"] [text "41"],
        p [style "color" "red", style "text-align""center"] [text "42"],
        p [style "color" "blue", style "background""green", style "text-align""center"] [text "43"],
        p [style "color" "red", style "text-align""center"] [text "44"],
        p [style "color" "blue", style "text-align""center"] [text "45"],
        p [style "color" "red", style "text-align""center"] [text "46"],
        p [style "color" "blue", style "background""green", style "text-align""center"] [text "47"],
        p [style "color" "red", style "text-align""center"] [text "48"],
        p [style "color" "blue", style "text-align""center"] [text "49"],
        p [style "color" "red", style "text-align""center"] [text "50"],
        p [style "color" "blue", style "text-align""center"] [text "51"],
        p [style "color" "red", style "text-align""center"] [text "52"],
        p [style "color" "blue", style "background""green", style "text-align""center"] [text "53"],
        p [style "color" "red", style "text-align""center"] [text "54"],
        p [style "color" "blue", style "text-align""center"] [text "55"],
        p [style "color" "red", style "text-align""center"] [text "56"],
        p [style "color" "blue", style "text-align""center"] [text "57"],
        p [style "color" "red", style "text-align""center"] [text "58"],
        p [style "color" "blue", style "background""green", style "text-align""center"] [text "59"],
        p [style "color" "red", style "text-align""center"] [text "60"],
        p [style "color" "blue", style "background""green", style "text-align""center"] [text "61"],
        p [style "color" "red", style "text-align""center"] [text "62"],
        p [style "color" "blue", style "text-align""center"] [text "63"],
        p [style "color" "red", style "text-align""center"] [text "64"],
        p [style "color" "blue", style "text-align""center"] [text "65"],
        p [style "color" "red", style "text-align""center"] [text "66"],
        p [style "color" "blue", style "background""green", style "text-align""center"] [text "67"],
        p [style "color" "red", style "text-align""center"] [text "68"],
        p [style "color" "blue", style "text-align""center"] [text "69"],
        p [style "color" "red", style "text-align""center"] [text "70"],
        p [style "color" "blue", style "background""green", style "text-align""center"] [text "71"],
        p [style "color" "red", style "text-align""center"] [text "72"],
        p [style "color" "blue", style "background""green", style "text-align""center"] [text "73"],
        p [style "color" "red", style "text-align""center"] [text "74"],
        p [style "color" "blue", style "text-align""center"] [text "75"],
        p [style "color" "red", style "text-align""center"] [text "76"],
        p [style "color" "blue", style "text-align""center"] [text "77"],
        p [style "color" "red", style "text-align""center"] [text "78"],
        p [style "color" "blue", style "background""green", style "text-align""center"] [text "79"],
        p [style "color" "red", style "text-align""center"] [text "80"],
        p [style "color" "blue", style "text-align""center"] [text "81"],
        p [style "color" "red", style "text-align""center"] [text "82"],
        p [style "color" "blue", style "background""green", style "text-align""center"] [text "83"],
        p [style "color" "red", style "text-align""center"] [text "84"],
        p [style "color" "blue", style "text-align""center"] [text "85"],
        p [style "color" "red", style "text-align""center"] [text "86, "],
        p [style "color" "blue", style "text-align""center"] [text "87"],
        p [style "color" "red", style "text-align""center"] [text "88"],
        p [style "color" "blue", style "background""green", style "text-align""center"] [text "89"],
        p [style "color" "red", style "text-align""center"] [text "90"],
        p [style "color" "blue", style "text-align""center"] [text "91"],
        p [style "color" "red", style "text-align""center"] [text "92"],
        p [style "color" "blue", style "text-align""center"] [text "93"],
        p [style "color" "red", style "text-align""center"] [text "94"],
        p [style "color" "blue", style "text-align""center"] [text "95"],
        p [style "color" "red", style "text-align""center"] [text "96"],
        p [style "color" "blue", style "background""green", style "text-align""center"] [text "97"],
        p [style "color" "red", style "text-align""center"] [text "98"],
        p [style "color" "blue", style "text-align""center"] [text "99"],
        p [style "color" "red", style "text-align""center"] [text "100"]
        ]      


main = Browser.sandbox
    { init = Modelo numeros,
        update = actualizar, view = vista }