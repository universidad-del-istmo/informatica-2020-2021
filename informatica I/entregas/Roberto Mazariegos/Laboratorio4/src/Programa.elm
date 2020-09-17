module Programa exposing (..)


-- ejercicio 1 -- 



esDecir x =
    if remainderBy 2 x == 0 then
        "Par"
    else
        "Impar"
--ejercicio 2

mcd x y =
    if y == 0 then
        x
    else
        mcd y (remainderBy y x)

--ejercicio 3

sPrimo x =
    if x == 0 then
        False
    else if x == 1 then
        False
    else
        esPrimoAux x (List.range 2 (x-1))

esPrimoAux x numeros =
    let
        numero = Maybe.withDefault 0 (List.head numeros)
        resto = List.drop 1 numeros
    in
        if numero /= 0 then
            if remainderBy numero x == 0 then
                False
            else
                esPrimoAux x resto
        else
            True

--ejercicio 4
primo x = 0
    if x == 0
    then 0
    else primoaux  x 2 1

primoaux x y z  = 
    if primo y == "Es primo "
    then if x == z then  y else  primoaux x (y+1) (z+1)
    else primoaux x (y+1 ) z 


--ejercico 5
sumaPrimos x =
    sumaPrimosAux x 1 0

sumaPrimosAux x i suma =
    if i <= x then
        sumaPrimosAux x (i+1) (suma + primo i)
    else
        suma

-- Ejercicio 6
positivos x =
    positivosAux x (x-1) []

positivosAux x y lista =
    if y >= 1 then
        positivosAux x (y-1) (y :: lista)
    else
        lista