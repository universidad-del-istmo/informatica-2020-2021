module Programa exposing (..)

type Lista a = Nil | Cons a (Lista a)

-- Ejercicio en clase: Definir la funcion filter
lista2 = (Cons 7 (Cons -10 (Cons 9(Cons -2 Nil))))

filter f xs = 
    case xs of 
    Nil -> Nil
    Cons n ns ->
        if f n then (Cons n) (filter f ns) else (filter f ns) 

positivos2 xs = filter (\n -> n >= 0) xs
negativos2 xs = filter (\n -> n < 0) xs