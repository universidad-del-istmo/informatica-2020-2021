module Ejer exposing (..)

type Lista a = Nil | Cons a (Lista a)

head xs =
    case xs of
    Nil -> Nothing
    Cons a _ -> Just a

eliminarComas xs =
    case xs of
    Nil -> Nil
    Cons b bs -> Cons (String.replace "," "" b) (eliminarComas bs)


-- Calcula la longitud de un valor de tipo (Lista a)
longitud xs = 
    case xs of
    Nil -> 0
    Cons x y -> 1 + longitud y