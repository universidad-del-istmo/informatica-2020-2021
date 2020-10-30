module Notas4 exposing (..)

import Svg exposing (..)
import Svg.Attributes exposing (..)

-- PARCIAL FINAL
-- Clase: Martes 27 de octubre de 2020.
-- Tema: SVG: Gráficos vectoriales escalables.

main =
  svg
    [ width "600"
    , height "600"
    , viewBox "0 0 200 200"
    ]
    [ rect
        [ x "100"
        , y "100"
        , width "100"
        , height "100"
        , rx "15"
        , ry "15"
        ]
        []
    , circle
        [ cx "50"
        , cy "50"
        , r "50"
        ]
        []
    , line
        [ x1 "150"
        , y1 "150"
        , x2 "50"
        , y2 "50"
        , stroke "#D80707"
        , strokeWidth "2"] []
    ]