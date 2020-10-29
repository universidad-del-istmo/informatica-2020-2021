module Programa exposing (..)

type Lista a = Nil | Cons a (Lista a)

-- Calcula la longitud de un valor de tipo (Lista a)
longitud xs = 
    case xs of
    Nil -> 0
    Cons b bs -> 1 + longitud bs