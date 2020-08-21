module Programa exposing (..)

valor = 42

maybevacio = List.head[]

maybeconvalor = List.head[1,2,3]

valor1 = Maybe.withDefault O maybevacio + 1

valor2 = Maybe.withDefault O maybeconvalor
