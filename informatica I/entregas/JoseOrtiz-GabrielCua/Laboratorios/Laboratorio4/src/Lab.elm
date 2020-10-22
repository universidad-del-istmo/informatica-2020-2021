module Lab exposing (..)

-- LABORATORIO 4: 04/09/2020

-- EJERCICIO 1

funcionParImpar n = 
    if residuo1 n == 0
    then "Par"
    else "Impar"

residuo1 n =
    remainderBy 2 n

-- EJERCICIO 2

maximoComunDivisor x1 x2 =
    if x1 == 0
    then x2
    else maximoComunDivisor (residuo x1 x2) x1

residuo n1 n2 =
    remainderBy n1 n2

-- EJERCICIO 3
 
primo n =
    if n == 0 || n == 1
    then False
    else primoAux n 2

primoAux n x =
    if x < n
    then
        if residuo x n /= 0
        then primoAux n (x + 1)
        else False
    else True

-- Ejercicio 4

primo2 y =
    primoAux2 y 1 0

primoAux2 y h x =
    if primo h
    then
        if y == x + 1
        then h
        else primoAux2 y (h + 1) (x + 1)
    else primoAux2 y (h + 1) x

-- EJERCICIO 5

sumar x =
    sumarAux x 1 0

sumarAux x h s =
    if x >= h
    then sumarAux x (h + 1) (s + primo2 h)
    else s

-- EJERCICIO 6

positivo n =
    case n of
    0 -> []
    1 -> []
    b -> (b - 1) :: positivo (b - 1)