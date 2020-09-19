module Ejer exposing (..)

-- minYMax [0,2,3,1]
-- (3,0)
minYMax lista =
    case lista of
    [] -> Nothing
    firstF :: restF -> 
        let
            minimoFinal = minimo lista
            maximoFinal = maximo lista
        in
            Just (minimoFinal, maximoFinal)

minimo lista =
    case lista of
    [] -> 0
    first :: rest -> minimoAux rest first 

minimoAux lista1 valor =
    case lista1 of
    [] -> valor
    first1 :: rest1 ->
        if 
            let
                headLista = List.head lista1
                valorHead = Maybe.withDefault 1 headLista

            in
                valor < valorHead
        then minimoAux (List.drop 1 lista1) valor
        else 
            let
                headLista = List.head lista1
                valorHead2 = Maybe.withDefault 1 headLista

            in 
                minimoAux (List.drop 1 lista1) valorHead2

maximo lista =
    case lista of
    [] -> 0
    first2 :: rest2 -> maximoAux rest2 first2

maximoAux lista2 valor2 =
    case lista2 of
    [] -> valor2
    first3 :: rest3 ->
        if 
            let 
                headLista = List.head lista2
                valorHead = Maybe.withDefault 1 headLista

            in
                valor2 > valorHead
        then maximoAux (List.drop 1 lista2) valor2
        else   
            let
                headLista = List.head lista2
                valorHead2 = Maybe.withDefault 1 headLista

            in 
            maximoAux (List.drop 1 lista2) valorHead2