module Programa exposing (..)

--minYMax [0,2,3,1]
--(3,0)

minYMax xs = 
    case xs of
    [] -> Nothing
    b :: bs ->
        Just (maximoAux bs b, minimoAux bs b)

minimoAux xs estado1 =
    case xs of
    [] -> estado1
    b :: bs -> 
        if b > estado1
        then minimoAux bs b
        else minimoAux bs estado1

maximoAux xs estado =
    case xs of
    [] -> estado
    b :: bs -> 
        if b < estado
        then maximoAux bs b
        else maximoAux bs estado
