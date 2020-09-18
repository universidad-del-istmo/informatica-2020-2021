module Programa exposing (..)

minYMax xs = 
    case xs of
    [] -> Nothing
    b :: bs ->
        Just (maximoAux bs b, minimoAux bs b)

minimoAux xs estado =
    case xs of
    [] -> estado
    b :: bs -> 
        if b > estado
        then minimoAux bs b
        else minimoAux bs estado

maximoAux xs estado =
    case xs of
    [] -> estado
    b :: bs -> 
        if b < estado
        then maximoAux bs b
        else maximoAux bs estado