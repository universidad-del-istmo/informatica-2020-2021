module Ejercicio exposing (..)


type Lista a = Nil | Cons a (Lista a)

filter f xs = 
    case xs of 
        Nil -> Nil 
        Cons primero resto -> 
            if (f primero) 
            then Cons (primero) (filter f resto)
            else filter f resto 

positivos2 xs = filter (\n -> n >= 0) xs
negativos2 xs = filter (\n -> n < 0) xs

listaP = (Cons 1 (Cons 2(Cons 3 Nil)))