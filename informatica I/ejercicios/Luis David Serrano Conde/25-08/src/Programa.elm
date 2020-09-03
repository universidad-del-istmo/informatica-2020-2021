module Programa exposing (..)

-- Ejercicio en clase
--  Calcular la suma de s1 + s2 utilizando 
-- La funcion String.toInt para convertir los
-- Strings a numeros enteros

s1 = "456"
s2 = "23"

z1 = String.toInt s1
z2 = String.toInt s2

x1 = Maybe.withDefault 0 z1
x2 = Maybe.withDefault 0 z2

sumaTotal = x1 + x2