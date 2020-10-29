module Main exposing (..)


import Html exposing (Html, div, p, text)
import Browser
import Html.Attributes exposing (style)

type Modelo = Modelo String
type Accion = Nada

actualizar _ m = m 

numeros = "1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100"

vista : Modelo -> Html Accion 
vista (Modelo listanumeros) = 

 div [] 
        [
        p [style "color" "blue"] [text "1"],
        p [style "color" "red", style "background""green"] [text "2"],
        p [style "color" "blue", style "background""green"] [text "3"],
        p [style "color" "red"] [text "4"],
        p [style "color" "blue", style "background""green"] [text "5"],
        p [style "color" "red"] [text "6"],
        p [style "color" "blue", style "background""green"] [text "7"],
        p [style "color" "red"] [text "8"],
        p [style "color" "blue"] [text "9"],
        p [style "color" "red"] [text "10"],
        p [style "color" "blue", style "background""green"] [text "11"],
        p [style "color" "red"] [text "12"],
        p [style "color" "blue", style "background""green"] [text "13"],
        p [style "color" "red"] [text "14"],
        p [style "color" "blue"] [text "15"],
        p [style "color" "red"] [text "16"],
        p [style "color" "blue", style "background""green"] [text "17"],
        p [style "color" "red"] [text "18"],
        p [style "color" "blue", style "background""green"] [text "19"],
        p [style "color" "red"] [text "20"],
        p [style "color" "blue"] [text "21"],
        p [style "color" "red"] [text "22"],
        p [style "color" "blue", style "background""green"] [text "23"],
        p [style "color" "red"] [text "24"],
        p [style "color" "blue"] [text "25"],
        p [style "color" "red"] [text "26"],
        p [style "color" "blue"] [text "27"],
        p [style "color" "red"] [text "28"],
        p [style "color" "blue", style "background""green"] [text "29"],
        p [style "color" "red"] [text "30"],
        p [style "color" "blue", style "background""green"] [text "31"],
        p [style "color" "red"] [text "32"],
        p [style "color" "blue"] [text "33"],
        p [style "color" "red"] [text "34"],
        p [style "color" "blue"] [text "35"],
        p [style "color" "red" [text "36"],
        p [style "color" "blue", style "background""green"] [text "37"],
        p [style "color" "red"] [text "38"],
        p [style "color" "blue"] [text "39"],
        p [style "color" "red"] [text "40"],
        p [style "color" "blue", style "background""green"] [text "41"],
        p [style "color" "red"] [text "42"],
        p [style "color" "blue", style "background""green"] [text "43"],
        p [style "color" "red"] [text "44"],
        p [style "color" "blue"] [text "45"],
        p [style "color" "red"] [text "46"],
        p [style "color" "blue", style "background""green"] [text "47"],
        p [style "color" "red"] [text "48"],
        p [style "color" "blue"] [text "49"],
        p [style "color" "red"] [text "50"],
        p [style "color" "blue"] [text "51"],
        p [style "color" "red"] [text "52"],
        p [style "color" "blue", style "background""green"] [text "53"],
        p [style "color" "red"] [text "54"],
        p [style "color" "blue"] [text "55"],
        p [style "color" "red"] [text "56"],
        p [style "color" "blue"] [text "57"],
        p [style "color" "red"] [text "58"],
        p [style "color" "blue", style "background""green"] [text "59"],
        p [style "color" "red"] [text "60"],
        p [style "color" "blue", style "background""green"] [text "61"],
        p [style "color" "red"] [text "62"],
        p [style "color" "blue"] [text "63"],
        p [style "color" "red"] [text "64"],
        p [style "color" "blue"] [text "65"],
        p [style "color" "red"] [text "66"],
        p [style "color" "blue", style "background""green"] [text "67"],
        p [style "color" "red"] [text "68"],
        p [style "color" "blue"] [text "69"],
        p [style "color" "red"] [text "70"],
        p [style "color" "blue", style "background""green"] [text "71"],
        p [style "color" "red"] [text "72"],
        p [style "color" "blue", style "background""green"] [text "73"],
        p [style "color" "red"] [text "74"],
        p [style "color" "blue"] [text "75"],
        p [style "color" "red"] [text "76"],
        p [style "color" "blue"] [text "77"],
        p [style "color" "red"] [text "78"],
        p [style "color" "blue", style "background""green"] [text "79"],
        p [style "color" "red"] [text "80"],
        p [style "color" "blue"] [text "81"],
        p [style "color" "red"] [text "82"],
        p [style "color" "blue", style "background""green"] [text "83"],
        p [style "color" "red"] [text "84"],
        p [style "color" "blue"] [text "85"],
        p [style "color" "red"] [text "86, "],
        p [style "color" "blue"] [text "87"],
        p [style "color" "red"] [text "88"],
        p [style "color" "blue", style "background""green"] [text "89"],
        p [style "color" "red"] [text "90"],
        p [style "color" "blue"] [text "91"],
        p [style "color" "red"] [text "92"],
        p [style "color" "blue"] [text "93"],
        p [style "color" "red"] [text "94"],
        p [style "color" "blue"] [text "95"],
        p [style "color" "red"] [text "96"],
        p [style "color" "blue", style "background""green"] [text "97"],
        p [style "color" "red"] [text "98"],
        p [style "color" "blue"] [text "99"],
        p [style "color" "red"] [text "100"]
        ]    ]
 

main = Browser.sandbox
  { init = Modelo numeros,
        update = actualizar, view = vista }