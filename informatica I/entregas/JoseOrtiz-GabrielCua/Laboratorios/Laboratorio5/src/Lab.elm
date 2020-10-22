module Lab exposing (..)

-- LABORATORIO 5: 18/09/2020

-- EJERCICIO 1

existeSinRecursion xs n = List.member n xs

existe xs n =
    case xs of
    [] -> False
    b :: bs -> 
        if List.head xs == Just n 
        then True
        else existe (List.drop 1 xs) n

-- EJERCICIO 2

mayoresQue xs n =
    case xs of
    [] -> []
    b :: bs -> 
        if b > n
        then b :: mayoresQue bs n
        else mayoresQue bs n

-- EJERCICIO 3

promedio xs =
    case xs of
    [] -> 0
    b :: bs -> List.sum xs / toFloat (List.length xs)

-- EJERCICIO 4

type Natural = Cero | Suc Natural

-- EJERCICIO 5

mayorQue n1 n2 =
    case (n1, n2) of
    (Cero, a) -> False
    (a, Cero) -> True
    (Suc a, Suc b) -> mayorQue a b

-- EJERCICIO 6

mayoresQueNaturales xs n =
    case xs of
    [] -> []
    b :: bs -> 
        if mayorQue b n
        then b :: mayoresQueNaturales bs n
        else mayoresQueNaturales bs n