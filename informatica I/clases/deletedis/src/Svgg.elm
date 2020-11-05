module Svgg exposing (..)

import Browser
import Html exposing (Html, button, input, div, p, text)
import Html.Attributes exposing (style, type_)
import Html.Events exposing (onClick, onInput)

import Svg exposing (svg, rect, circle)
import Svg.Attributes exposing (width, height, x, y, viewBox, cx, cy, r, fill)


type Modelo = Modelo Int

type Accion = Inc | Dec

actualizador accion (Modelo t) =
    case accion of
    Inc -> Modelo (t + 20)
    Dec -> Modelo (t - 20)



vista (Modelo t) =
    let 
        size = String.fromInt t
        radio = String.fromInt (t//4)
        centro = String.fromInt (t // 2)
    in
        div []
            [

                div 
                        []
                        [
                            button [onClick Inc] [text "+"],
                            button [onClick Dec] [text "-"]
                        ], 
                svg 
                    [
                        width size,
                        height size,
                        viewBox (String.concat ["0 0 ", size, " ", size])
                    ]
                    [   circle
                            [
                                cx centro,
                                cy centro,
                                r centro,
                                fill "green"
                            ] [], 
                        circle 
                            [
                                cx centro,
                                cy centro,
                                r radio,
                                fill "red"
                            ] []
                            
                            ]
            ]
  

iniciar = Modelo 50

main = Browser.sandbox {view = vista, update = actualizador, init = iniciar }