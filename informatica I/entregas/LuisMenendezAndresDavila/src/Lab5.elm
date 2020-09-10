module Lab5 exposing (..)

-- Ejercicio #1
-- Escriba una función llamada "existe" la cual debe aceptar como parametro una lista y un valor. 
-- Esta función debe retornar **True** si el valor existe en la lista o **False** de lo contrario.
existe lista valor =
    case lista of
    [] -> False
    first :: rest ->
        if first == valor
        then True
        else existe rest valor


-- Ejercicio #2
-- Escriba una función llamada "mayoresQue". Esta función debe aceptar una Lista y un numero como 
-- parametros y retornar una lista nueva que tenga todos los numeros mayores al numero que se le dio como parametro.
 
--mayorQue lista valor =
    --case lista of
    --[] -> Nothing
    --first :: rest -> mayorQueAux rest valor

--mayorQueAux lista valor =
    --case lista of 
    --[] -> valor
    --first1 :: rest1 -> 
        --if valor > first1 
        --then first1 :: mayorQueAux rest1 valor
        --else if valor > rest1
        --then rest1 :: mayorQueAux rest1 valor
        --else mayorQueAux (List.drop 1 rest1) valor
-- PENDIENTE


-- Ejercicio #3
-- Escriba una función llamada "promedio". Esta función debe aceptar una lista de numeros y retornar el 
-- promedio de los numeros contenidos en dicha lista.
promedio lista =
    case lista of
    [] -> Nothing
    first :: rest -> 
        let
            numerador = suma lista
            denominador = largo lista
        in
            Just (numerador / denominador)

largo lista =
    case lista of
    [] -> 0
    first :: rest -> 1 + largo rest 

suma lista =
    case lista of
    [] -> 0
    first :: rest -> first + suma rest


-- Ejercicio #4
-- Utilize los *tipos algebraicos* para crear un tipo nuevo que represente a los *numeros naturales*.