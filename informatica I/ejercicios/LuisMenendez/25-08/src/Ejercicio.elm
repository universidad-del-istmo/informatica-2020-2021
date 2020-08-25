module Ejercicio exposing (..)

s1 = "456"

s2 = "23"

-- Ejercicio en clase
-- Calcular la suma de s1 + s2 utilizando
-- la funcion String.toInt para convertir los
-- strings a numeros enteros

s1Just = String.toInt s1
s2Just = String.toInt s2
sumaString = Maybe.withDefault 0 s1Just + Maybe.withDefault 0 s2Just