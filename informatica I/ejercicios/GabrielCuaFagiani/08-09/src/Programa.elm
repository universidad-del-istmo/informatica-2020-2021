module Programa exposing (..)

maximo xs =
    case xs of
    [] -> Nothing
    b1 :: bs ->
        Just (maximoAux bs b1)

maximoAux xs estado =
    case xs of
    [] -> estado
    b :: bs ->
        if b > estado
        then maximoAux bs b
        else maximoAux bs estado

-- minYMax [0,2,3,1]
-- (3,0)
minYMax xs =
    case xs of
    [] -> Nothing
    b1 :: bs -> Just ((maxAux bs b1),(minAux bs b1))

maxAux xs estado =
    case xs of
    [] -> estado
    b :: bs ->
        if b > estado
        then maxAux bs b
        else maxAux bs estado

minAux xs estado =
    case xs of
    [] -> estado
    b :: bs ->
        if b < estado
        then minAux bs b
        else minAux bs estado