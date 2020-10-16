module Ejer exposing (..)

type Lista a = Nil | Cons a (Lista a)

lista2 = (Cons 1 (Cons 2 (Cons 3 Nil)))

-- Ejercicio: Definir la funcion filter
filter f xs = 
    case xs of
    Nil -> Nil
    Cons b bs -> 
        if (f b) 
        then Cons (b) (filter f bs)
        else filter f bs

positivos2 xs = filter (\first -> first >= 0) xs
negativos2 xs = filter (\first -> first < 0) xs
entre1y5 xs = filter (\first -> first > 1 && first < 5) xs

