module Main exposing (..)

import Browser
import Html exposing (Html, button, input, div, p, text)
import Html.Attributes exposing (style, type_)
import Html.Events exposing (onClick, onInput)

import Svg exposing (..)
import Svg.Attributes exposing (..)

type Modelo = Modelo Int

type Accion = Inc | Dec

actualizador accion (Modelo t) =
    case accion of
    Inc -> Modelo (t + 20)
    Dec -> Modelo (t - 20)

-- documentacion de SVG: https://developer.mozilla.org/en-US/docs/Web/SVG

vista (Modelo t) =
    let
        size = String.fromInt t
        centro = String.fromInt (t // 2)
        radio = String.fromInt (t // 4)
    in
        div
            []
            [
                div
                    []
                    [
                        button [onClick Inc] [Html.text "+"],
                        button [onClick Dec] [Html.text "-"]
                    ],
                svg
                    [
                        width size,
                        height size,
                        viewBox (String.concat ["0 0 ", size, " ", size])
                    ]
                    [
                        circle
                            [
                                cx centro,
                                cy centro,
                                r centro,
                                fill "green"
                            ]
                            [
                            ],
                        circle
                            [
                                cx centro,
                                cy centro,
                                r radio,
                                fill "red"
                            ]
                            []
                    ]
            ]

main = Browser.sandbox {view = vista, update = actualizador, init = Modelo 50 }