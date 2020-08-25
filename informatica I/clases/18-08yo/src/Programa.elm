module Programa exposing (..)

--sumar
sumar1 x= x +1 
    

valor1 = sumar1 6
-- 1. Sumar1 6
-- 2. 6 + 1 
-- 3. 7

funcion2 y= if y>0 then sumar1 y else 0

valor2= funcion2 7