module Ejercicio exposing (..)

s1 = "456"

s2 = "23"

-- Ejercicio en clase
-- Calcular la suma de s1 + s2 utilizando
-- la funcion String.toInt para convertir los
-- strings a numeros enteros

sumaString = Maybe.withDefault 0 (String.toInt s1) + Maybe.withDefault 0 (String.toInt s2)
