module Programa exposing 
import Debugger.Overlay exposing (badMetadata)


v1 = List.head [1,2,3]

v2 = List.head [4,5,6]

v3 = List.head []

v4 = Maybe.withDefault 0 v1 + Maybe.withDefault 0 v3 

s1 = "456"

s2 = "23"

--Ejercicio en clase 
sumaDeStrings = Maybe.withDefault 0 (String.toInt s1) + Maybe.withDefault 0 (String.toInt s2)
