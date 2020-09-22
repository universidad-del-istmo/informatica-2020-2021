module Laboratorio4 exposing (..)

-- Ejercicio #1
-- Escriba una función que determina si un valor es "par" o "impar".

parimpar x = 
    if remainderBy 2 x == 0
    then "par"
    else "impar"

parimpar2 x =
    if x == 1
    then True
    else if x == 0
    then False
    else not (parimpar2 (x - 1)) 



-- Ejercicio #2
-- Escriba una función que acepta dos numeros y encuentra el **maximo comun divisor** de estos numeros.

mcd x y = 
    if y == 0 
    then x
    else mcd y (remainderBy y x)
    


-- Ejercicio #3
-- Escriba una función que acepta un numero y determina si el numero es primo o no.

primo x =
    if x == 0
    then False
    else if x == 1
    then False
    else primoAux x 2

primoAux x n =
    if n < x
    then 
        if remainderBy n x /= 0
        then primoAux x (n+1)
        else False
    else True


-- Ejercicio #4
-- Escriba una función que acepta un numero "n" y retorna un numero primo tal que existan "n-1" primos menores 
-- al valor retornado. Por ejemplo, si el parametro es "4" el resultado seria "7" ya que "2,3 y 5" son primos menores a "7".

retornarPrimo x =
    retornarPrimoAux x 1 0

retornarPrimoAux x y z =
    if primo y 
    then
        if x == z+1 
        then
            y
        else
            retornarPrimoAux x (y+1) (z+1)
    else
        retornarPrimoAux x (y+1) z 

-- Ejercicio 5
-- Escriba una función que acepta un numero "n" y calcula la suma de los primeros "n" numeros primos. 
-- Por ejemplo, si "n" es "4" el resultado seria "17" ya que "17 = 2 + 3 + 5 + 7".
sumaPrimos x =
    sumaPrimosAux x 1 0

sumaPrimosAux x extra suma =
    if extra <= x 
    then
        sumaPrimosAux x (extra+1) (suma + primo extra)
    else
        suma


-- Ejercicio #6
-- Escriba una función que acepta un numero "n" y retorna una lista con todos los **numeros positivos** menores a "n".
lpositivo x =
    if x == 1 || x == 0
    then []
    else (x-1) :: lpositivo (x-1)