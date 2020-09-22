module Laboratorio exposing (..)
-- Ejercicio #1
esPar n =
    if modBy 2 n == 0
    then "Es par"
        else "Es impar"
 
-- Ejercicio #2
maximoComun x y =
    if y==0
    then x
        else maximoComun (y) (modBy y x)

-- Ejercicio #3
valorPrimo x =
    if x == 1 || x == 0
    then "No es primo"
        else primoAux x 2

primoAux x y =
    if y < x
    then 
        if modBy y x /= 0
        then primoAux x (y + 1)
            else "No es primo"
    else "Es primo"
 
-- Ejercicio #4
dosPrimos x =
    if x == 0
    then 0
        else dosPrimosAux x 2 1

dosPrimosAux x y z =
    if valorPrimo y == "Es Primo"
    then if x == z 
        then y
        else dosPrimosAux x (y + 1) (z + 1)
    else dosPrimosAux x (y + 1) z
    
-- Ejercicio #5
sumaPrimos x =
    if x == 0
    then 0
        else sumaPrimosAux x 2 1 + (sumaPrimos (x - 1))

sumaPrimosAux x y z =
    if valorPrimo y == "Es primo"
    then if x == z
        then y 
            else sumaPrimosAux x (y + 1) (z + 1)
    else sumaPrimosAux x (y + 1) z

-- Ejercicio #6
esListita n =
    case n of 
    0 -> [0]
    i ->i - 1 :: esListita (i - 1)