module Ejercicio exposing (..)

type Lista a = Nil | Cons a (Lista a)

incrementarTodos xs =
    case xs of
    Nil -> Nil
    Cons b bs -> Cons (b + 1) (incrementarTodos bs)

decrementarTodos xs =
    case xs of
    Nil -> Nil
    Cons b bs -> Cons (b - 1) (decrementarTodos bs)

map f xs =
    case xs of
    Nil -> Nil
    Cons b bs -> Cons (f b) (map f bs)

incrementarTodos2 xs =
    -- map inc xs
    map (\x -> x + 1) xs

------------------------------------------

positivos xs =
    case xs of
    Nil -> Nil
    Cons n ns ->
        if n >= 0
        then Cons n (positivos ns)
        else positivos ns

negativos xs =
    case xs of
    Nil -> Nil
    Cons n ns ->
        if n < 0
        then Cons n (negativos ns)
        else negativos ns

-- Ejercicio: Definir la funcion filter

filter f xs =
    case xs of
    Nil -> Nil
    Cons n ns ->
        if f n
        then Cons n (filter f ns)
        else filter f ns

positivos2 xs = filter (\n -> n >= 0) xs

negativos2 xs = filter (\n -> n < 0) xs