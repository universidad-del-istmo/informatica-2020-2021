module Programa exposing (..)


--Ejercicio #1
--Escriba una función que determina si un valor es "par" o "impar".
esPar x =
    if modBy 2 x == 0 
    then "par"
    else "impar"

--Ejercicio #2
--Escriba una función que acepta dos numeros y encuentra el **maximo comun divisor** de estos numeros.
mcd a b = 
    if b==0
    then a
    else mcd (b) (modBy b a)

--Ejercicio #3
--Escriba una función que acepta un numero y determina si el numero es primo o no.
esPrimo n =
    if n == 0 
    then False
    else 
        if n == 1 
        then False
    else
        esPrimoAux n (List.range 2 (n-1))

esPrimoAux n cont =
    let
        numero = Maybe.withDefault 0 (List.head cont)
        l = List.drop 1 cont
    in
        if numero /= 0 
        then if modBy numero n == 0 
            then False
            else esPrimoAux n l
        else
            True
--Ejercicio #4
--Escriba una función que acepta un numero "n" y retorna un numero primo tal que existan "n-1" primos menores al valor retornado. 
--Por ejemplo, si el parametro es "4" el resultado seria "7" ya que "2,3 y 5" son primos menores a "7".
primo n =
    primoAux n 2 0

primoAux n i cont =
    if esPrimo i then
        let contSig = cont + 1
        
        in
            if n == contSig 
            then i
            else primoAux n (i+1) contSig
    else
        primoAux n (i+1) cont
--Ejercicio #5
--Escriba una función que acepta un numero "n" y calcula la suma de los primeros "n" numeros primos. 
--Por ejemplo, si "n" es "4" el resultado seria "17" ya que "17 = 2 + 3 + 5 + 7".
sumaPrimos n =
    sumaPrimosAux n 1 0

sumaPrimosAux n i resul =
    if i <= n 
    then sumaPrimosAux n (i+1) (resul + primo i)
    else resul

--Ejercicio #6
--Escriba una función que acepta un numero "n" y retorna una lista con todos los **numeros positivos** menores a "n".
positivos n =
    positivosAux n (n-1) []

positivosAux n p l =
    if p >= 1 
    then positivosAux n (p-1) (p :: l)
    else l