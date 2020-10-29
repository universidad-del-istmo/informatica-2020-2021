module Ejercico exposing (..)

type Lista a = Nil | Cons a (Lista a)

longitud xs = 
    case xs of
        Nil -> 0
        Cons primero resto -> 1 + longitud resto 

listaP = (Cons 1 (Cons 2(Cons 3 Nil)))
