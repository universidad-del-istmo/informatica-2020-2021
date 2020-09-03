module Programa exposing (..)

sumarNumeros xs =
    if List.length xs == 0
    then 0
    else
        let
            valorOp = List.head xs
            valor = Maybe.withDefault 42 valorOp
            resto = List.drop 1 xs
        in
            valor + sumarNumeros resto

sumarNumerosPM xs =
    case xs of
    [] -> 0
    b :: bs -> b + sumarNumerosPM bs

-- sumarNumerosPM [1,2]
-- sumarNumerosPM (1 :: 2 :: [])
-- = 1 + sumarNumerosPM (2 :: [])
-- Porque b = 1 y bs = (2 :: [])
-- = 2 + sumarNumerosPM []
-- Porque b = 2 y bs = []
-- = 0
-- Porque xs == []

-- error a = error a

head xs =
    case xs of
    -- [] -> Nothing
    b::bs -> Just b
    _ -> Nothing

maybeWithDefault default opcion =
    case opcion of
    Nothing -> default
    Just x -> x

dropIntento1 i xs =
    if i <= 0
    then xs
    else
        case xs of
        [] -> []
        _ :: bs -> drop (i - 1) bs

drop i xs =
    case (i, xs) of
    (0, _) -> xs
    (_, []) -> []
    (_, _ :: bs) ->
        if i > 0
        then drop (i - 1) bs
        else xs