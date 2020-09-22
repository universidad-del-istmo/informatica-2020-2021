module Programa exposing (..)

maximoAux xs estado =
    case xs of 
    [] -> estado
    b :: bs ->
        if b > estado 
        then maximoAux bs b
        else maximoAux bs estado

maximo xs = 
    case xs of 
    [] -> 0
    b1 :: bs -> 
        (maximoAux bs b1)
    

minimoAux xs estado =
    case xs of 
    [] -> estado
    b :: bs ->
        if b < estado 
        then minimoAux bs b
        else minimoAux bs estado

minimo xs = 
    case xs of 
    [] -> 0
    b1 :: bs -> 
        (minimoAux bs b1)

minYMax xs =
    case xs of 
    [] -> Nothing
    b1 :: bs ->
        let 
            nuevoMayor = 
                maximo xs
            nuevoMenor = 
                minimo xs 
        in
        Just ( nuevoMayor, nuevoMenor)

