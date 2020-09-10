module Programa exposing (..)

s1 = "456"
s2 = "23"

s1Caracter = String.toInt s1 
s2Caracter = String.toInt s2

sumaDeStrings= Maybe.withDefault 0 s1Caracter + Maybe.withDefault 0 s2Caracter


parImpar n = 
    if remainderBy 2 n == 0 
    then "par"
    else "impar"

existe m x = 
    if x < List.head m || x > List.tail m 
    then "false" 
    else "true"
