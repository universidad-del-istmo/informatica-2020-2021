module Programa exposing (..)

-- sumar1 x = x + 1 + 7 + 999 + x +3*x
sumar1 x = x + 1

sumar1v2 valorAIncrementar = valorAIncrementar + 2

valor = sumar1 6
-- 1. sumar1 6
-- 2. 6 + 1
-- 3. 7

funcion2 y = if y > 0 then sumar1 y else 0

valor2 = funcion2 7
-- 1. funcion2 7
-- 2. if 7 > 0 then sumar1 7 else 0
-- 3. sumar1 7
-- 4. 7 + 1
-- 5. 8