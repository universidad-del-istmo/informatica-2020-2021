module Programa exposing (..)

s1 = "456"
s2 = "23"

s1Caracter = String.toInt s1 
s2Caracter = String.toInt s2

sumaDeStrings= Maybe.withDefault 0 s1Caracter + Maybe.withDefault 0 s2Caracter