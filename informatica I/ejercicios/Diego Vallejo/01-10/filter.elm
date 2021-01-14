module filter  exposing (..)


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
    Cons b bs -> 
        if f b
        then Cons b (filter f bs)
        else filter f bs 

positivos2 xs = filter (\n -> n >= 0) xs
negativos2 xs = filter (\n -> n < 0) xs

--(Cons -1 (Cons 2 Nil))