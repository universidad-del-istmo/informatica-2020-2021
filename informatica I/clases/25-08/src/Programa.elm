module Programa exposing (..)

v1 = List.head [1,2,3]

v2 = List.head [4,5,6]

v3 = List.head []

v4 = Maybe.withDefault 0 v1 + Maybe.withDefault 0 v3

s1 = "456"

s2 = "23"

-- Ejercicio en clase
-- Calcular la suma de s1 + s2 utilizando
-- la funcion String.toInt para convertir los
-- strings a numeros enteros


-- sumarHastaN 5 = 1 + 2 + 3 + 4 + 5
-- sumarHastN 3 = 1 + 2 + 3

sumarHastaNAuxiliar i n =
    if i == n
    then n
    else i + sumarHastaNAuxiliar (i+1) n

sumarHastaN n = sumarHastaNAuxiliar 1 n

-- Intento 1
-- 1. sumarHastaN 3 = sumarHastaNAuxiliar 1 3
-- 2. = if 1 == 3 then 3 else 1 + (sumarHastaNAuxiliar (1 + 1) 3
-- 3. = if (1 + 1) == 3 then 3 else (1 + 1) + (sumarHastaNAuxiliar ((1 + 1) + 1) 3
-- 4. = if ((1+1)+1) == 3 then 3 else (1 + 1) + 1 + (...)

-- Intendo 2
-- 1. sumarHastaN 3 = sumarHastaNAuxiliar 1 3
-- 2. = 1 + (sumarHastaNAuxiliar (1 + 1) 3
-- Por que 1 == 3 es False
-- 3. = (1 + 1) + (sumarHastaNAuxiliar ((1 + 1) + 1) 3
-- Por que (1 + 1) == 3 es False
-- 4. = 3
-- Por que ((1 + 1) + 1) == 3 es True
-- 5. Quedamos con "1 + (1 + 1) + 3"