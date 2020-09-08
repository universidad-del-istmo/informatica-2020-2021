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

downFrom n =
    case n of
    0 -> [0]
    i -> i :: downFrom (i-1)

--down From 2
-- =2 :: downFrom (2-1)

sumar xs =
    case xs of
    [] -> 0
    b :: bs -> b +sumar bs

type Natural = Cero | Suc Natural

-- 0
cero = Cero

--1
uno = Suc cero

--2
dos = Suc uno 

fromInt i =
    case i of
    0 -> Cero
    x -> Suc (fromInt (i-1))

toInt nat =
    case nat of
    Cero -> 0
    Suc nat2 -> 1 + toInt nat2 
    
sonIguales n1 n2 =
    case (n1, n2) of
    (Cero, Cero) -> True
    (Suc i1, Suc i2) -> sonIguales i1 i2
    _ -> False

type Figura = Circulo Float | Rect Float Float

pi = 3.14159

area figura =
    case figura of
    Circulo radio -> pi*radio*radio
    Rect alto ancho ->  alto*ancho

type Bool = Falso | Verdad


iff b si no =
    case b of
    Verdad -> si
    Falso -> no


