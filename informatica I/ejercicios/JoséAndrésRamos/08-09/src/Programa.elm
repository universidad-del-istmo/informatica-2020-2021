module Programa exposing (..)

-- minYMax [0,2,3,1]
-- (3,0)


maxaux xs =
    case xs of
    [] -> Nothing 
    b :: bs -> 
        let
            prev =
                maxaux bs
        in
            case prev of 
            Nothing -> Just b
            Just prevValor ->
                if b > prevValor
                then Just b
                else Just prevValor

minaux xs =
    case xs of
    [] -> Nothing 
    b :: bs -> 
        let
            prev =
                minaux bs
        in
            case prev of 
            Nothing -> Just b
            Just prevValor ->
                if b < prevValor
                then Just b
                else Just prevValor

mayorYMenor xs =
    case xs of 
    [] -> Nothing
    b :: bs ->
        let 
            max =
                Maybe.withDefault 0 (maxaux xs)
            
            min = 
                Maybe.withDefault 0 (minaux xs)
        in
        Just (max, min)