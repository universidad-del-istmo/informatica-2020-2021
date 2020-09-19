module Programa exposing (..)


minAux xs estado =
    case xs of 
    b :: bs ->
        if estado > b
        then minAux bs estado
        else minAux bs b




minyMax xs =
 case xs of
    [] -> Nothing
    b1 :: bs ->
        Just (minAux bs b1)