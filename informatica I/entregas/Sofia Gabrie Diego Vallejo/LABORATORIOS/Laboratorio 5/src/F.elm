module F exposing (..)
--Sofia Gabrie, Diego Vallejo


--1. Escriba una función llamada "existe" la cual debe aceptar como parametro una lista y un valor. 
--Esta función debe retornar True si el valor existe en la lista o False de lo contrario.

existe x xs =
    if List.length xs == 0
    then False
    else if x == Maybe.withDefault 0 (List.head xs) then True else (existe x (List.drop 1 xs))

--ANOTHER WAY pero con case

existe2 x xs =
    case xs of
    [] -> False
    b :: bs -> if b == x then True else existe2 x bs





--2. Escriba una función llamada "mayoresQue". 
--Esta función debe aceptar una Lista y un numero como parametros 
--y retornar una lista nueva que tenga todos los numeros mayores al numero que se le dio como parametro.


mayoresQueaux x xs xss =
    case xs of 
    [] -> xss
    b :: bs -> if b > x then mayoresQueaux x bs (b :: xss) else mayoresQueaux x bs xss

mayoresQue x xs = 
    List.reverse (mayoresQueaux x xs [])








--3. Escriba una función llamada "promedio". 
--Esta función debe aceptar una lista de numeros y 
--retornar el promedio de los numeros contenidos en dicha lista.

promedioaux xs =
    case xs of
    [] -> 0
    b :: bs -> b + promedioaux bs

promedio xs =
    (toFloat (promedioaux xs)) / (toFloat(List.length xs))







--4. Utilize los tipos algebraicos para crear un tipo nuevo que represente a los numeros naturales.


type Natural = Cero | Sig Natural

intoNat n =
    case n of 
    0 -> Cero
    b -> Sig (intoNat (b-1))


natoInt n = 
    case n of 
    Cero -> 0
    Sig b -> 1 + natoInt b







--5. Escriba una función llamada "mayorQue" que acepta dos numeros naturales como parametros. 
--Esta función debe retornar True si el primer numero es mayor al segundo, 
--de lo contrario retornar False.


mayorQue x y =
    case (x, y) of
    (Sig a, Sig b) -> mayorQue a b
    (Cero, Cero) -> False
    (Sig a, Cero) -> True
    (Cero, Sig b) -> False




--6. Repita el ejercicio #2 pero utilize una lista con numeros naturales en vez de utilizar los numeros incluidos en el lenguaje Elm.


mayoresQueauxN x xs xss =
    case xs of 
    [] -> xss
    b :: bs -> if mayorQue b x then mayoresQueauxN x bs (b :: xss) else mayoresQueauxN x bs xss

mayoresQueN x xs = 
    List.reverse (mayoresQueauxN x xs [])

