module Main exposing (..)

import Html exposing (div, p, text, input, button)
import Html.Attributes exposing (type_, value)
import Html.Events exposing (onClick, onInput)
import Browser

import Snowflake exposing (htmlSnowflake)
import Dragon exposing (htmlDragon)
import Sierpinski exposing (htmlSierpinski)

type Modelo = Modelo Fractal Int String String Float

type Fractal =
    Nada
    | Snowflake
    | Sierpinski
    | Dragon

type Accion =
    CambiarSnow
    | CambiarSierp
    | CambiarDrag
    | AddIt Int
    | Fill String
    | Stroke String
    | AddWidth Float

inicial = Modelo Nada 6 "black" "black" 1

actualizador accion (Modelo frac it fill stroke width) =
    case accion of
    CambiarSnow -> Modelo Snowflake it fill stroke width
    CambiarSierp -> Modelo Sierpinski it fill stroke width
    CambiarDrag -> Modelo Dragon it fill stroke width
    AddIt x -> Modelo frac (it + x) fill stroke width
    Fill b -> Modelo frac it b stroke width
    Stroke b -> Modelo frac it fill b width
    AddWidth x -> Modelo frac it fill stroke (width * x)

vista (Modelo frac it fill stroke width) =
    div []
    [
        div [] [
            button [onClick CambiarSnow] [text "Snowflake"],
            button [onClick CambiarSierp] [text "Sierpinski"],
            button [onClick CambiarDrag] [text "Dragon"]
        ],

        div [] (
            case frac of
            Nada -> []
            _ -> [
                    button [onClick (AddIt 1)] [text "+ Iteraciones"],
                    button [onClick (AddIt -1)] [text "- Iteraciones"],
                    text " Color del relleno: ",
                    input [type_ "text", onInput (\b -> Fill b), value fill] [],
                    text " Color del borde: ",
                    input [type_ "text", onInput (\b -> Stroke b), value stroke] [],
                    button [onClick (AddWidth 2)] [text "+ Grosor"],
                    button [onClick (AddWidth 0.5)] [text "- Grosor"]
                ]
        ),

        div [] (
            case frac of
            Nada -> []
            _ -> [
                    text (String.fromInt it ++ " iteraciones, "),
                    text (String.fromFloat width ++ " px de grosor, ")
                ]
        ),

        div [] [
            case frac of
            Nada -> p [] [text "Elige el fractal que quieres ver"]
            Snowflake -> htmlSnowflake it fill stroke width
            Sierpinski -> htmlSierpinski it fill stroke width
            Dragon -> htmlDragon it stroke width
        ]
    ]

main = Browser.sandbox {
        view = vista,
        init = inicial,
        update = actualizador
    }

