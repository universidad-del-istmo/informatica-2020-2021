module Laboratorio exposing (..)

-- Ejercicio #1
existe x y =
    List.member x y

-- Ejercicio #2
mayorAux xs a l =
    case xs of 
    [] -> l
    b :: bs -> 
            if a < b 
            then b :: mayorAux bs a l
            else mayorAux bs a l

mayoresQue xs a = mayorAux xs a []

-- Ejercicio #3
promedio x =
    let
        v =
            List.length x

        w =
            List.sum x 
    in
     w / toFloat v

-- Ejercicio #4
type Naturales =
    Cons Naturales
    | Cero 

normalANatural x =
    case x of
    0 -> Cero
    b -> Cons (normalANatural (b - 1) )

igual a b = 
    case (a , b) of
    (Cons va, Cons vb) -> igual va vb
    (Cero, Cero) -> True
    _ -> False


-- Ejercicio #5
mayorQueNaturales a b =
    case (a, b) of
    (Cons va, Cons vb) -> mayorQueNaturales va vb
    (Cons va, Cero) -> True
    (Cero, _) -> False

-- Ejercicio #6

mayorNaturalesAux xs a l =
    case xs of
    [] -> l
    b :: bs ->
        if mayorQueNaturales b a
        then b :: mayorNaturalesAux bs a l
        else mayorNaturalesAux bs a l

mayorNaturales xs y =
    mayorNaturalesAux xs y []