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

mayorQue l v =
    case l of
    []-> l
    first :: rest -> 
        mayorQueAux l v []

mayorQueAux l1 v l2 =
    case l1 of
    [] -> l2
    first :: rest -> 
        if v < first
        then first :: mayorQueAux rest v l2
        else mayorQueAux rest v l2

-- PENDIENTE


-- Ejercicio #3
-- Escriba una función llamada "promedio". Esta función debe aceptar una lista de numeros y retornar el 
-- promedio de los numeros contenidos en dicha lista.

promedio lista =
    case lista of
    [] -> Nothing
    first :: rest -> Just (suma lista / largo lista)

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

type Natural = Cero | Suc Natural


-- Ejercicio #5
-- Escriba una función llamada "mayorQue" que acepta dos *numeros naturales* como parametros. 
-- Esta función debe retornar **True** si el primer numero es mayor al segundo, de lo contrario retornar **False**. 

mayorQueN n1 n2 = 
    case (n1, n2) of 
    (Cero, Cero) -> False
    (Cero, Suc y) -> False 
    (Suc x, Cero) -> True
    (Suc x, Suc y) -> mayorQueN x y
        


-- Ejercicio #6
-- Repita el ejercicio #2 pero utilize una lista con *numeros naturales* en vez de utilizar los numeros incluidos en el lenguaje Elm.

mayorQueN2 l v =
    case l of
    []-> l
    first :: rest -> 
        mayorQueAuxN l v []

mayorQueAuxN l1 v l2 =
    case l1 of
    [] -> l2
    first :: rest -> 
        if mayorQueN first v 
        then first :: mayorQueAuxN rest v l2
        else mayorQueAuxN rest v l2