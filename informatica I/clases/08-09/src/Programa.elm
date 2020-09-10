module Programa exposing (..)

maximoAux xs estado =
    case xs of
    [] -> estado
    b :: bs ->
        if b > estado
        then maximoAux bs b
        else maximoAux bs estado

-- maximoAux [2,1] 0
-- case [2,1] of
-- [] -> estado
-- b :: bs -> if b > estado then maximoAux bs b else maximoAux bs estado

-- if 2 > 0 then maximoAux [1] 2 else maximoAux [1] 0
-- maximoAux [1] 2

-- case [1] of
-- [] -> estado
-- b :: bs -> if b > estado then maximoAux bs b else maximoAux bs estado

-- if 1 > 2 then maximoAux [] 1 else maximoAux [] 2
-- maximoAux [] 2

-- case [] of
-- [] -> estado
-- b :: bs -> ...

-- estado
-- = 2

maximo xs =
    case xs of
    [] -> Nothing
    b1 :: bs ->
        Just (maximoAux bs b1)

-- maximo [0,2,1]
-- case [0,2,1] of
-- [] -> Nothing
-- b1 :: bs -> Just (maximoAux bs b1)

-- Just (maximoAux [2,1] 0)
-- = Just 2

maximoRec xs =
    case xs of
    [] -> Nothing
    b :: bs ->
        let prev = maximoRec bs
        in
            case prev of
            Nothing -> Just b
            Just prevValor ->
                if b > prevValor
                then Just b
                else Just prevValor


minYmax xs =
    case xs of
    []-> Nothing
    b1 :: bs -> Just ((maxiAux bs b1), (minimoAux bs b1) )

maxiAux xs estado =
    case xs of
    [] -> estado
    b :: bs ->
        if b > estado
        then maxiAux bs b
        else maxiAux bs estado
        
minimoAux xs estado =
    case xs of
    [] -> estado
    b :: bs ->
        if b < estado
        then minimoAux bs b
        else minimoAux bs estado    