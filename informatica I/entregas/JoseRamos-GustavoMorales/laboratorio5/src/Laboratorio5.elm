module Laboratorio5 exposing (..)

--Ejercicio #1
--Escriba una función llamada "existe" la cual debe aceptar como parametro una lista y un valor. 
--Esta función debe retornar **True** si el valor existe en la lista o **False** de lo contrario.

existe xs a =
    List.member a xs

--Ejercicio #2
--Escriba una función llamada "mayoresQue". Esta función debe aceptar una Lista y un numero como parametros 
--y retornar una lista nueva que tenga todos los numeros mayores al numero que se le dio como parametro.

mayorAux xs a l =
    case xs of 
    [] -> l
    b :: bs -> 
            if a >= b 
            then mayorAux bs a l
            else b :: mayorAux bs a l

mayoresQue xs a = mayorAux xs a []

--Ejercicio #3
--Escriba una función llamada "promedio". 
--Esta función debe aceptar una lista de numeros y retornar el promedio de los numeros contenidos en dicha lista.

promedio xs =  (List.sum xs) / toFloat (List.length xs)

--Ejercicio #4
--Utilize los *tipos algebraicos* para crear un tipo nuevo que represente a los *numeros naturales*.

type Naturales = Cero | Cons Naturales

--Ejercicio #5
--Escriba una función llamada "mayorQue" que acepta dos *numeros naturales* como parametros. 
--Esta función debe retornar **True** si el primer numero es mayor al segundo, de lo contrario retornar **False**. 

fromInt i =
    case i of
    0 -> Cero
    xI -> Cons (fromInt (i-1))

toInt nat =
    case nat of
    Cero -> 0
    Cons nat2 -> 1 + toInt nat2

mayorQue a b  = 
    case (a, b) of
    (Cero, Cero) -> True
    (Cons ia, Cons ib) -> if toInt (Cons ia) >= toInt (Cons ib) 
                          then mayorQue Cero Cero 
                          else mayorQue ia ib 
    _ -> False

--Ejercicio #6
--Repita el ejercicio #2 pero utilize una lista con *numeros naturales* 
--en vez de utilizar los numeros incluidos en el lenguaje Elm.
