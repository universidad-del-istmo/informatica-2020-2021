module Programa exposing (..)

valor1 = "456"

valor2 = "23"

s1 = String.toInt valor1

s2 = String.toInt valor2

sumadeStrings = Maybe.withDefault 0 s1 + Maybe.withDefault 0 s2
