module lab8 exposing (..)


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