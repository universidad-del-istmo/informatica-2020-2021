module Programa exposing (..)

sumar n =
    -- Caso base: Se retorna 0 ya que la suma de 0 hasta
    -- 0 es 0 
    if n == 0
    then 0
    -- Caso inductivo: Describir como aplicar un
    -- paso en la redeuccion de la expresion
    else n + sumar (n - 1)

-- Evaluacion:
-- 1) sumar 3 = 3 + sumar (3 - 1)
--      porque 3 == 0 es False
-- 2) sumar (3 - 1) = (3 - 1) + sumar ((3 - 1) - 1)
--      porque (3 - 1) == 0 es False
-- 3) sumar ((3 - 1) - 1) = (((3 - 1) - 1) - 1) + sumar (((3 - 1) - 1) - 1)
--      porque (((3 - 1) - 1)) == 0 es False
-- 4) sumar (((3 - 1) - 1) - 1) = 0
--      porque (((3 - 1) - 1) - 1) == 0 es True

multiplicar a b =
    -- Caso base cuando alguno de los
    -- paramertos es 0
    if a == 0 || b == 0
    then 0
    -- Caso base cuando "b" es 1
    else if b == 1
    then a
    -- Caso inductivo
    else a + multiplicar a (b - 1)

fib n =
    if n == 0
    then 0
    else if n == 1
    then 1
    else fib (n - 1) + fib (n - 2)

-- fib 100 = fib 99 + fib 98
-- = fib 98 + fib 97 + fib 97 + fib 96

fibAux nFinal n fn1 fn2 =
    if nFinal == n
    then fn1 + fn2
    else fibAux nFinal (n + 1) (fn1 + fn2) fn1

fibRapido n =
    if n == 0
    then 0
    else if n == 1
    then 1
    else fibAux n 2 1 0