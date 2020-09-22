module Repaso exposing (..)

maximoAux xs estado =
    case xs of
    [] -> estado
    b :: bs -> 
        if b > estado
        then maximoAux bs b 
            else maximoAux bs estado

maximo xs = 
    case xs of 
    [] -> Nothing
    b1 :: bs -> 
        Just (maximoAux bs b1)

prueba tp =
    case tp of
    [] -> Nothing
    tb :: bt ->
        Just (tb)

maximoRec xs =
    case xs of
    [] -> Nothing 
    b :: bs -> 
        let
            prev =
                maximoRec bs
        in
            case prev of 
            Nothing -> Just b
            Just prevValor ->
                if b > prevValor
                then Just b
                else Just prevValor

minimoRec xs =
    case xs of
    [] -> Nothing 
    b :: bs -> 
        let
            prev =
                minimoRec bs
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
            nuevoMayor =
                maximoRec xs
            
            nuevoMenor = 
                minimoRec xs
        in
        Just (nuevoMayor, nuevoMenor)