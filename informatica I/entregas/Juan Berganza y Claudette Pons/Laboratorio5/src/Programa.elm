module Programa exposing (..)

-- Ejercicio 1
-- Escriba una función llamada "existe" la cual debe aceptar como parametro una lista y un valor. Esta función debe retornar **True** si el valor existe en la lista o **False** de lo contrario.

existeAux xs n =
    if Maybe.withDefault 0 (List.head xs) == n
    then True
    else 
        if Maybe.withDefault 0 (List.head xs) /= n
        then existeAux (List.drop 1 xs) n
        else False

existe xs n =
    case xs of
    [] -> False
    b :: bs ->
        if List.length xs == 0 
        then False
        else
            if List.length xs /= 0
            then existeAux (List.drop 1 xs) n
            else False

-- Ejercicio 2
-- Escriba una función llamada "mayoresQue". Esta función debe aceptar una Lista y un numero como parametros y retornar una lista nueva que tenga todos los numeros mayores al numero que se le dio como parametro.

mayoresQueAux xs n l =
    case xs of
    [] -> l
    b :: bs ->
        if b > n
        then mayoresQueAux bs n (b :: l)
        else mayoresQueAux bs n l

mayoresQue xs n =
    mayoresQueAux xs n []

-- Ejercicio 3
-- Escriba una función llamada "promedio". Esta función debe aceptar una lista de numeros y retornar el promedio de los numeros contenidos en dicha lista.

promedioAux xs n =
    case xs of
    [] -> n
    b :: bs -> promedioAux bs (n+1) 

suma xs =
    if List.length xs == 0
    then 0
    else 
        ( (Maybe.withDefault 0 (List.head xs) + promedio (List.drop 1 xs)) )

promedio xs =
    if List.length xs == 0
    then 0
    else (suma xs) / promedioAux xs 0

-- Ejercicio 4
-- Utilize los *tipos algebraicos* para crear un tipo nuevo que represente a los *numeros naturales*.

type Natural =
    Suc Natural
    | Cero

-- Ejercicio 5
-- Escriba una función llamada "mayorQue" que acepta dos *numeros naturales* como parametros. Esta función debe retornar **True** si el primer numero es mayor al segundo, de lo contrario retornar **False**. 

mayorQue va vb =
    case (va,vb) of
    (Suc a, Suc b) -> mayorQue a b
    (Suc _, Cero) -> True
    (Cero, _) -> False

-- Ejercicio 6
-- Repita el ejercicio #2 pero utilize una lista con *numeros naturales* en vez de utilizar los numeros incluidos en el lenguaje Elm.

nMayoresQueAux lista n l =
    case lista of
    [] -> l
    h :: t ->
        if mayorQue h n then
            nMayoresQueAux t n (l ++ [h])
        else
            nMayoresQueAux t n l

nMayoresQue lista n =
    nMayoresQueAux lista n []
