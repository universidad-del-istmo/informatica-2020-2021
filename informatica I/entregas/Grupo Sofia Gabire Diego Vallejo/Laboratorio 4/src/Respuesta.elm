module Respuesta exposing (..)

--GRUPO SOFIA GABRIE Y DIEGO VALLEJO

--## Ejercicio #1
--Escriba una función que determina si un valor es "par" o "impar".

parimpar x =
    if remainderBy 2 x == 0
    then "Par"
    else "Impar"

--## Ejercicio #2
--Escriba una función que acepta dos numeros y encuentra el **maximo comun divisor** de estos numeros.

mcd x y = 
    if y == 0
    then x 
    else mcd y (remainderBy y x)

--## Ejercicio #3
--Escriba una función que acepta un numero y determina si el numero es primo o no.

primo x =
    if x == 1 || x == 0
    then "No es primo"
    else primoaux x 2

primoaux x y = 
    if y < x
    then
        (if remainderBy y x /= 0
        then primoaux x (y + 1)
        else "No es Primo")
    else "Es Primo"


--## Ejercicio #4
--Escriba una función que acepta un numero "n" y retorna un numero primo tal que existan "n-1" primos menores al valor retornado. 
--Por ejemplo, si el parametro es "4" el resultado seria "7" ya que "2,3 y 5" son primos menores a "7".

valorprime x =
    if x == 0
    then 0
    else valorprimeaux x 2 1

valorprimeaux x y z =
    if primo y == "Es Primo" 
    then if x == z then y else valorprimeaux x (y+1) (z+1)
    else valorprimeaux x (y+1) z




--## Ejercicio #5
--Escriba una función que acepta un numero "n" y calcula la suma de los primeros "n" numeros primos. 
--Por ejemplo, si "n" es "4" el resultado seria "17" ya que "17 = 2 + 3 + 5 + 7".

sumaprimos x = 
    if x == 0
    then 0
    else sumaprimosaux x 2 1 + (sumaprimos (x-1))

sumaprimosaux x y z =
    if primo y == "Es Primo" 
    then if x == z then y else sumaprimosaux x (y+1) (z+1)
    else sumaprimosaux x (y+1) z

--## Ejercicio #6
--Escriba una función que acepta un numero "n" y retorna una lista con todos los **numeros positivos** menores a "n".

positivo n =
    if n > 0
    then 
        case n of
        0 -> []
        _ -> positivoAux (n-1) []
    else []

positivoAux n x =
    if n > 0
    then positivoAux (n-1) (n :: x)
    else x

