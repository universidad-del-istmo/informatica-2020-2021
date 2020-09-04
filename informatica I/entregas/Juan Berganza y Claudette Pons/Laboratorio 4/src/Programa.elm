module Programa exposing (..)

-- Ejercicio 1
paroimpar a =
    if remainderBy 2 a == 0
    then "Par"
    else "Impar"

-- Ejercicio 2
mcd a b =
    if b == 0 then
        a
    else
        mcd b (remainderBy b a)

-- Ejercicio 3
esPrimo a =
    if a == 0 || a == 1 then
        False
    else
        esPrimoAux a 2

esPrimoAux a n =
    if n < a then
        if remainderBy n a /= 0 then
            esPrimoAux a (n+1)
        else
            False
    else
        True

-- Ejercicio 4
primo c =
    primoAux c 1 0

primoAux c i n =
    if esPrimo i then
        if c == n+1 then
            i
        else
            primoAux c (i+1) (n+1)
    else
        primoAux c (i+1) n

-- Ejercicio 5
sumaPrimos n =
    sumaPrimosAux n 1 0

sumaPrimosAux n i suma =
    if i <= n then
        sumaPrimosAux n (i+1) (suma + primo i)
    else
        suma

-- Ejercicio 6
lista n =
    listaAux (n-1) []

listaAux n l =
    if n > 0 then
        listaAux (n-1) (n :: l)
    else
        l

