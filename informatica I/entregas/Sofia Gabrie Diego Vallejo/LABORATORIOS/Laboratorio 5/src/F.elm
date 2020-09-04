module F exposing (..)
--Sofia Gabrie, Diego Vallejo


--1. Escriba una función llamada "existe" la cual debe aceptar como parametro una lista y un valor. 
--Esta función debe retornar True si el valor existe en la lista o False de lo contrario.

existe x xs =
    if List.length xs == 0
    then False
    else if x == Maybe.withDefault 0 (List.head xs) then True else (existe x (List.drop 1 xs))





--Escriba una función llamada "mayoresQue". 
--Esta función debe aceptar una Lista y un numero como parametros 
--y retornar una lista nueva que tenga todos los numeros mayores al numero que se le dio como parametro.

mayoresQue x xs xss= 
    if List.length xs == 0
    then if x > Maybe.withDefault 0 (List.head xs) == True then x :: xss 
    else 


     List.filter x 

i 